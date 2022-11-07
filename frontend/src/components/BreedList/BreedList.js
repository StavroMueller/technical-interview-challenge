import React from 'react';
import { useQuery, gql } from "@apollo/client"
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';

const BREEDS_QUERY = gql`
    {
        breeds {
            id
            label
            image_url
        }
    }
`;
function BreedList() {
    const { data, loading, error } = useQuery(BREEDS_QUERY)

    if (loading) {
        return "Loading..."
    }

    if (error) {
        return <pre> {error.message} </pre>
    }

    console.log(data)

    return (
        <div>
            {data.breeds.map((breed) => {
                const image_url = `http://localhost:4000/images/${breed.image_url}`
                return <Accordion>
                    <AccordionSummary id={breed.label}>
                        <Typography>{breed.label}</Typography>
                    </AccordionSummary>
                    <AccordionDetails>
                        <img src={image_url} style={{width: "100%"}}/>
                    </AccordionDetails>
                </Accordion>
            })}
        </div>
    )
}

export default BreedList
