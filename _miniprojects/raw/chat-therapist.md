emotional personal intro, motivation, pacing for the article

I wanted to evaluate some old chat logs with a therapist's eye, to discover any interpersonal techniques and ideas that could help me with my communication.

technical problem

LLMs are perfect for this, but big time bad because context length is an issue. Google gives 1m context length!! But still, not enough

quick solution (my process is to hack it)

Ok, but also I wanted to have a map-reduce type deal for big jobs of LLM processing. I would love to be able to dream up ideas / theories, then run batch jobs on a tonne of content collecting evidence for said theory (and evaluating it). That would be cool.



(back to personal as well)

Anyway, here is how I did this. Here is some sample output as well. I learned I need to be more mindful of when people start to be dismissive towards what I'm saying. This made the venture worth while.



High level steps:

1. Export from facebook messenger or whatever
2. Reformat & chunk the json into something reasonable
3. Ask for analysis with the right prompt

(first exit, short 1 pager)

I then cleaned this up into something more general:

1. Provide a giant input & a parser
2. Provide context about the situation + the 'map' task
3. Collect all that data into a final analysis



(dive into a tricky technical part)

trickest part was partitioning to context size & then map reduce

- first attempts via chatgpt made weird things as it misunderstood my instructions
- eventually i settled on highlighting top 30% "hot days" and making sure i didnt partition there
- what would be needed is some sort of backtrack mechanism if we enter hot days during the end of context
- that sounds like effort so maybe its easier to package hot days into 'runs' then greedy pick runs
- each day is quite small and runs would be small and context is large so this should be GoodEnough (tm)
- optimizing for a simple implementation that gets the job done as an entertainment, not aiming for optimal
- also had to add long gaps = forced partition

(how does it grow)

-- future:

1. make this into a generic map / reduce, need to be able to manually patch in modifications to any page
2. what i really want is a tree based map reduce, where each subprompt rolls up, and it spans over a long text / timeline



what i learned:

- it sucks when google ai decides your content is harmful. there are no clues to why. with a binary search im able to filter the area down then manually censor things, but sometimes issues only arise when the whole chat log is included which means it is a very deep issue. for example, a discussion involving cancel culture, damore and google triggered the alarm until i went through and censored the person, the company, and the state legal system references. this is painful and manual



link to others: https://news.ycombinator.com/item?id=40388655





code link https://github.com/vanjaoljaca/vanjacloud.sh/blob/d93de755f3b96f90a271c72ddb8c133a7fc76274/experiments/chat-therapist.ts