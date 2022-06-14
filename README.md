# glsl-conditionals

[![npm version](https://img.shields.io/npm/v/glsl-conditionals)](https://www.npmjs.com/package/glsl-conditionals)
[![stability-frozen](https://img.shields.io/badge/stability-frozen-brightgreen.svg)](https://www.npmjs.com/package/glsl-conditionals)
[![npm minzipped size](https://img.shields.io/bundlephobia/minzip/glsl-conditionals)](https://bundlephobia.com/package/glsl-conditionals)
[![dependencies](https://img.shields.io/librariesio/release/npm/glsl-conditionals)](https://github.com/dmnsgn/glsl-conditionals/blob/main/package.json)
[![types](https://img.shields.io/npm/types/glsl-conditionals)](https://github.com/microsoft/TypeScript)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-fa6673.svg)](https://conventionalcommits.org)
[![styled with prettier](https://img.shields.io/badge/styled_with-Prettier-f8bc45.svg?logo=prettier)](https://github.com/prettier/prettier)
[![linted with eslint](https://img.shields.io/badge/linted_with-ES_Lint-4B32C3.svg?logo=eslint)](https://github.com/eslint/eslint)
[![license](https://img.shields.io/github/license/dmnsgn/glsl-conditionals)](https://github.com/dmnsgn/glsl-conditionals/blob/main/LICENSE.md)

[Daniel Holden's functions designed to avoid conditionals](https://theorangeduck.com/page/avoiding-shader-conditionals) in GLSL, available both as ES modules strings and as GLSL files for use with glslify.

Disclaimer: you might not need this as it is highly hardware dependant and branching might not equate more operations in modern GPUs. Also it can make your shader harder to visually parse.

[![paypal](https://img.shields.io/badge/donate-paypal-informational?logo=paypal)](https://paypal.me/dmnsgn)
[![coinbase](https://img.shields.io/badge/donate-coinbase-informational?logo=coinbase)](https://commerce.coinbase.com/checkout/56cbdf28-e323-48d8-9c98-7019e72c97f3)
[![twitter](https://img.shields.io/twitter/follow/dmnsgn?style=social)](https://twitter.com/dmnsgn)

## Installation

```bash
npm install glsl-conditionals
```

## Usage

### ESM

```js
import * as glslConditionals from "glsl-conditionals";

const shader = /* glsl */ `
// Comparisons
${glslConditionals.WHEN_EQ}
${glslConditionals.WHEN_NEQ}

${glslConditionals.WHEN_GT}
${glslConditionals.WHEN_LT}

${glslConditionals.WHEN_GE}
${glslConditionals.WHEN_LE}

// Logical operators
${glslConditionals.WHEN_AND}
${glslConditionals.WHEN_OR}
${glslConditionals.WHEN_XOR}
${glslConditionals.WHEN_NOT}

void main() {
  float x = 10.0;
  float y = 0.0;

  y += 5.0 * when_eq(x, 0.0);
  y += 5.0 * when_eq(x, 0.0);
  y += 5.0 * when_neq(x, 0.0);
  y += 5.0 * when_gt(x, 0.0);
  y += 5.0 * when_lt(x, 0.0);
  y += 5.0 * when_ge(x, 0.0);
  y += 5.0 * when_le(x, 0.0);
  y += 5.0 * when_and(x, 0.0);
  y += 5.0 * when_or(x, 0.0);
  y += 5.0 * when_xor(x, 0.0);
  y += 5.0 * when_not(x, 0.0);

  // ...
}
`;
```

### glslify

```glsl
// Comparisons
#pragma glslify: when_eq = require(glsl-conditionals/when_eq)
#pragma glslify: when_neq = require(glsl-conditionals/when_neq)

#pragma glslify: when_gt = require(glsl-conditionals/when_gt)
#pragma glslify: when_lt = require(glsl-conditionals/when_lt)

#pragma glslify: when_ge = require(glsl-conditionals/when_ge)
#pragma glslify: when_le = require(glsl-conditionals/when_le)

// Logical operators
#pragma glslify: when_and = require(glsl-conditionals/when_and)
#pragma glslify: when_or = require(glsl-conditionals/when_or)
#pragma glslify: when_xor = require(glsl-conditionals/when_xor)
#pragma glslify: when_not = require(glsl-conditionals/when_not)

void main() {
  float x = 10.0;
  float y = 0.0;

  y += 5.0 * when_eq(x, 0.0);
  y += 5.0 * when_eq(x, 0.0);
  y += 5.0 * when_neq(x, 0.0);
  y += 5.0 * when_gt(x, 0.0);
  y += 5.0 * when_lt(x, 0.0);
  y += 5.0 * when_ge(x, 0.0);
  y += 5.0 * when_le(x, 0.0);
  y += 5.0 * when_and(x, 0.0);
  y += 5.0 * when_or(x, 0.0);
  y += 5.0 * when_xor(x, 0.0);
  y += 5.0 * when_not(x, 0.0);

  // ...
}
```

## License

MIT. See [license file](https://github.com/dmnsgn/glsl-conditionals/blob/main/LICENSE.md).
