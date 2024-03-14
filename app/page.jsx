import Image from "next/image";
import style from "./home.module.scss";
import wave from "./assets/wave.svg";

export default function Home() {
  return (
    <main className={style.main}>
      <div className={style.container_home}>
        <div className={style.div1}></div>
        <div className={style.div2}></div>
      </div>
    </main>
  );
}
