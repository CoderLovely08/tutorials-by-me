import { Button } from "@mui/material";
export const MuiButton = () => {
  return (
    <>
      <Button sx={{ m: 1 }} variant="text">
        Text
      </Button>
      <Button sx={{ m: 1 }} variant="contained">
        Contained
      </Button>
      <Button sx={{ m: 1 }} variant="outlined">
        Outlined
      </Button>
    </>
  );
};
