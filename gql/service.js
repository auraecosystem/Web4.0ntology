// See https://github.com/prisma-labs/graphql-request
import { request, gql } from 'graphql-request'

async function main() {
  const token = ''
  const endpoint = 'https://dropmail.me/api/graphql/' + token

  const query = gql`
    query {domains {id, name, introducedAt, expiresAt, availableVia}}
  `

  const data = await request(endpoint, query)
  console.log(JSON.stringify(data, undefined, 2))
}
main().catch((error) => console.error(error))
