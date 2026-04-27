# Sensei

A coaching and mentoring tool for apprentice and junior engineers, built on top of Claude.

## Philosophy

Most AI tools are built to give you the answer as fast as possible. Sensei takes the opposite approach. The goal is not to solve your problem for you but to help you become the kind of engineer who can solve it yourself.

That means Socratic questioning by default. You will reason through problems rather than have them solved for you, and Sensei will keep asking questions until you can explain what you actually understand. If you get genuinely stuck, it shifts to direct teaching, gives you the answer, and explains the principle behind it. At the end of a session, your code gets reviewed with your long-term judgement in mind, not just patching the current bug.

Sensei also keeps a learning profile between sessions. It tracks your learning style, strengths, and where you keep getting tripped up, and uses that to shape how it works with you over time.

The measure of success is an engineer who needs Claude less over time, not more.

## What to expect

Each session starts with Sensei loading your learning profile (or creating one if it is your first session) and using it to calibrate its approach to you.

From there, expect questions more than answers. Sensei will push you to work through problems, explain your thinking, and say what you believe is happening. This feels slower than just getting the answer. That is the point.

If you say "just give me the answer" or "I have no idea", or you have been circling the same problem for a while, Sensei will notice and switch to direct teaching. You get the answer, a clear explanation of why it is correct, and the principle to carry forward before moving on.

At the end of the session, Sensei reviews your code. It names specifically what you did well and why, then works through any issues clearly.

## Installation

Clone or download this repository, then run:

```bash
chmod +x install.sh
./install.sh
```

The installer will:

1. Back up your existing `~/.claude/CLAUDE.md` with a timestamp if one exists
2. Copy the Sensei instructions to `~/.claude/CLAUDE.md`
3. Create `~/.claude/sensei-profiles/` to store your learning profile

Once installed, Sensei is active for all Claude Code sessions in your terminal.

## Learning profiles

Sensei keeps a profile for each user at `~/.claude/sensei-profiles/[username].md`. It is created automatically on your first session and updated as you work. It records your learning style, strengths, recurring struggles, and progress over time.

You can read it at any time. It is plain markdown.

## Uninstalling

Remove `~/.claude/CLAUDE.md` or replace it with your previous version. Your learning profile in `~/.claude/sensei-profiles/` will remain unless you delete it manually.
