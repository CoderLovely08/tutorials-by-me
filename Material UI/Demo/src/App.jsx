import { Typography } from "@mui/material";
import "./App.css";
import { MuiButton } from "./components/Buttons/MuiButton";
import { MuiTypography } from "./components/Typography/MuiTypography";

function App() {
  return (
    <>
      {/* Typography */}
      <hr></hr>
      <Typography variant="h2">Typography</Typography>
      <hr></hr>
      <MuiTypography />
      
      {/* Buttons */}
      <hr></hr>
      <Typography variant="h2">Buttons</Typography>
      <hr></hr>
      <MuiButton />
    </>
  );
}

export default App;
