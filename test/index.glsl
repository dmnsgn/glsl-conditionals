// Comparisons
#pragma glslify: when_eq = require(../when_eq)
#pragma glslify: when_neq = require(../when_neq)

#pragma glslify: when_gt = require(../when_gt)
#pragma glslify: when_lt = require(../when_lt)

#pragma glslify: when_ge = require(../when_ge)
#pragma glslify: when_le = require(../when_le)

// Logical operators
#pragma glslify: when_and = require(../when_and)
#pragma glslify: when_or = require(../when_or)
#pragma glslify: when_xor = require(../when_xor)
#pragma glslify: when_not = require(../when_not)

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
