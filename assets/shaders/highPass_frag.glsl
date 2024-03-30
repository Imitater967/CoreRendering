#version 330 core
// Copyright 2021 The Terasology Foundation
// SPDX-License-Identifier: Apache-2.0

in vec2 v_uv0;

uniform sampler2D tex;
uniform float highPassThreshold;
uniform float highPassIntensity;

layout(location = 0) out vec4 outColor;

void main() {
    vec4 color = texture(tex, v_uv0.xy);

    float relativeLuminance = dot(vec3(0.2126, 0.7152, 0.0722),color.rgb);
    relativeLuminance = clamp(relativeLuminance-highPassThreshold,0,1);
    outColor = color * relativeLuminance * highPassIntensity;
}
