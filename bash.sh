// See https://github.com/prisma-labs/graphql-request
import { request, gql } from 'graphql-request'

async function main() {
  const token = 'af_AQFqQmJusEKqeszSQa6PbTdKW8DB8HoSZkndCY_o'
  const endpoint = 'https://dropmail.me/api/graphql/' + token

  const query = gql`
    mutation {introduceSession {id, expiresAt, addresses {address}}}
  `

  const data = await request(endpoint, query)
  console.log(JSON.stringify(data, undefined, 2))
}
main().catch((error) => console.error(error))
