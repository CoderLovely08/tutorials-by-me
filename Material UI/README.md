# React Material UI Tutorial

Material UI is an open-source React component library that implements Google's Material Design.

## Components

### 1) Typography

This component is for the text, use variant attribute to switch between differnt type of text fonts available.

- h1 - h6 heading
- subtitle1, subtitle2 for subtitles
- body1, body2 for paragraphs

To add bottom margin use **gutterBottom** attribute

```jsx
import { Typography } from "@mui/material";

export const MuiTypography = () => {
  return (
    <>
      <Typography variant="h1">Heading 1</Typography>
      <Typography variant="h2">Heading 2</Typography>
      <Typography variant="h3">Heading 3</Typography>
      <Typography variant="h4">Heading 4</Typography>
      <Typography variant="h5">Heading 5</Typography>
      <Typography variant="h6">Heading 6</Typography>

      <Typography variant="subtitle1">Subtitle 1</Typography>
      <Typography variant="subtitle2">Subtitle 2</Typography>

      <Typography variant="body1">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur.
      </Typography>
      <Typography variant="body2">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
        commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
        velit esse cillum dolore eu fugiat nulla pariatur.
      </Typography>
    </>
  );
};
```

### 2) Buttons

This component is for the buttons, use variant attribute to switch between differnt type of button types available.

- Attributes

  - variant - to define the type of button
  - href - to make it an anchor tag

- Variants

  - text - basic type
  - contained - standard clickable type (Primary actions)
  - outliend - just like bootstrap outlined button (Secondary actions)

- Colors

  - primary
  - secondary
  - warning
  - success
  - error
  - info

- Sizes
  - Small
  - Medium
  - Large

```jsx
import { Button } from "@mui/material";
export const MuiButton = () => {
  return (
    <>
      <Button sx={{ m: 1 }} variant="text">
        Text
      </Button>
      <Button sx={{ m: 1 }} variant="contained" color="primary">
        Contained
      </Button>
      <Button sx={{ m: 1 }} variant="outlined">
        Outlined
      </Button>

      {/* Sizes */}
      <Stack display="block" spacing={3} direction="row">
        <Button variant="contained" size="small">Small</Button>
        <Button variant="contained" size="medium">Medium</Button>
        <Button variant="contained" size="large">Large</Button>
      </Stack>
    </>
  );
};
```

### 3) Stack

This is used to group together the elements and place them equally

- spacing - it defines the space between each element
- direction - in which direction the items should be laid

```jsx
import { Stack, Button } from "@mui/material";
export const MuiButton = () => {
  return (
    <>
      <Stack spacing={2} direction="row-reverse">
        <Button variant="text">Text</Button>
        <Button variant="contained">Contained</Button>
        <Button variant="outlined">Outlined</Button>
      </Stack>
    </>
  );
};
```
