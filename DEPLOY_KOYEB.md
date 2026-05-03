# 🚀 Alternative: Deploying to Koyeb (Free)

If you already have a project on Render, Render will not allow you to host a second one for free. **Koyeb** is a great alternative that also has a free tier and works very well for WhatsApp bots.

---

### 🟢 Step 1: Create a Koyeb Account
1. Go to [Koyeb.com](https://www.koyeb.com) and sign up.
2. Verify your email.

### 🔵 Step 2: Create a New App
1. Click **"Create App"**.
2. Select **"GitHub"** as the source.
3. Connect your repository.
4. Set the following:
   - **Instance Type:** `Nano` (This is the free one).
   - **Builder:** `Buildpack` or `Docker` (Select **Buildpack**).
   - **Ports:** Add port `3000`.
5. Add your **Environment Variables**:
   - `OWNER_NUMBER`: Your phone number (e.g., `254712345678`)
   - `TZ`: Your timezone (e.g., `Africa/Nairobi`)
6. Click **"Deploy"**.

### 🟡 Step 3: Link and Save Session
1. Like Render, you can find your **Pairing Code** in the Koyeb **Logs**.
2. Once the bot links and sends you the **Session Key** on WhatsApp, copy it.
3. Go back to Koyeb -> **Environment Variables**.
4. Add `SESSION_ID` and paste your key.
5. Save and Re-deploy.

---

### Why use Koyeb?
- It allows you to have a second project for free without deleting your Render one.
- The setup is very similar to Render.
