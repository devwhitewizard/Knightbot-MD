# 🤗 Deploying to Hugging Face Spaces (No Credit Card)

Hugging Face Spaces is a 100% free hosting service that **does not require a credit card**. It is a perfect alternative to Koyeb and Render for hosting your WhatsApp bot.

---

### 🟢 Step 1: Create a Hugging Face Account
1. Go to [huggingface.co](https://huggingface.co) and sign up.
2. Verify your email address.

### 🔵 Step 2: Create a New Space
1. Click on **"New"** (top right) -> **"Space"**.
2. Set the following:
   - **Space Name:** `knightbot-md` (or anything you like).
   - **License:** `MIT`.
   - **SDK:** Select **Docker**.
   - **Docker Template:** Choose **Blank**.
   - **Space Hardware:** Choose **CPU Basic (Free)**.
   - **Visibility:** **Public** (required for free tier, but your secrets will stay private).
3. Click **"Create Space"**.

### 🟡 Step 3: Add your Variables
1. After creating the Space, click the **"Settings"** tab at the top of your Space page.
2. Scroll down to **"Variables and Secrets"**.
3. Click **"New Secret"** for each of these:
   - `OWNER_NUMBER`: Your phone number (e.g., `254712345678`)
   - `TZ`: Your timezone (e.g., `Africa/Nairobi`)
   - `PORT`: `7860` (Important for Hugging Face)

### 🟠 Step 4: Upload your Files
1. Go to the **"Files"** tab in your Space.
2. Click **"Add file"** -> **"Upload files"**.
3. Drag and drop **all files** from your `Knightbot-MD` folder (including the new `Dockerfile`).
4. **DO NOT** upload `node_modules` or `.git` folders.
5. Click **"Commit changes"** at the bottom.

### 🔴 Step 5: Link and Save Session
1. Wait for the Space to build (it will say "Building" then "Running").
2. Click the **"Logs"** button (near the top right) to see the bot starting.
3. Look for your **Pairing Code** in the logs.
4. Link your WhatsApp using the code (Same way as Render).
5. Once linked, the bot will send you a **Session Key**.
6. Go back to **Settings** -> **Variables and Secrets**.
7. Add a New Secret:
   - **Key:** `SESSION_ID`
   - **Value:** (Paste your Session Key here)
8. The Space will automatically restart and stay linked forever!

---

### Why use Hugging Face?
- **No Credit Card Required.**
- **No 24-hour Limit:** Unlike Render's free tier, Hugging Face doesn't "sleep" as quickly, making it more stable for bots.
- **Easy Management:** You can see your logs and restart the bot anytime from the web.
