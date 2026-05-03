# 🌀 Deploying to Replit (Free)

Replit is an online coding platform that can also host your bot. While the free version "sleeps" if you don't use it, it is very easy to set up.

---

### 🟢 Step 1: Import the Repository
1. Go to [Replit.com](https://replit.com) and sign up.
2. Click **"Create Repl"** or **"Import from GitHub"**.
3. Select your `Knightbot-MD` repository.
4. Replit will automatically detect it is a Node.js project.

### 🔵 Step 2: Configure Environment Variables (Secrets)
1. In your Repl, look for the **"Secrets"** tab (the lock icon 🔒 on the left sidebar).
2. Add the following secrets:
   - `OWNER_NUMBER`: Your phone number (e.g., `254712345678`)
   - `TZ`: Your timezone (e.g., `Africa/Nairobi`)
3. **DO NOT** use the `SESSION_ID` yet.

### 🟡 Step 3: Run and Link
1. Click the big green **"Run"** button at the top.
2. Replit will install the dependencies (this might take a few minutes).
3. Once the console says it's ready, look for the **Pairing Code**.
4. Link your WhatsApp using the code.
5. Once linked, the bot will send you a **Session Key**.

### 🟠 Step 4: Save for Persistence
1. Go back to the **Secrets** (lock icon 🔒).
2. Add a new secret:
   - **Key:** `SESSION_ID`
   - **Value:** (Paste your Session Key here)
3. Stop the bot (click **Stop**) and then click **Run** again.
4. Now your bot will stay logged in!

---

### ⚠️ IMPORTANT: Keep-Alive
Replit's free tier will turn off your bot after about 5-10 minutes of inactivity. To keep it running:
1. You can use a service like [UptimeRobot](https://uptimerobot.com) to ping the URL of your Repl every 5 minutes.
2. You can find your Repl URL in the **Web View** panel (usually ends in `.repl.co` or `.replit.app`).

### Why use Replit?
- Very fast to set up.
- Easy to edit code directly in the browser.
- No credit card required.
