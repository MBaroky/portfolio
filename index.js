const { createClient } = require("edgedb");

const client = createClient();

client
  .querySingle(
    `select Movie {
  title,
  actors: {
    name
  }
};`
  )
  .then(result => result.json())
  .then(data => {
    console.log("success");
  });
