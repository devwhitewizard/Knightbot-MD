# 🚀 Deploying Knightbot-MD to Render (Simplified Flow)

This guide is designed for the easiest setup. 

### 📋 Pre-Deployment (GitHub):
1.  Open **[settings.js](Knightbot-MD/settings.js)** on GitHub.
2.  Edit the `botName` and `ownerNumber` directly in the file.
3.  **Commit changes** (Save the file).

### 🟢 Step 1: Create your Bot Service on Render
1. Go to your [Render Dashboard](https://dashboard.render.com).
2. Click the **"New +"** button and select **"Web Service"**.
3. Connect your **GitHub Repository**.
4. Fill in these details (Select **Docker**):
   - **Name:** `knightbot`
   - **Environment:** `Docker`
5. Click **"Advanced"** and add **ONE** Environment Variable:
   - **Key:** `SESSION_ID`
   - **Value:** (Paste your Session string starting with `KnightBot;;`)
6. Click **"Deploy Web Service"**.

---
1. Wait about 2–3 minutes for the "Build" to finish.
2. Click on the **"Logs"** tab on the left side of your Render screen.
3. Look for a line that says: **`Your Pairing Code : XXXX-XXXX`**.
4. Open **WhatsApp** on your phone:
   - Go to **Settings** -> **Linked Devices** -> **Link a Device**.
   - Tap **"Link with phone number instead"** at the bottom.
   - Enter the **8-digit code** you saw in the Render logs.

---

### 🟡 Step 3: Save your Login (IMPORTANT)
Render's free version "remembers" your login for only 24 hours. To make it permanent:
1. Once you link the bot, **the bot will send YOU a message on WhatsApp**.
2. **Check your own WhatsApp chat** (or the chat from the bot number).
3. Look for a message saying: **"🤖 Session ID Generated!"**.
4. **Copy that long string** (starting with `KnightBot;;`).
4. Go back to Render -> **Settings** -> **Environment Variables**.
5. Click **"Add Environment Variable"**:
   - **Key:** `SESSION_ID`
   - **Value:** (Paste the long string you copied)
6. Click **"Save Changes"**.

---

### ✅ Success!
Your bot is now 100% setup. It will stay online even if you turn off your phone or if Render restarts the service.

### ❌ Troubleshooting: "This action is not allowed."
If you see a red error at the bottom that says **"This action is not allowed"**, it is usually because:
- **One Free Service Limit:** Render allows only **one free web service** per account. If you already have a bot or website running on Render, you must delete it first before creating this new one.
- **Verification:** Make sure you have verified your email address with Render.

**Need to Link Again?**
If you ever log out, just delete the `SESSION_ID` variable in Render Settings and repeat from Step 2.
