---
layout: page
title: Chat Therapist
excerpt: What if we could have a therapist analyze all our old chat logs?
---



## Unveiling Communication Patterns: A Chat Log Analysis with LLMs

We all have those conversations that leave us wondering: could I have communicated better? I've always been fascinated by interpersonal dynamics, and I wanted to see if I could use LLMs to analyze old chat logs, hoping to glean insights into my communication style.

**The Challenge: Context is King (and Queen)**

The obvious solution: unleash the power of LLMs. But there’s a catch - most LLMs are limited by context length. Even Google's generous 1 million token limit wasn't enough for my hefty chat logs.

**The Hack: MapReduce for My Mental Health**

My goal wasn't just to analyze a single conversation. I wanted to build a system where I could run batch jobs, analyze tons of data, and discover communication patterns. Imagine running experiments on your own communication history, testing theories about how you interact with others. That's what I envisioned.

**Finding My Blind Spots (and a Sample Output)**

With a few creative hacks, I managed to get it working. The system dissected my past conversations, highlighting patterns and revealing some interesting insights. For example, it pointed out a tendency to get dismissive when others disagree, which was a valuable revelation.

**The Quick Guide (for Early Exiters)**

Here's a quick summary of the process:

1. Export your chat logs (Facebook Messenger, etc.).
2. Clean them up and chunk them into manageable sizes.
3. Craft the right prompt to get insightful analysis from the LLM.

**Diving Deeper: The Technical Nitty Gritty**

The most challenging part was partitioning the data into context-sized chunks, then applying map-reduce logic. It involved identifying “hot days” (conversations with high interaction) and ensuring they weren't split during partitioning. This required careful optimization and a few “GoodEnough (tm)” solutions to get the job done.

**The Future: Expanding the Horizons**

This project is just the beginning. I envision building a generic map-reduce system, allowing for manual adjustments across various types of data. Ultimately, I'm dreaming of a tree-based map-reduce system that could analyze sprawling timelines and unravel hidden communication patterns.

**The Price of Insight (and Some Google AI Woes)**

One unexpected hurdle was Google AI’s “harmful content” detection. While frustrating, it led to a valuable lesson: even seemingly harmless conversations can trigger AI filters. This requires careful manual censorship, which can be tedious and time-consuming.

**Let's Get Technical: Code and Resources**

- **Code: [GitHub](https://github.com/vanjaoljaca/vanjacloud.sh/blob/d93de755f3b96f90a271c72ddb8c133a7fc76274/experiments/chat-therapist.ts)**
- **Discussion: [Link to Hacker News](https://news.ycombinator.com/item?id=40388655)**

This project was a deeply personal endeavor, but I believe it has the potential to offer valuable insights into our communication, even if it sometimes involves a bit of AI-induced frustration.

