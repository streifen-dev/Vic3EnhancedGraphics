TextureSampler SkyboxSample
{
    MagFilter   = "Linear"
    MinFilter   = "Linear"
    MipFilter   = "Linear"
    SampleModeU = "Clamp"
    SampleModeV = "Clamp"
    Type        = "Cube"
    File        = "gfx/map/environment/SkyBox.dds"
    srgb        = yes
} 

float3 FromCameraDir = normalize(Input.WorldSpacePos - CameraPosition);
float4 CubemapSample = PdxTexCube(EnvironmentMap, FromCameraDir); 