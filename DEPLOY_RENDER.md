# 🚀 Deploying Knightbot-MD to Render (Easy Guide)

This guide is designed for non-tech users. Follow these 3 simple steps to get your bot running 24/7.

---

### 🟢 Step 1: Create your Bot Service on Render
1. Go to your [Render Dashboard](https://dashboard.render.com).
2. Click the **"New +"** button and select **"Web Service"**.
3. Connect your **GitHub Repository**.
4. Fill in these details:
   - **Name:** `knightbot`
   - **Environment:** `Node`
   - **Build Command:** `npm install`
   - **Start Command:** `node index.js`
5. Click **"Advanced"** and add these **Environment Variables**:
   - `OWNER_NUMBER`: Your phone number (e.g., `254712345678`)
   - `TZ`: Your timezone (e.g., `Africa/Nairobi`)
6. Click **"Deploy Web Service"** (or just **"Deploy"**).

---

### 🔵 Step 2: Link your WhatsApp (Pairing)
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
1. Once you link the bot, **the bot will send you a message on WhatsApp**.
2. That message contains a very long **"Session Key"**.
3. **Copy that long string** (it looks like a lot of random characters).
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
