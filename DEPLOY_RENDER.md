# How to Deploy Knightbot-MD to Render (Persistent & Free)

This method allows you to run your bot on **Render's Free Tier** without needing a computer or "Persistent Disk". Ideal for non-tech users!

## Step 1: Create a Render Web Service
1. Go to [Render Dashboard](https://dashboard.render.com).
2. Click **New +** and select **Web Service**.
3. Connect your GitHub repository.
4. Set the following:
   - **Name:** `knightbot-md`
   - **Environment:** `Node`
   - **Build Command:** `npm install`
   - **Start Command:** `node index.js`
5. Click **Advanced** to add **Environment Variables**:
   - `OWNER_NUMBER`: Your phone number with country code (e.g., `254712345678`).
   - `PORT`: `3000`
   - `TZ`: Your timezone (e.g., `Africa/Nairobi`).
6. Click **Create Web Service**.

## Step 2: Link your WhatsApp (Pairing Code)
1. Wait for Render to build the service.
2. Open the **Logs** tab in Render.
3. Look for a line that says: `Your Pairing Code : XXXX-XXXX`.
4. Open WhatsApp on your phone -> Settings -> Linked Devices -> Link a Device -> **Link with phone number instead**.
5. Enter the code shown in the Render logs.

## Step 3: Enable Permanent Persistence
Since Render's free tier forgets sessions when it restarts, the bot will automatically generate a "Session Key" for you once you link it.

1. Once linked, the bot will send you a message on WhatsApp with your `SESSION_ID`. 
2. It will also print it in the Render logs.
3. **Copy that long string** (starting with `KnightBot;;`).
4. Go back to Render Dashboard -> **Settings** -> **Environment Variables**.
5. Add a new variable:
   - Key: `SESSION_ID`
   - Value: (Paste your long string here)
6. Click **Save Changes**.

Done! Your bot is now permanently connected and will survive restarts automatically.

---
**Troubleshooting:** If the bot stops responding, delete the `SESSION_ID` variable in Render and repeat the steps above to get a fresh one.
