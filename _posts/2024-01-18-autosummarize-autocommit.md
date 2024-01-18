---
layout: post
title: Autosummarize Autocommit
---

In my quest to automate as much of life process as possible I have decided to stop wasting mental energy on git commit messages that I will likely not read. Decision fatigue is a killer.

I know I've seen people discuss this sort of thing but a quick search didn't find any easy-to-use implementations, and I wanted to extend my personal platform to implement this anyway, so I built my own.

The highlevel implementation was easy and simple:

```typescript
Every ~24 hours:
	Go to each folder that I write code in
	Collect changes into a diff
	Send diff to ChatGPT for a summary
	Commit changes
```

Of course the implementation always ends up a little hairier than expected: [implementation](https://github.com/vanjaoljaca/vanjacloud.local/blob/1585b4225fe6d8687fe55de6265c4fae50d0ba1f/handlers/autocommit.ts#L86)

In this situation I had to do some back and forth with git commands - I trusted copilot to write a little too much code for me which created some holes. Specifically, the method to stage changes and the method to check for changes were using different sources which caused some awkwardness.

But, we made it through that and achieved a good result:

![Image](https://pbs.twimg.com/media/GEGC9FzbAAAuWeW?format=png&name=medium)

*This is where the autosummarizing autocommitter summarized and committed itself.*

I find it a little verbose, but I haven't been able to mute it yet. I will tweak that over time and see how it goes. In the meanwhile you might be interested in the summarizer implementation: [link](https://github.com/vanjaoljaca/vanjacloud.local/blob/1585b4225fe6d8687fe55de6265c4fae50d0ba1f/util/gitsummarize.ts#L15)

Next up I think I'll get it auto-updating the readme.md & protecting me from committing keys.