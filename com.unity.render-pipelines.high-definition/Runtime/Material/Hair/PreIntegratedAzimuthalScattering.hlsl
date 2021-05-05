#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Hair/PreIntegratedAzimuthalScattering.cs.hlsl"

TEXTURE2D(_PreIntegratedAzimuthalScattering);

float GetPreIntegratedAzimuthalScattering(float theta, float beta)
{
    // TODO
    // For now just sample to check that it's bound correctly.
    float3 sample = SAMPLE_TEXTURE2D_LOD(_PreIntegratedAzimuthalScattering, s_linear_clamp_sampler, float2(theta, 0), 0).xyz;

    return sample.x;
}
