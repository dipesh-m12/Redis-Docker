import logo from "./logo.svg";
import "./App.css";
import axios from "axios";
import { useEffect, useState } from "react";
function App() {
  const [data, setData] = useState();
  useEffect(() => {
    async function Send() {
      const { data } = await axios("http://localhost:5001/profile");
      console.log(data);
      console.log("hi");
      setData(data);
    }
    Send();
  }, []);
  return (
    <>
      {/* <div className="App">{data?.name}</div> */}
      <p>Carry</p>
    </>
  );
}

export default App;
