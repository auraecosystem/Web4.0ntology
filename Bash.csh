$ curl --silent https://dropmail.me/api/graphql/MY_TOKEN -d 'query=query ($id: ID!) {session(id:$id) {id, expiresAt, mails{id, rawSize, raw, fromAddr, toAddr, receivedAt, downloadUrl, toAddrOrig, decodeStatus, text, headerFrom, headerSubject, html}, addresses{id, address, restoreKey} }}&variables={"id": "U2Vzc2lvbjqcMxamadJC_aLiPz_XL0lK"}' | jq
{
  "data": {
    "session": {
      "mails": [
        {
          "toAddrOrig": "example@10mail.org",
          "toAddr": "govet1hokamav4@10mail.xyz",
          "text": "Hello\r\n",
          "receivedAt": "2021-02-18T01:30:17+00:00",
          "rawSize": 812,
          "raw": "MIME-Version: 1.0\r\nMessage-ID: <test@mail.10mail.com>\r\nSubject: Hello\r\nFrom: Hello <test@10mail.com>\r\nTo: aonfmqcpw@example.com\r\nContent-Type: text/plain; charset=US-ASCII\r\n\r\nHello\r\n",
          "id": "TWFpbDqcMxamadJC/aLiPz/XL0lKOnZiMThjbzZ0bjZiNHB2MTBoZ3I3bGhhbGpjbnJodms1",
          "html": null,
          "headerSubject": "Hello",
          "headerFrom": "Hello <test@example.com>",
          "fromAddr": "test@example.com",
          "downloadUrl": "https://dropmail.me/download/mail/gql:1:9c3316a6-69d2-42fd-a2e2-3f3fd72f494a/vb18co6tn6b4pv10hgr7lhaljcnrhvk5",
          "decodeStatus": "OK"
        }
      ],
      "id": "U2Vzc2lvbjqcMxamadJC_aLiPz_XL0lK",
      "expiresAt": "2021-02-18T01:41:50+00:00",
      "addresses": [
        {
          "restoreKey": "0c88ea831f8f71bf3885f2b5bddd6c371",
          "id": "QWRkcmVzczqcMxamadJC_aLiPz_XL0lKOmRyb2ZAMTBtYWlsLm9yZw",
          "address": "example@10mail.org"
        }
      ]
    }
  }
}
    
