import { NextResponse } from "next/server";

export async function GET() {
  try {
    const res = await fetch(
      "https://639040c665ff4183110d7bdd.mockapi.io/blogs"
    );
    const data = await res.json();
    console.log(
      `mem heap: ${
        Math.round((process.memoryUsage().heapUsed / 1024 / 1024) * 100) / 100
      } MB`
    );
    return NextResponse.json({ data });
  } catch (err) {
    console.error(err);
    return NextResponse.json({ message: "bad response" });
  }
}
