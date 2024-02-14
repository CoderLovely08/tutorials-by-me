import { Stack, Button } from "@mui/material";
export const MuiButton = () => {
  return (
    <>
      <Stack spacing={4} direction="column">
        {/* Types */}
        <Stack display='block' spacing={2} direction="row">
          <Button variant="text">Text</Button>
          <Button variant="contained">Contained</Button>
          <Button variant="outlined">Outlined</Button>
        </Stack>

        {/* Colors */}
        <Stack display='block' spacing={2} direction="row">
          <Button variant="contained" color="primary">Primary</Button>
          <Button variant="contained" color="error">Error</Button>
          <Button variant="contained" color="warning">Warning</Button>
          <Button variant="contained" color="secondary">Secondary</Button>
          <Button variant="contained" color="success">Success</Button>
          <Button variant="contained" color="info">Info</Button>
          <Button variant="contained" color="inherit">Inherit</Button>
        </Stack>

        {/* Sizes */}
        <Stack display='block' spacing={3} direction="row">
          <Button variant="contained" size="small">Small</Button>
          <Button variant="contained" size="medium">Medium</Button>
          <Button variant="contained" size="large">Large</Button>
        </Stack>
      </Stack>
    </>
  );
};
