# SMBMAP in Docker


SMBMAP in Docker

[![forthebadge](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMzUuMzkwMDAwMDAwMDAwMDEiIGhlaWdodD0iMzUiIHZpZXdCb3g9IjAgMCAyMzUuMzkwMDAwMDAwMDAwMDEgMzUiPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjAiIHk9IjAiIHdpZHRoPSIxNDUuMjgiIGhlaWdodD0iMzUiIGZpbGw9IiNFQTQ1NjAiLz48cmVjdCBjbGFzcz0ic3ZnX19yZWN0IiB4PSIxNDMuMjgiIHk9IjAiIHdpZHRoPSI5Mi4xMTAwMDAwMDAwMDAwMSIgaGVpZ2h0PSIzNSIgZmlsbD0iI0MxM0IzQSIvPjxwYXRoIGNsYXNzPSJzdmdfX3RleHQiIGQ9Ik0xNi42NyAyMkwxNC4yMiAyMkwxNC4yMiAxMy40N0wxNi43NCAxMy40N1ExNy44NyAxMy40NyAxOC43NCAxMy45N1ExOS42MiAxNC40OCAyMC4xMCAxNS40MFEyMC41OCAxNi4zMyAyMC41OCAxNy41MkwyMC41OCAxNy41MkwyMC41OCAxNy45NVEyMC41OCAxOS4xNiAyMC4xMCAyMC4wOFExOS42MSAyMS4wMCAxOC43MiAyMS41MFExNy44MyAyMiAxNi42NyAyMkwxNi42NyAyMlpNMTUuNzAgMTQuNjZMMTUuNzAgMjAuODJMMTYuNjcgMjAuODJRMTcuODMgMjAuODIgMTguNDYgMjAuMDlRMTkuMDggMTkuMzYgMTkuMDkgMTcuOTlMMTkuMDkgMTcuOTlMMTkuMDkgMTcuNTJRMTkuMDkgMTYuMTMgMTguNDkgMTUuNDBRMTcuODkgMTQuNjYgMTYuNzQgMTQuNjZMMTYuNzQgMTQuNjZMMTUuNzAgMTQuNjZaTTI0Ljc4IDE4LjAwTDI0Ljc4IDE4LjAwTDI0Ljc4IDE3LjUyUTI0Ljc4IDE2LjI4IDI1LjIyIDE1LjMyUTI1LjY2IDE0LjM3IDI2LjQ3IDEzLjg2UTI3LjI3IDEzLjM1IDI4LjMxIDEzLjM1UTI5LjM2IDEzLjM1IDMwLjE2IDEzLjg1UTMwLjk3IDE0LjM1IDMxLjQxIDE1LjI5UTMxLjg1IDE2LjIzIDMxLjg1IDE3LjQ4TDMxLjg1IDE3LjQ4TDMxLjg1IDE3Ljk2UTMxLjg1IDE5LjIxIDMxLjQyIDIwLjE2UTMwLjk5IDIxLjEwIDMwLjE4IDIxLjYxUTI5LjM4IDIyLjEyIDI4LjMzIDIyLjEyTDI4LjMzIDIyLjEyUTI3LjI5IDIyLjEyIDI2LjQ4IDIxLjYxUTI1LjY3IDIxLjEwIDI1LjIyIDIwLjE3UTI0Ljc4IDE5LjIzIDI0Ljc4IDE4LjAwWk0yNi4yNiAxNy40NkwyNi4yNiAxNy45NlEyNi4yNiAxOS4zNiAyNi44MSAyMC4xM1EyNy4zNSAyMC45MCAyOC4zMyAyMC45MEwyOC4zMyAyMC45MFEyOS4zMSAyMC45MCAyOS44NCAyMC4xNVEzMC4zNyAxOS40MCAzMC4zNyAxNy45NkwzMC4zNyAxNy45NkwzMC4zNyAxNy41MVEzMC4zNyAxNi4wOSAyOS44NCAxNS4zNFEyOS4zMCAxNC41OCAyOC4zMSAxNC41OEwyOC4zMSAxNC41OFEyNy4zNSAxNC41OCAyNi44MSAxNS4zM1EyNi4yNyAxNi4wOSAyNi4yNiAxNy40NkwyNi4yNiAxNy40NlpNMzYuMDUgMTguMTlMMzYuMDUgMTguMTlMMzYuMDUgMTcuMzlRMzYuMDUgMTYuMTkgMzYuNDggMTUuMjdRMzYuOTAgMTQuMzUgMzcuNzAgMTMuODVRMzguNTAgMTMuMzUgMzkuNTUgMTMuMzVMMzkuNTUgMTMuMzVRNDAuOTcgMTMuMzUgNDEuODMgMTQuMTJRNDIuNjkgMTQuODkgNDIuODMgMTYuMjlMNDIuODMgMTYuMjlMNDEuMzUgMTYuMjlRNDEuMjUgMTUuMzcgNDAuODIgMTQuOTZRNDAuMzkgMTQuNTUgMzkuNTUgMTQuNTVMMzkuNTUgMTQuNTVRMzguNTkgMTQuNTUgMzguMDcgMTUuMjZRMzcuNTUgMTUuOTYgMzcuNTQgMTcuMzNMMzcuNTQgMTcuMzNMMzcuNTQgMTguMDlRMzcuNTQgMTkuNDcgMzguMDMgMjAuMjBRMzguNTMgMjAuOTIgMzkuNDggMjAuOTJMMzkuNDggMjAuOTJRNDAuMzYgMjAuOTIgNDAuODAgMjAuNTNRNDEuMjMgMjAuMTQgNDEuMzUgMTkuMjJMNDEuMzUgMTkuMjJMNDIuODMgMTkuMjJRNDIuNzAgMjAuNTkgNDEuODIgMjEuMzVRNDAuOTQgMjIuMTIgMzkuNDggMjIuMTJMMzkuNDggMjIuMTJRMzguNDYgMjIuMTIgMzcuNjkgMjEuNjNRMzYuOTEgMjEuMTUgMzYuNDkgMjAuMjZRMzYuMDcgMTkuMzcgMzYuMDUgMTguMTlaTTQ4LjYyIDIyTDQ3LjE0IDIyTDQ3LjE0IDEzLjQ3TDQ4LjYyIDEzLjQ3TDQ4LjYyIDE3LjQ3TDQ5LjQ0IDE2LjQ2TDUxLjk0IDEzLjQ3TDUzLjczIDEzLjQ3TDUwLjU2IDE3LjI1TDUzLjkxIDIyTDUyLjE2IDIyTDQ5LjU5IDE4LjMxTDQ4LjYyIDE5LjM0TDQ4LjYyIDIyWk02My4yNyAyMkw1Ny42OSAyMkw1Ny42OSAxMy40N0w2My4yMyAxMy40N0w2My4yMyAxNC42Nkw1OS4xOCAxNC42Nkw1OS4xOCAxNy4wMkw2Mi42OCAxNy4wMkw2Mi42OCAxOC4xOUw1OS4xOCAxOC4xOUw1OS4xOCAyMC44Mkw2My4yNyAyMC44Mkw2My4yNyAyMlpNNjguOTUgMjJMNjcuNDcgMjJMNjcuNDcgMTMuNDdMNzAuNDcgMTMuNDdRNzEuOTQgMTMuNDcgNzIuNzUgMTQuMTNRNzMuNTUgMTQuNzkgNzMuNTUgMTYuMDVMNzMuNTUgMTYuMDVRNzMuNTUgMTYuOTAgNzMuMTQgMTcuNDhRNzIuNzIgMTguMDYgNzEuOTggMTguMzdMNzEuOTggMTguMzdMNzMuOTAgMjEuOTJMNzMuOTAgMjJMNzIuMzEgMjJMNzAuNjAgMTguNzFMNjguOTUgMTguNzFMNjguOTUgMjJaTTY4Ljk1IDE0LjY2TDY4Ljk1IDE3LjUyTDcwLjQ3IDE3LjUyUTcxLjIyIDE3LjUyIDcxLjY0IDE3LjE1UTcyLjA3IDE2Ljc3IDcyLjA3IDE2LjExTDcyLjA3IDE2LjExUTcyLjA3IDE1LjQzIDcxLjY4IDE1LjA1UTcxLjI5IDE0LjY4IDcwLjUxIDE0LjY2TDcwLjUxIDE0LjY2TDY4Ljk1IDE0LjY2Wk04NS40OCAyMkw4NC4wMSAyMkw4NC4wMSAxMy40N0w4NS40OCAxMy40N0w4NS40OCAyMlpNOTEuNzcgMjJMOTAuMzAgMjJMOTAuMzAgMTMuNDdMOTIuMjIgMTMuNDdMOTQuNjggMjAuMDFMOTcuMTMgMTMuNDdMOTkuMDUgMTMuNDdMOTkuMDUgMjJMOTcuNTcgMjJMOTcuNTcgMTkuMTlMOTcuNzIgMTUuNDNMOTUuMjAgMjJMOTQuMTQgMjJMOTEuNjMgMTUuNDNMOTEuNzcgMTkuMTlMOTEuNzcgMjJaTTEwNC41NyAyMkwxMDMuMDMgMjJMMTA2LjI1IDEzLjQ3TDEwNy41OCAxMy40N0wxMTAuODEgMjJMMTA5LjI2IDIyTDEwOC41NiAyMC4wMUwxMDUuMjYgMjAuMDFMMTA0LjU3IDIyWk0xMDYuOTEgMTUuMjhMMTA1LjY4IDE4LjgyTDEwOC4xNSAxOC44MkwxMDYuOTEgMTUuMjhaTTExNC41MiAxOC4xM0wxMTQuNTIgMTguMTNMMTE0LjUyIDE3LjQ2UTExNC41MiAxNS41MyAxMTUuNDQgMTQuNDRRMTE2LjM3IDEzLjM1IDExOC4wMyAxMy4zNUwxMTguMDMgMTMuMzVRMTE5LjQ1IDEzLjM1IDEyMC4yOSAxNC4wNVExMjEuMTMgMTQuNzYgMTIxLjMwIDE2LjA4TDEyMS4zMCAxNi4wOEwxMTkuODQgMTYuMDhRMTE5LjYwIDE0LjU0IDExOC4wNiAxNC41NEwxMTguMDYgMTQuNTRRMTE3LjA2IDE0LjU0IDExNi41NCAxNS4yNlExMTYuMDIgMTUuOTggMTE2LjAxIDE3LjM3TDExNi4wMSAxNy4zN0wxMTYuMDEgMTguMDJRMTE2LjAxIDE5LjQwIDExNi41OSAyMC4xN1ExMTcuMTcgMjAuOTMgMTE4LjIxIDIwLjkzTDExOC4yMSAyMC45M1ExMTkuMzUgMjAuOTMgMTE5LjgzIDIwLjQyTDExOS44MyAyMC40MkwxMTkuODMgMTguNzVMMTE4LjA3IDE4Ljc1TDExOC4wNyAxNy42MkwxMjEuMzAgMTcuNjJMMTIxLjMwIDIwLjg5UTEyMC44NCAyMS41MCAxMjAuMDIgMjEuODFRMTE5LjIwIDIyLjEyIDExOC4xNiAyMi4xMkwxMTguMTYgMjIuMTJRMTE3LjA4IDIyLjEyIDExNi4yNiAyMS42M1ExMTUuNDMgMjEuMTQgMTE0Ljk4IDIwLjI0UTExNC41NCAxOS4zMyAxMTQuNTIgMTguMTNaTTEzMS41MCAyMkwxMjUuOTIgMjJMMTI1LjkyIDEzLjQ3TDEzMS40NiAxMy40N0wxMzEuNDYgMTQuNjZMMTI3LjQwIDE0LjY2TDEyNy40MCAxNy4wMkwxMzAuOTEgMTcuMDJMMTMwLjkxIDE4LjE5TDEyNy40MCAxOC4xOUwxMjcuNDAgMjAuODJMMTMxLjUwIDIwLjgyTDEzMS41MCAyMloiIGZpbGw9IiNGRkZGRkYiLz48cGF0aCBjbGFzcz0ic3ZnX190ZXh0IiBkPSJNMTYxLjQ0IDIyTDE1Ny40NyAyMkwxNTcuNDcgMTMuNjBMMTYxLjQ0IDEzLjYwUTE2Mi44MiAxMy42MCAxNjMuODkgMTQuMTJRMTY0Ljk2IDE0LjYzIDE2NS41NSAxNS41OFExNjYuMTMgMTYuNTMgMTY2LjEzIDE3LjgwTDE2Ni4xMyAxNy44MFExNjYuMTMgMTkuMDcgMTY1LjU1IDIwLjAyUTE2NC45NiAyMC45NyAxNjMuODkgMjEuNDhRMTYyLjgyIDIyIDE2MS40NCAyMkwxNjEuNDQgMjJaTTE1OS44NSAxNS41MEwxNTkuODUgMjAuMTBMMTYxLjM1IDIwLjEwUTE2Mi40MiAyMC4xMCAxNjMuMDggMTkuNDlRMTYzLjczIDE4Ljg4IDE2My43MyAxNy44MEwxNjMuNzMgMTcuODBRMTYzLjczIDE2LjcyIDE2My4wOCAxNi4xMVExNjIuNDIgMTUuNTAgMTYxLjM1IDE1LjUwTDE2MS4zNSAxNS41MEwxNTkuODUgMTUuNTBaTTE3Ny42MSAyMkwxNzAuODYgMjJMMTcwLjg2IDEzLjYwTDE3Ny40NSAxMy42MEwxNzcuNDUgMTUuNDRMMTczLjIyIDE1LjQ0TDE3My4yMiAxNi44NUwxNzYuOTUgMTYuODVMMTc2Ljk1IDE4LjYzTDE3My4yMiAxOC42M0wxNzMuMjIgMjAuMTdMMTc3LjYxIDIwLjE3TDE3Ny42MSAyMlpNMTg2Ljk1IDIyTDE4Mi40MSAyMkwxODIuNDEgMTMuNjBMMTg2LjcxIDEzLjYwUTE4OC4zMiAxMy42MCAxODkuMTYgMTQuMTlRMTkwLjAwIDE0Ljc5IDE5MC4wMCAxNS43OUwxOTAuMDAgMTUuNzlRMTkwLjAwIDE2LjM5IDE4OS43MCAxNi44N1ExODkuNDEgMTcuMzQgMTg4Ljg3IDE3LjYyTDE4OC44NyAxNy42MlExODkuNTkgMTcuODcgMTkwLjAwIDE4LjQxUTE5MC40MCAxOC45NCAxOTAuNDAgMTkuNzBMMTkwLjQwIDE5LjcwUTE5MC40MCAyMC44MCAxODkuNTIgMjEuNDBRMTg4LjYzIDIyIDE4Ni45NSAyMkwxODYuOTUgMjJaTTE4NC43NyAxOC41OEwxODQuNzcgMjAuMjhMMTg2Ljc2IDIwLjI4UTE4OC4wMSAyMC4yOCAxODguMDEgMTkuNDNMMTg4LjAxIDE5LjQzUTE4OC4wMSAxOC41OCAxODYuNzYgMTguNThMMTg2Ljc2IDE4LjU4TDE4NC43NyAxOC41OFpNMTg0Ljc3IDE1LjMxTDE4NC43NyAxNi45NEwxODYuNDAgMTYuOTRRMTg3LjYwIDE2Ljk0IDE4Ny42MCAxNi4xMkwxODcuNjAgMTYuMTJRMTg3LjYwIDE1LjMxIDE4Ni40MCAxNS4zMUwxODYuNDAgMTUuMzFMMTg0Ljc3IDE1LjMxWk0xOTcuNTAgMjJMMTk1LjEyIDIyTDE5NS4xMiAxMy42MEwxOTcuNTAgMTMuNjBMMTk3LjUwIDIyWk0yMDQuMDkgMjJMMjAxLjY3IDIyTDIwNS4zNyAxMy42MEwyMDcuNzIgMTMuNjBMMjExLjQzIDIyTDIwOC45NyAyMkwyMDguMzAgMjAuMzdMMjA0Ljc1IDIwLjM3TDIwNC4wOSAyMlpNMjA2LjUzIDE1LjkzTDIwNS40NCAxOC42MUwyMDcuNjEgMTguNjFMMjA2LjUzIDE1LjkzWk0yMTcuOTIgMjJMMjE1LjU5IDIyTDIxNS41OSAxMy42MEwyMTcuNTQgMTMuNjBMMjIxLjI1IDE4LjA3TDIyMS4yNSAxMy42MEwyMjMuNTggMTMuNjBMMjIzLjU4IDIyTDIyMS42MyAyMkwyMTcuOTIgMTcuNTJMMjE3LjkyIDIyWiIgZmlsbD0iI0ZGRkZGRiIgeD0iMTU2LjI4Ii8+PC9zdmc+)](https://hub.docker.com/_/debian)
[![forthebadge](data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNDEuMzciIGhlaWdodD0iMzUiIHZpZXdCb3g9IjAgMCAxNDEuMzcgMzUiPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjAiIHk9IjAiIHdpZHRoPSI5NC40MSIgaGVpZ2h0PSIzNSIgZmlsbD0iIzNCQzRGMyIvPjxyZWN0IGNsYXNzPSJzdmdfX3JlY3QiIHg9IjkyLjQxIiB5PSIwIiB3aWR0aD0iNDguOTU5OTk5OTk5OTk5OTk0IiBoZWlnaHQ9IjM1IiBmaWxsPSIjM0M5QUQ1Ii8+PHBhdGggY2xhc3M9InN2Z19fdGV4dCIgZD0iTTE2LjUxIDIyTDEzLjQ2IDEzLjQ3TDE1LjA4IDEzLjQ3TDE3LjIyIDIwLjE0TDE5LjM5IDEzLjQ3TDIxLjAyIDEzLjQ3TDE3Ljk1IDIyTDE2LjUxIDIyWk0zMC41NSAyMkwyNC45NyAyMkwyNC45NyAxMy40N0wzMC41MSAxMy40N0wzMC41MSAxNC42NkwyNi40NSAxNC42NkwyNi40NSAxNy4wMkwyOS45NiAxNy4wMkwyOS45NiAxOC4xOUwyNi40NSAxOC4xOUwyNi40NSAyMC44MkwzMC41NSAyMC44MkwzMC41NSAyMlpNMzYuMjMgMjJMMzQuNzQgMjJMMzQuNzQgMTMuNDdMMzcuNzQgMTMuNDdRMzkuMjIgMTMuNDcgNDAuMDIgMTQuMTNRNDAuODIgMTQuNzkgNDAuODIgMTYuMDVMNDAuODIgMTYuMDVRNDAuODIgMTYuOTAgNDAuNDEgMTcuNDhRNDAuMDAgMTguMDYgMzkuMjYgMTguMzdMMzkuMjYgMTguMzdMNDEuMTggMjEuOTJMNDEuMTggMjJMMzkuNTkgMjJMMzcuODggMTguNzFMMzYuMjMgMTguNzFMMzYuMjMgMjJaTTM2LjIzIDE0LjY2TDM2LjIzIDE3LjUyTDM3Ljc1IDE3LjUyUTM4LjUwIDE3LjUyIDM4LjkyIDE3LjE1UTM5LjM0IDE2Ljc3IDM5LjM0IDE2LjExTDM5LjM0IDE2LjExUTM5LjM0IDE1LjQzIDM4Ljk1IDE1LjA1UTM4LjU2IDE0LjY4IDM3Ljc5IDE0LjY2TDM3Ljc5IDE0LjY2TDM2LjIzIDE0LjY2Wk00NC43OSAxOS40Mkw0NC43OSAxOS40Mkw0Ni4yNyAxOS40MlE0Ni4yNyAyMC4xNSA0Ni43NSAyMC41NVE0Ny4yMyAyMC45NSA0OC4xMyAyMC45NUw0OC4xMyAyMC45NVE0OC45MCAyMC45NSA0OS4yOSAyMC42M1E0OS42OCAyMC4zMiA0OS42OCAxOS44MEw0OS42OCAxOS44MFE0OS42OCAxOS4yNCA0OS4yOCAxOC45NFE0OC44OSAxOC42MyA0Ny44NiAxOC4zMlE0Ni44MiAxOC4wMSA0Ni4yMiAxNy42M0w0Ni4yMiAxNy42M1E0NS4wNSAxNi45MCA0NS4wNSAxNS43Mkw0NS4wNSAxNS43MlE0NS4wNSAxNC42OSA0NS44OSAxNC4wMlE0Ni43MyAxMy4zNSA0OC4wNyAxMy4zNUw0OC4wNyAxMy4zNVE0OC45NiAxMy4zNSA0OS42NiAxMy42OFE1MC4zNiAxNC4wMSA1MC43NiAxNC42MVE1MS4xNSAxNS4yMiA1MS4xNSAxNS45Nkw1MS4xNSAxNS45Nkw0OS42OCAxNS45NlE0OS42OCAxNS4yOSA0OS4yNiAxNC45MVE0OC44NCAxNC41NCA0OC4wNiAxNC41NEw0OC4wNiAxNC41NFE0Ny4zMyAxNC41NCA0Ni45MyAxNC44NVE0Ni41MyAxNS4xNiA0Ni41MyAxNS43MUw0Ni41MyAxNS43MVE0Ni41MyAxNi4xOCA0Ni45NyAxNi41MFE0Ny40MCAxNi44MSA0OC4zOSAxNy4xMFE0OS4zOSAxNy40MCA0OS45OSAxNy43OFE1MC42MCAxOC4xNiA1MC44OCAxOC42NVE1MS4xNiAxOS4xMyA1MS4xNiAxOS43OUw1MS4xNiAxOS43OVE1MS4xNiAyMC44NiA1MC4zNCAyMS40OVE0OS41MyAyMi4xMiA0OC4xMyAyMi4xMkw0OC4xMyAyMi4xMlE0Ny4yMCAyMi4xMiA0Ni40MiAyMS43N1E0NS42NSAyMS40MyA0NS4yMiAyMC44M1E0NC43OSAyMC4yMiA0NC43OSAxOS40MlpNNTcuMDEgMjJMNTUuNTQgMjJMNTUuNTQgMTMuNDdMNTcuMDEgMTMuNDdMNTcuMDEgMjJaTTYxLjU2IDE4LjAwTDYxLjU2IDE4LjAwTDYxLjU2IDE3LjUyUTYxLjU2IDE2LjI4IDYyLjAwIDE1LjMyUTYyLjQ0IDE0LjM3IDYzLjI1IDEzLjg2UTY0LjA1IDEzLjM1IDY1LjA5IDEzLjM1UTY2LjE0IDEzLjM1IDY2Ljk0IDEzLjg1UTY3Ljc1IDE0LjM1IDY4LjE5IDE1LjI5UTY4LjYzIDE2LjIzIDY4LjYzIDE3LjQ4TDY4LjYzIDE3LjQ4TDY4LjYzIDE3Ljk2UTY4LjYzIDE5LjIxIDY4LjIwIDIwLjE2UTY3Ljc3IDIxLjEwIDY2Ljk2IDIxLjYxUTY2LjE1IDIyLjEyIDY1LjExIDIyLjEyTDY1LjExIDIyLjEyUTY0LjA3IDIyLjEyIDYzLjI2IDIxLjYxUTYyLjQ1IDIxLjEwIDYyLjAwIDIwLjE3UTYxLjU2IDE5LjIzIDYxLjU2IDE4LjAwWk02My4wNCAxNy40Nkw2My4wNCAxNy45NlE2My4wNCAxOS4zNiA2My41OSAyMC4xM1E2NC4xMyAyMC45MCA2NS4xMSAyMC45MEw2NS4xMSAyMC45MFE2Ni4wOSAyMC45MCA2Ni42MiAyMC4xNVE2Ny4xNSAxOS40MCA2Ny4xNSAxNy45Nkw2Ny4xNSAxNy45Nkw2Ny4xNSAxNy41MVE2Ny4xNSAxNi4wOSA2Ni42MSAxNS4zNFE2Ni4wOCAxNC41OCA2NS4wOSAxNC41OEw2NS4wOSAxNC41OFE2NC4xMyAxNC41OCA2My41OSAxNS4zM1E2My4wNSAxNi4wOSA2My4wNCAxNy40Nkw2My4wNCAxNy40NlpNNzQuNTggMjJMNzMuMTAgMjJMNzMuMTAgMTMuNDdMNzQuNTggMTMuNDdMNzguMzkgMTkuNTRMNzguMzkgMTMuNDdMNzkuODcgMTMuNDdMNzkuODcgMjJMNzguMzggMjJMNzQuNTggMTUuOTVMNzQuNTggMjJaIiBmaWxsPSIjRkZGRkZGIi8+PHBhdGggY2xhc3M9InN2Z19fdGV4dCIgZD0iTTEwNy4zOSAxNS40NEwxMDUuODMgMTUuNDRMMTA1LjgzIDEzLjYwTDEwOS43NyAxMy42MEwxMDkuNzcgMjJMMTA3LjM5IDIyTDEwNy4zOSAxNS40NFpNMTE0LjQzIDIwLjc1TDExNC40MyAyMC43NVExMTQuNDMgMjAuMTUgMTE0LjgyIDE5Ljc4UTExNS4yMSAxOS40MSAxMTUuODAgMTkuNDFMMTE1LjgwIDE5LjQxUTExNi4zOSAxOS40MSAxMTYuNzggMTkuNzhRMTE3LjE2IDIwLjE1IDExNy4xNiAyMC43NUwxMTcuMTYgMjAuNzVRMTE3LjE2IDIxLjM0IDExNi43NyAyMS43MlExMTYuMzggMjIuMTEgMTE1LjgwIDIyLjExTDExNS44MCAyMi4xMVExMTUuMjIgMjIuMTEgMTE0LjgyIDIxLjcyUTExNC40MyAyMS4zNCAxMTQuNDMgMjAuNzVaTTEyMS4zOSAxNy44MEwxMjEuMzkgMTcuODBRMTIxLjM5IDE2LjQ1IDEyMS44NiAxNS40NlExMjIuMzQgMTQuNDYgMTIzLjE4IDEzLjk1UTEyNC4wMiAxMy40MyAxMjUuMTAgMTMuNDNMMTI1LjEwIDEzLjQzUTEyNi4xNiAxMy40MyAxMjcuMDAgMTMuOTVRMTI3Ljg0IDE0LjQ2IDEyOC4zMiAxNS40NlExMjguNzkgMTYuNDUgMTI4Ljc5IDE3LjgwTDEyOC43OSAxNy44MFExMjguNzkgMTkuMTUgMTI4LjMyIDIwLjE1UTEyNy44NCAyMS4xNCAxMjcuMDEgMjEuNjVRMTI2LjE3IDIyLjE3IDEyNS4xMCAyMi4xN0wxMjUuMTAgMjIuMTdRMTI0LjAyIDIyLjE3IDEyMy4xOCAyMS42NVExMjIuMzQgMjEuMTQgMTIxLjg2IDIwLjE1UTEyMS4zOSAxOS4xNiAxMjEuMzkgMTcuODBaTTEyMy43OCAxNy44MEwxMjMuNzggMTcuODBRMTIzLjc4IDE5LjA2IDEyNC4xMyAxOS42NFExMjQuNDkgMjAuMjIgMTI1LjEwIDIwLjIyTDEyNS4xMCAyMC4yMlExMjUuNzAgMjAuMjIgMTI2LjA1IDE5LjY0UTEyNi40MSAxOS4wNiAxMjYuNDEgMTcuODBMMTI2LjQxIDE3LjgwUTEyNi40MSAxNi41NCAxMjYuMDUgMTUuOTZRMTI1LjcwIDE1LjM4IDEyNS4xMCAxNS4zOEwxMjUuMTAgMTUuMzhRMTI0LjQ5IDE1LjM4IDEyNC4xMyAxNS45NlExMjMuNzggMTYuNTQgMTIzLjc4IDE3LjgwWiIgZmlsbD0iI0ZGRkZGRiIgeD0iMTA1LjQxIi8+PC9zdmc+)](https://forthebadge.com)
# How to use

Create the Docker image
```shell
sudo docker build . -t smbmap
```
Run the Docker with your command

Example : --help
```shell
sudo docker run --rm smbmap --help
```
```
usage: smbmap.py [-h] (-H HOST | --host-file FILE) [-u USERNAME]
                 [-p PASSWORD | --prompt] [-s SHARE] [-d DOMAIN] [-P PORT]
                 [-v] [--admin] [--no-banner] [--no-color] [--no-update]
                 [-x COMMAND] [--mode CMDMODE] [-L | -R [PATH] | -r [PATH]]
                 [-A PATTERN | -g FILE | --csv FILE] [--dir-only]
                 [--no-write-check] [-q] [--depth DEPTH]
                 [--exclude SHARE [SHARE ...]] [-F PATTERN]
                 [--search-path PATH] [--search-timeout TIMEOUT]
                 [--download PATH] [--upload SRC DST] [--delete PATH TO FILE]
                 [--skip]

    ________  ___      ___  _______   ___      ___       __         _______
   /"       )|"  \    /"  ||   _  "\ |"  \    /"  |     /""\       |   __ "\
  (:   \___/  \   \  //   |(. |_)  :) \   \  //   |    /    \      (. |__) :)
   \___  \    /\  \/.    ||:     \/   /\   \/.    |   /' /\  \     |:  ____/
    __/  \   |: \.        |(|  _  \  |: \.        |  //  __'  \    (|  /
   /" \   :) |.  \    /:  ||: |_)  :)|.  \    /:  | /   /  \   \  /|__/ \
  (_______/  |___|\__/|___|(_______/ |___|\__/|___|(___/    \___)(_______)
 -----------------------------------------------------------------------------
     SMBMap - Samba Share Enumerator | Shawn Evans - ShawnDEvans@gmail.com   
                     https://github.com/ShawnDEvans/smbmap

optional arguments:
  -h, --help            show this help message and exit

Main arguments:
  -H HOST               IP of host
  --host-file FILE      File containing a list of hosts
  -u USERNAME           Username, if omitted null session assumed
  -p PASSWORD           Password or NTLM hash
  --prompt              Prompt for a password
  -s SHARE              Specify a share (default C$), ex 'C$'
  -d DOMAIN             Domain name (default WORKGROUP)
  -P PORT               SMB port (default 445)
  -v                    Return the OS version of the remote host
  --admin               Just report if the user is an admin
  --no-banner           Removes the banner from the top of the output
  --no-color            Removes the color from output
  --no-update           Removes the "Working on it" message

Command Execution:
  Options for executing commands on the specified host

  -x COMMAND            Execute a command ex. 'ipconfig /all'
  --mode CMDMODE        Set the execution method, wmi or psexec, default wmi

Shard drive Search:
  Options for searching/enumerating the share of the specified host(s)

  -L                    List all drives on the specified host, requires ADMIN
                        rights.
  -R [PATH]             Recursively list dirs, and files (no share\path lists
                        ALL shares), ex. 'C$\Finance'
  -r [PATH]             List contents of directory, default is to list root of
                        all shares, ex. -r 'C$\Documents and
                        Settings\Administrator\Documents'
  -A PATTERN            Define a file name pattern (regex) that auto downloads
                        a file on a match (requires -R or -r), not case
                        sensitive, ex '(web|global).(asax|config)'
  -g FILE               Output to a file in a grep friendly format, used with
                        -r or -R (otherwise it outputs nothing), ex -g
                        grep_out.txt
  --csv FILE            Output to a CSV file, used with -r or -R outputs file
                        listings, ex --csv shares.csv
  --dir-only            List only directories, ommit files.
  --no-write-check      Skip check to see if drive grants WRITE access.
  -q                    Quiet verbose output. Only shows shares you have READ
                        or WRITE on, and suppresses file listing when
                        performing a search (-A).
  --depth DEPTH         Traverse a directory tree to a specific depth. Default
                        is 5.
  --exclude SHARE [SHARE ...]
                        Exclude share(s) from searching and listing, ex.
                        --exclude ADMIN$ C$'

File Content Search:
  Options for searching the content of files (must run as root), kind of experimental

  -F PATTERN            File content search, -F '[Pp]assword' (requires admin
                        access to execute commands, and PowerShell on victim
                        host)
  --search-path PATH    Specify drive/path to search (used with -F, default
                        C:\Users), ex 'D:\HR\'
  --search-timeout TIMEOUT
                        Specifcy a timeout (in seconds) before the file search
                        job gets killed. Default is 300 seconds.

Filesystem interaction:
  Options for interacting with the specified host's filesystem

  --download PATH       Download a file from the remote system,
                        ex.'C$\temp\passwords.txt'
  --upload SRC DST      Upload a file to the remote system ex.
                        '/tmp/payload.exe C$\temp\payload.exe'
  --delete PATH TO FILE
                        Delete a remote file, ex. 'C$\temp\msf.exe'
  --skip                Skip delete file confirmation prompt

Examples:

$ python smbmap.py -u jsmith -p password1 -d workgroup -H 192.168.0.1
$ python smbmap.py -u jsmith -p 'aad3b435b51404eeaad3b435b51404ee:da76f2c4c96028b7a6111aef4a50a94d' -H 172.16.0.20
$ python smbmap.py -u 'apadmin' -p 'asdf1234!' -d ACME -Hh 10.1.3.30 -x 'net group "Domain Admins" /domain'
```