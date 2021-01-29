# Workshop for Deployment 101 🕯

Slide for workshop: [Click here 📽](https://docs.google.com/presentation/d/1MHeoAMvZybnoHnq5ZNsvsez8UiL6MtUXBlD_Ev965cs/edit?usp=sharing)

## Prerequire ✨

-   Heroku Account
-   Git

## Quickstart 🔥

1. Fork this repository. 💾
2. Create Heroku Project on your account and note your app name for use in step (5). You have to create two project for frontend-service and backend-service. 📦
3. Get API-KEY from your account. Click `https://dashboard.heroku.com/account` and scroll to `API Key` then click `Reveal` button. 🔑
4. Create secret variable in forked repository by go to repository page>Setting>Secret then click `New repository secret` button. You have to add two secret variable (`HEROKU_API_KEY` and `HEROKU_EMAIL`). 🎉

| Name           | Description                    |
| -------------- | ------------------------------ |
| HEROKU_API_KEY | Get by step (3)                |
| HEROKU_EMAIL   | Email for login heroku website |

5. Run this command by replace `[HEROKU_BACKEND_APP_NAME]` and `[HEROKU_FRONTEND_APP_NAME]` in your own information. If you use Window OS then scroll to end of page for read alternative replace variable. 💣

```bash
make initial-app HEROKU_BACKEND_APP_NAME="[HEROKU_BACKEND_APP_NAME]" HEROKU_FRONTEND_APP_NAME="[HEROKU_FRONTEND_APP_NAME]"
```

6. Edit APIs JSON file (`./backend/APIs.json`) to your own information. 📝
7. Commit and push your code. 💊

```bash
git add .
git commit -m '[+] Setup Finish :tada:'
git push --set-upstream origin main
```

8. Deploy your backend service by merge code to `release-backend` branch. 🫖

```bash
git checkout -b release-backend
git pull origin main
git push --set-upstream origin release-backend

```

9.  Deploy your frontend service by merge code to `release-frontend` branch. 🍙

```bash
git checkout -b release-frontend
git pull origin main
git push --set-upstream origin release-frontend
```

10. Enjoy your app 🚀

## Troubleshooting 🐛

-   If you use Window OS then you have to manual replace `HEROKU_BACKEND_APP_NAME` and `HEROKU_FRONTEND_APP_NAME` for each files instead `make` command on step (5).
    -   ./.github/workflows/deploy-backend-heroku.yml
    -   ./.github/workflows/deploy-frontend-heroku.yml
    -   ./frontend/.env
