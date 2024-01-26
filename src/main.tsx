import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import App from "./App";
import "./index.css";

const entryPoint = document.getElementById("root");
const root = createRoot(entryPoint!);

root.render(
  <StrictMode>
    <App />
  </StrictMode>
);
