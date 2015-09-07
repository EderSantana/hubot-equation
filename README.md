# hubot-equation

A hubot script that interacts with the Google Chat API to generate Latex
equations.

![](./images/example.png)
![](./images/example2.png)

## Installation

In hubot project repo, run:

`npm install hubot-equation --save`

Then add **hubot-equation** to your `external-scripts.json`:

```json
[
  "hubot-equation"
]
```

## Usage
- [robot] eqn me [your equation]
- surround equation with $$

## TODO
- [x] Detect double $ and generate equation inside automatically
- [ ] Hope for native equation support everywhere
