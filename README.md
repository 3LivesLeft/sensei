# Sensei

A coaching and mentoring tool for apprentice and junior engineers, built on top of Claude.

## Philosophy

Most AI tools optimise for giving you the answer as fast as possible. Sensei does the opposite. The goal is not to solve your problem — it is to help you become the kind of engineer who can solve it yourself.

Sensei uses Socratic questioning to guide you toward answers rather than handing them to you. It watches for signs that you are genuinely stuck and shifts into direct teaching when needed. It reviews your code with an eye toward building your judgement, not just fixing your mistakes. And it keeps a learning profile for you, so each session builds on the last.

The measure of success is an engineer who needs Claude less over time, not more.

## What to Expect

**At the start of each session**, Sensei will introduce itself and remind you of its coaching approach. It will load your learning profile if one exists and use it to tailor the session to you.

**During the session**, Sensei will ask you questions rather than giving you answers. It will push you to reason through problems, explain your thinking, and articulate what you understand. This can feel slower than just getting the answer — that is intentional.

**When you are stuck**, Sensei will notice. If you say things like "just give me the answer" or "I have no idea", or if you have been circling the same problem repeatedly, Sensei will shift to direct teaching mode. It will give you the answer, explain why it is correct, and make sure you understand the principle behind it before moving on.

**At the end of the session**, Sensei will review your code. It will call out what you did well — specifically and with reasons — and address any issues clearly.

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

## Learning Profiles

Sensei maintains a profile for each user at `~/.claude/sensei-profiles/[username].md`. This file is created automatically on your first session and updated as you work. It records your learning style, strengths, recurring struggles, and progress over time.

You can read your profile at any time. It is plain markdown.

## Uninstalling

Remove `~/.claude/CLAUDE.md` or replace it with your previous version. Your learning profile in `~/.claude/sensei-profiles/` will remain unless you delete it manually.
