# How to Deploy Knightbot-MD to Render

Follow these steps to deploy your bot to Render and keep it running 24/7 with session persistence.

## Step 1: Generate your SESSION_ID
Since Render's free tier deletes files when the bot restarts, you need to use a `SESSION_ID` to stay logged in.

1. Run your bot on your computer first (`npm start`).
2. Link your WhatsApp.
3. Once connected, stop the bot (Ctrl+C).
4. Run this command in your terminal to get your `SESSION_ID`:
   ```bash
   node -e "const fs=require('fs'); console.log('KnightBot;;' + fs.readFileSync('./session/creds.json').toString('base64'))"
   ```
5. **Copy the long string** it outputs (starting with `KnightBot;;`). This is your session key.

## Step 2: Push your code to GitHub
Make sure your latest code (including the changes I made) is uploaded to a private or public GitHub repository.

## Step 3: Create a Render Web Service
1. Go to [Render Dashboard](https://dashboard.render.com).
2. Click **New +** and select **Web Service**.
3. Connect your GitHub repository.
4. Set the following:
   - **Name:** `knightbot-md`
   - **Environment:** `Node`
   - **Build Command:** `npm install`
   - **Start Command:** `node index.js`
5. Click **Advanced** to add **Environment Variables**:
   - `SESSION_ID`: (Paste the long string you copied in Step 1)
   - `PORT`: `3000`
   - `TZ`: `Asia/Jakarta` (or your timezone, e.g., `Africa/Nairobi`)

## Step 4: Deploy!
Click **Create Web Service**. Once the deployment is finished, your bot will connect automatically. You can check the logs to see the "Bot Connected Successfully!" message.

---
**Note:** If you ever log out or the session expires, just repeat Step 1 and update the `SESSION_ID` in the Render dashboard.
