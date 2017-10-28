#ifndef HELLO_WORLD
  #define HELLO_WORLD vec3(0.0, 0.0, 0.0)
#else
  #define LOREM_IPSUM
#endif

#pragma GENERIC_PRAGMA

#pragma glslify: noise = require(glsl-noise)
#pragma glslify: random = require(glsl-random)
#pragma glslify: export(x)

void main() {
  vec3 a = noise(gl_FragCoord.xy);
  vec4 b = a.zyxx;
  ivec4 c = ivec4(0);
  mat2 d = mat2(1);
  mat3 e = mat3(a, b, vec3(2));

  a.xyz = gl_FragCoord.xyz;

  gl_FragColor = vec4(a.rgb, b.a);
}
