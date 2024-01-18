### Making a Deckard bot

Making a fine-tuned GPT with openai is very easy. Here is how I created a Bladerunner Deckard bot.

1. Spent an hour interrogating ChatGPT trying to remember which movie the interlinked scene is from.
2. Created a prepared data json file with prompt & completion pairs. Special end of line characters are used to help the LLM.
3. Used OpenAI cli to submit a finetune training job. This took hours to even get started.

![image-20230629095122692](assets/deckard-bot/image-20230629095122692.png)

Finally I was able to test for consciousness:

```bash
openai api completions.create -m curie:ft-personal-2023-06-29-23-14-42 -p 'why are you ignoring me just tell me is it good to be an AI? ->'
```

![](https://youtu.be/xYwEQvj3Y78?t=103)

I don't have a good use case for this yet, but I wanted to be able to do this easily if it ever came up.