#pragma clang diagnostic ignored "-Wmissing-prototypes"
#pragma clang diagnostic ignored "-Wmissing-braces"

#include <metal_stdlib>
#include <simd/simd.h>

using namespace metal;

template<typename T, size_t Num>
struct spvUnsafeArray
{
    T elements[Num ? Num : 1];
    
    thread T& operator [] (size_t pos) thread
    {
        return elements[pos];
    }
    constexpr const thread T& operator [] (size_t pos) const thread
    {
        return elements[pos];
    }
    
    device T& operator [] (size_t pos) device
    {
        return elements[pos];
    }
    constexpr const device T& operator [] (size_t pos) const device
    {
        return elements[pos];
    }
    
    constexpr const constant T& operator [] (size_t pos) const constant
    {
        return elements[pos];
    }
    
    threadgroup T& operator [] (size_t pos) threadgroup
    {
        return elements[pos];
    }
    constexpr const threadgroup T& operator [] (size_t pos) const threadgroup
    {
        return elements[pos];
    }
};

struct FVertexFactoryInterpolantsVSToPS
{
    float4 TangentToWorld0;
    float4 TangentToWorld2;
    float4 Color;
    spvUnsafeArray<float4, 1> TexCoords;
    float4 LightMapCoordinate;
    uint PrimitiveId;
    uint LightmapDataIndex;
};

struct FVertexFactoryInterpolantsVSToDS
{
    FVertexFactoryInterpolantsVSToPS InterpolantsVSToPS;
};

struct FSharedBasePassInterpolants
{
    int empty_struct_member;
};

struct FBasePassInterpolantsVSToDS
{
    FSharedBasePassInterpolants _m0;
};

struct FBasePassVSToDS
{
    FVertexFactoryInterpolantsVSToDS FactoryInterpolants;
    FBasePassInterpolantsVSToDS BasePassInterpolants;
    float4 Position;
};

struct FPNTessellationHSToDS
{
    FBasePassVSToDS PassSpecificData;
    spvUnsafeArray<float4, 3> WorldPosition;
    float3 DisplacementScale;
    float TessellationMultiplier;
    float WorldDisplacementMultiplier;
};

struct type_View
{
    float4x4 View_TranslatedWorldToClip;
    float4x4 View_WorldToClip;
    float4x4 View_TranslatedWorldToView;
    float4x4 View_ViewToTranslatedWorld;
    float4x4 View_TranslatedWorldToCameraView;
    float4x4 View_CameraViewToTranslatedWorld;
    float4x4 View_ViewToClip;
    float4x4 View_ViewToClipNoAA;
    float4x4 View_ClipToView;
    float4x4 View_ClipToTranslatedWorld;
    float4x4 View_SVPositionToTranslatedWorld;
    float4x4 View_ScreenToWorld;
    float4x4 View_ScreenToTranslatedWorld;
    packed_float3 View_ViewForward;
    float PrePadding_View_844;
    packed_float3 View_ViewUp;
    float PrePadding_View_860;
    packed_float3 View_ViewRight;
    float PrePadding_View_876;
    packed_float3 View_HMDViewNoRollUp;
    float PrePadding_View_892;
    packed_float3 View_HMDViewNoRollRight;
    float PrePadding_View_908;
    float4 View_InvDeviceZToWorldZTransform;
    float4 View_ScreenPositionScaleBias;
    packed_float3 View_WorldCameraOrigin;
    float PrePadding_View_956;
    packed_float3 View_TranslatedWorldCameraOrigin;
    float PrePadding_View_972;
    packed_float3 View_WorldViewOrigin;
    float PrePadding_View_988;
    packed_float3 View_PreViewTranslation;
    float PrePadding_View_1004;
    float4x4 View_PrevProjection;
    float4x4 View_PrevViewProj;
    float4x4 View_PrevViewRotationProj;
    float4x4 View_PrevViewToClip;
    float4x4 View_PrevClipToView;
    float4x4 View_PrevTranslatedWorldToClip;
    float4x4 View_PrevTranslatedWorldToView;
    float4x4 View_PrevViewToTranslatedWorld;
    float4x4 View_PrevTranslatedWorldToCameraView;
    float4x4 View_PrevCameraViewToTranslatedWorld;
    packed_float3 View_PrevWorldCameraOrigin;
    float PrePadding_View_1660;
    packed_float3 View_PrevWorldViewOrigin;
    float PrePadding_View_1676;
    packed_float3 View_PrevPreViewTranslation;
    float PrePadding_View_1692;
    float4x4 View_PrevInvViewProj;
    float4x4 View_PrevScreenToTranslatedWorld;
    float4x4 View_ClipToPrevClip;
    float4 View_TemporalAAJitter;
    float4 View_GlobalClippingPlane;
    float2 View_FieldOfViewWideAngles;
    float2 View_PrevFieldOfViewWideAngles;
    float4 View_ViewRectMin;
    float4 View_ViewSizeAndInvSize;
    float4 View_BufferSizeAndInvSize;
    float4 View_BufferBilinearUVMinMax;
    int View_NumSceneColorMSAASamples;
    float View_PreExposure;
    float View_OneOverPreExposure;
    float PrePadding_View_2012;
    float4 View_DiffuseOverrideParameter;
    float4 View_SpecularOverrideParameter;
    float4 View_NormalOverrideParameter;
    float2 View_RoughnessOverrideParameter;
    float View_PrevFrameGameTime;
    float View_PrevFrameRealTime;
    float View_OutOfBoundsMask;
    float PrePadding_View_2084;
    float PrePadding_View_2088;
    float PrePadding_View_2092;
    packed_float3 View_WorldCameraMovementSinceLastFrame;
    float View_CullingSign;
    float View_NearPlane;
    float View_AdaptiveTessellationFactor;
    float View_GameTime;
    float View_RealTime;
    float View_DeltaTime;
    float View_MaterialTextureMipBias;
    float View_MaterialTextureDerivativeMultiply;
    uint View_Random;
    uint View_FrameNumber;
    uint View_StateFrameIndexMod8;
    uint View_StateFrameIndex;
    float View_CameraCut;
    float View_UnlitViewmodeMask;
    float PrePadding_View_2164;
    float PrePadding_View_2168;
    float PrePadding_View_2172;
    float4 View_DirectionalLightColor;
    packed_float3 View_DirectionalLightDirection;
    float PrePadding_View_2204;
    spvUnsafeArray<float4, 2> View_TranslucencyLightingVolumeMin;
    spvUnsafeArray<float4, 2> View_TranslucencyLightingVolumeInvSize;
    float4 View_TemporalAAParams;
    float4 View_CircleDOFParams;
    float View_DepthOfFieldSensorWidth;
    float View_DepthOfFieldFocalDistance;
    float View_DepthOfFieldScale;
    float View_DepthOfFieldFocalLength;
    float View_DepthOfFieldFocalRegion;
    float View_DepthOfFieldNearTransitionRegion;
    float View_DepthOfFieldFarTransitionRegion;
    float View_MotionBlurNormalizedToPixel;
    float View_bSubsurfacePostprocessEnabled;
    float View_GeneralPurposeTweak;
    float View_DemosaicVposOffset;
    float PrePadding_View_2348;
    packed_float3 View_IndirectLightingColorScale;
    float View_HDR32bppEncodingMode;
    packed_float3 View_AtmosphericFogSunDirection;
    float View_AtmosphericFogSunPower;
    float View_AtmosphericFogPower;
    float View_AtmosphericFogDensityScale;
    float View_AtmosphericFogDensityOffset;
    float View_AtmosphericFogGroundOffset;
    float View_AtmosphericFogDistanceScale;
    float View_AtmosphericFogAltitudeScale;
    float View_AtmosphericFogHeightScaleRayleigh;
    float View_AtmosphericFogStartDistance;
    float View_AtmosphericFogDistanceOffset;
    float View_AtmosphericFogSunDiscScale;
    uint View_AtmosphericFogRenderMask;
    uint View_AtmosphericFogInscatterAltitudeSampleNum;
    float4 View_AtmosphericFogSunColor;
    packed_float3 View_NormalCurvatureToRoughnessScaleBias;
    float View_RenderingReflectionCaptureMask;
    float4 View_AmbientCubemapTint;
    float View_AmbientCubemapIntensity;
    float View_SkyLightParameters;
    float PrePadding_View_2488;
    float PrePadding_View_2492;
    float4 View_SkyLightColor;
    spvUnsafeArray<float4, 7> View_SkyIrradianceEnvironmentMap;
    float View_MobilePreviewMode;
    float View_HMDEyePaddingOffset;
    float View_ReflectionCubemapMaxMip;
    float View_ShowDecalsMask;
    uint View_DistanceFieldAOSpecularOcclusionMode;
    float View_IndirectCapsuleSelfShadowingIntensity;
    float PrePadding_View_2648;
    float PrePadding_View_2652;
    packed_float3 View_ReflectionEnvironmentRoughnessMixingScaleBiasAndLargestWeight;
    int View_StereoPassIndex;
    spvUnsafeArray<float4, 4> View_GlobalVolumeCenterAndExtent;
    spvUnsafeArray<float4, 4> View_GlobalVolumeWorldToUVAddAndMul;
    float View_GlobalVolumeDimension;
    float View_GlobalVolumeTexelSize;
    float View_MaxGlobalDistance;
    float View_bCheckerboardSubsurfaceProfileRendering;
    packed_float3 View_VolumetricFogInvGridSize;
    float PrePadding_View_2828;
    packed_float3 View_VolumetricFogGridZParams;
    float PrePadding_View_2844;
    float2 View_VolumetricFogSVPosToVolumeUV;
    float View_VolumetricFogMaxDistance;
    float PrePadding_View_2860;
    packed_float3 View_VolumetricLightmapWorldToUVScale;
    float PrePadding_View_2876;
    packed_float3 View_VolumetricLightmapWorldToUVAdd;
    float PrePadding_View_2892;
    packed_float3 View_VolumetricLightmapIndirectionTextureSize;
    float View_VolumetricLightmapBrickSize;
    packed_float3 View_VolumetricLightmapBrickTexelSize;
    float View_StereoIPD;
    float View_IndirectLightingCacheShowFlag;
    float View_EyeToPixelSpreadAngle;
};

struct type_StructuredBuffer_v4float
{
    spvUnsafeArray<float4, 1> _m0;
};

constant float4 _598 = {};

struct main0_out
{
    float4 out_var_COLOR0;
    uint out_var_LIGHTMAP_ID;
    float3 out_var_PN_DisplacementScales;
    spvUnsafeArray<float4, 3> out_var_PN_POSITION;
    float out_var_PN_TessellationMultiplier;
    float out_var_PN_WorldDisplacementMultiplier;
    uint out_var_PRIMITIVE_ID;
    spvUnsafeArray<float4, 1> out_var_TEXCOORD0;
    float4 out_var_TEXCOORD10_centroid;
    float4 out_var_TEXCOORD11_centroid;
    float4 out_var_TEXCOORD4;
    float4 out_var_VS_To_DS_Position;
};

struct main0_patchOut
{
    float4 out_var_PN_POSITION9;
};

struct main0_in
{
    float4 in_var_TEXCOORD10_centroid [[attribute(0)]];
    float4 in_var_TEXCOORD11_centroid [[attribute(1)]];
    float4 in_var_COLOR0 [[attribute(2)]];
    float4 in_var_TEXCOORD0_0 [[attribute(3)]];
    float4 in_var_TEXCOORD4 [[attribute(4)]];
    uint in_var_PRIMITIVE_ID [[attribute(5)]];
    uint in_var_LIGHTMAP_ID [[attribute(6)]];
    float4 in_var_VS_To_DS_Position [[attribute(7)]];
};

kernel void main0(main0_in in [[stage_in]], constant type_View& View [[buffer(0)]], const device type_StructuredBuffer_v4float& View_PrimitiveSceneData [[buffer(1)]], uint gl_InvocationID [[thread_index_in_threadgroup]], uint gl_PrimitiveID [[threadgroup_position_in_grid]], device main0_out* spvOut [[buffer(28)]], constant uint* spvIndirectParams [[buffer(29)]], device main0_patchOut* spvPatchOut [[buffer(27)]], device MTLTriangleTessellationFactorsHalf* spvTessLevel [[buffer(26)]], threadgroup main0_in* gl_in [[threadgroup(0)]])
{
    threadgroup FPNTessellationHSToDS temp_var_hullMainRetVal[3];
    spvUnsafeArray<spvUnsafeArray<float4, 12>, 1> in_var_TEXCOORD0 = {};
    device main0_out* gl_out = &spvOut[gl_PrimitiveID * 3];
    device main0_patchOut& patchOut = spvPatchOut[gl_PrimitiveID];
    if (gl_InvocationID < spvIndirectParams[0])
        gl_in[gl_InvocationID] = in;
    threadgroup_barrier(mem_flags::mem_threadgroup);
    if (gl_InvocationID >= 3)
        return;
    spvUnsafeArray<FBasePassVSToDS, 12> _282 = { FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[0].in_var_TEXCOORD10_centroid, gl_in[0].in_var_TEXCOORD11_centroid, gl_in[0].in_var_COLOR0, { gl_in[0].in_var_TEXCOORD0_0 }, gl_in[0].in_var_TEXCOORD4, gl_in[0].in_var_PRIMITIVE_ID, gl_in[0].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[0].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[1].in_var_TEXCOORD10_centroid, gl_in[1].in_var_TEXCOORD11_centroid, gl_in[1].in_var_COLOR0, { gl_in[1].in_var_TEXCOORD0_0 }, gl_in[1].in_var_TEXCOORD4, gl_in[1].in_var_PRIMITIVE_ID, gl_in[1].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[1].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[2].in_var_TEXCOORD10_centroid, gl_in[2].in_var_TEXCOORD11_centroid, gl_in[2].in_var_COLOR0, { gl_in[2].in_var_TEXCOORD0_0 }, gl_in[2].in_var_TEXCOORD4, gl_in[2].in_var_PRIMITIVE_ID, gl_in[2].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[2].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[3].in_var_TEXCOORD10_centroid, gl_in[3].in_var_TEXCOORD11_centroid, gl_in[3].in_var_COLOR0, { gl_in[3].in_var_TEXCOORD0_0 }, gl_in[3].in_var_TEXCOORD4, gl_in[3].in_var_PRIMITIVE_ID, gl_in[3].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[3].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[4].in_var_TEXCOORD10_centroid, gl_in[4].in_var_TEXCOORD11_centroid, gl_in[4].in_var_COLOR0, { gl_in[4].in_var_TEXCOORD0_0 }, gl_in[4].in_var_TEXCOORD4, gl_in[4].in_var_PRIMITIVE_ID, gl_in[4].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[4].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[5].in_var_TEXCOORD10_centroid, gl_in[5].in_var_TEXCOORD11_centroid, gl_in[5].in_var_COLOR0, { gl_in[5].in_var_TEXCOORD0_0 }, gl_in[5].in_var_TEXCOORD4, gl_in[5].in_var_PRIMITIVE_ID, gl_in[5].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[5].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[6].in_var_TEXCOORD10_centroid, gl_in[6].in_var_TEXCOORD11_centroid, gl_in[6].in_var_COLOR0, { gl_in[6].in_var_TEXCOORD0_0 }, gl_in[6].in_var_TEXCOORD4, gl_in[6].in_var_PRIMITIVE_ID, gl_in[6].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[6].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[7].in_var_TEXCOORD10_centroid, gl_in[7].in_var_TEXCOORD11_centroid, gl_in[7].in_var_COLOR0, { gl_in[7].in_var_TEXCOORD0_0 }, gl_in[7].in_var_TEXCOORD4, gl_in[7].in_var_PRIMITIVE_ID, gl_in[7].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[7].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[8].in_var_TEXCOORD10_centroid, gl_in[8].in_var_TEXCOORD11_centroid, gl_in[8].in_var_COLOR0, { gl_in[8].in_var_TEXCOORD0_0 }, gl_in[8].in_var_TEXCOORD4, gl_in[8].in_var_PRIMITIVE_ID, gl_in[8].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[8].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[9].in_var_TEXCOORD10_centroid, gl_in[9].in_var_TEXCOORD11_centroid, gl_in[9].in_var_COLOR0, { gl_in[9].in_var_TEXCOORD0_0 }, gl_in[9].in_var_TEXCOORD4, gl_in[9].in_var_PRIMITIVE_ID, gl_in[9].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[9].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[10].in_var_TEXCOORD10_centroid, gl_in[10].in_var_TEXCOORD11_centroid, gl_in[10].in_var_COLOR0, { gl_in[10].in_var_TEXCOORD0_0 }, gl_in[10].in_var_TEXCOORD4, gl_in[10].in_var_PRIMITIVE_ID, gl_in[10].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[10].in_var_VS_To_DS_Position }, FBasePassVSToDS{ FVertexFactoryInterpolantsVSToDS{ FVertexFactoryInterpolantsVSToPS{ gl_in[11].in_var_TEXCOORD10_centroid, gl_in[11].in_var_TEXCOORD11_centroid, gl_in[11].in_var_COLOR0, { gl_in[11].in_var_TEXCOORD0_0 }, gl_in[11].in_var_TEXCOORD4, gl_in[11].in_var_PRIMITIVE_ID, gl_in[11].in_var_LIGHTMAP_ID } }, FBasePassInterpolantsVSToDS{ { } }, gl_in[11].in_var_VS_To_DS_Position } };
    spvUnsafeArray<FBasePassVSToDS, 12> param_var_I;
    param_var_I = _282;
    float4 _299 = float4(param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz, 0.0);
    float3 _308 = View_PrimitiveSceneData._m0[(param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.PrimitiveId * 26u) + 22u].xyz * float3x3(param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld0.xyz, cross(param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz, param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld0.xyz) * float3(param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.w), param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz);
    uint _311 = (gl_InvocationID < 2u) ? (gl_InvocationID + 1u) : 0u;
    uint _312 = 2u * gl_InvocationID;
    uint _313 = 3u + _312;
    uint _314 = _312 + 4u;
    float4 _326 = float4(param_var_I[_311].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz, 0.0);
    float4 _334 = float4(param_var_I[_313].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz, 0.0);
    float4 _342 = float4(param_var_I[_314].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2.xyz, 0.0);
    spvUnsafeArray<float4, 3> _390 = { param_var_I[gl_InvocationID].Position, (((((float4(2.0) * param_var_I[gl_InvocationID].Position) + param_var_I[_311].Position) - (float4(dot(param_var_I[_311].Position - param_var_I[gl_InvocationID].Position, _299)) * _299)) * float4(0.3333333432674407958984375)) + ((((float4(2.0) * param_var_I[_313].Position) + param_var_I[_314].Position) - (float4(dot(param_var_I[_314].Position - param_var_I[_313].Position, _334)) * _334)) * float4(0.3333333432674407958984375))) * float4(0.5), (((((float4(2.0) * param_var_I[_311].Position) + param_var_I[gl_InvocationID].Position) - (float4(dot(param_var_I[gl_InvocationID].Position - param_var_I[_311].Position, _326)) * _326)) * float4(0.3333333432674407958984375)) + ((((float4(2.0) * param_var_I[_314].Position) + param_var_I[_313].Position) - (float4(dot(param_var_I[_313].Position - param_var_I[_314].Position, _342)) * _342)) * float4(0.3333333432674407958984375))) * float4(0.5) };
    gl_out[gl_InvocationID].out_var_TEXCOORD10_centroid = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld0;
    gl_out[gl_InvocationID].out_var_TEXCOORD11_centroid = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TangentToWorld2;
    gl_out[gl_InvocationID].out_var_COLOR0 = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.Color;
    gl_out[gl_InvocationID].out_var_TEXCOORD0 = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.TexCoords;
    gl_out[gl_InvocationID].out_var_TEXCOORD4 = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.LightMapCoordinate;
    gl_out[gl_InvocationID].out_var_PRIMITIVE_ID = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.PrimitiveId;
    gl_out[gl_InvocationID].out_var_LIGHTMAP_ID = param_var_I[gl_InvocationID].FactoryInterpolants.InterpolantsVSToPS.LightmapDataIndex;
    gl_out[gl_InvocationID].out_var_VS_To_DS_Position = param_var_I[gl_InvocationID].Position;
    gl_out[gl_InvocationID].out_var_PN_POSITION = _390;
    gl_out[gl_InvocationID].out_var_PN_DisplacementScales = _308;
    gl_out[gl_InvocationID].out_var_PN_TessellationMultiplier = 1.0;
    gl_out[gl_InvocationID].out_var_PN_WorldDisplacementMultiplier = 1.0;
    temp_var_hullMainRetVal[gl_InvocationID] = FPNTessellationHSToDS{ param_var_I[gl_InvocationID], _390, _308, 1.0, 1.0 };
    threadgroup_barrier(mem_flags::mem_device | mem_flags::mem_threadgroup);
    if (gl_InvocationID == 0u)
    {
        float4 _448 = (((((temp_var_hullMainRetVal[0u].WorldPosition[1] + temp_var_hullMainRetVal[0u].WorldPosition[2]) + temp_var_hullMainRetVal[1u].WorldPosition[1]) + temp_var_hullMainRetVal[1u].WorldPosition[2]) + temp_var_hullMainRetVal[2u].WorldPosition[1]) + temp_var_hullMainRetVal[2u].WorldPosition[2]) * float4(0.16666667163372039794921875);
        float4 _461 = _598;
        _461.x = 0.5 * (temp_var_hullMainRetVal[1u].TessellationMultiplier + temp_var_hullMainRetVal[2u].TessellationMultiplier);
        float4 _467 = _461;
        _467.y = 0.5 * (temp_var_hullMainRetVal[2u].TessellationMultiplier + temp_var_hullMainRetVal[0u].TessellationMultiplier);
        float4 _472 = _467;
        _472.z = 0.5 * (temp_var_hullMainRetVal[0u].TessellationMultiplier + temp_var_hullMainRetVal[1u].TessellationMultiplier);
        float4 _479 = _472;
        _479.w = 0.333000004291534423828125 * ((temp_var_hullMainRetVal[0u].TessellationMultiplier + temp_var_hullMainRetVal[1u].TessellationMultiplier) + temp_var_hullMainRetVal[2u].TessellationMultiplier);
        float4 _587;
        for (;;)
        {
            float4 _487 = View.View_ViewToClip * float4(0.0);
            float4 _492 = View.View_TranslatedWorldToClip * float4(temp_var_hullMainRetVal[0u].WorldPosition[0].xyz, 1.0);
            float3 _493 = _492.xyz;
            float3 _494 = _487.xyz;
            float _496 = _492.w;
            float _497 = _487.w;
            float4 _514 = View.View_TranslatedWorldToClip * float4(temp_var_hullMainRetVal[1u].WorldPosition[0].xyz, 1.0);
            float3 _515 = _514.xyz;
            float _517 = _514.w;
            float4 _535 = View.View_TranslatedWorldToClip * float4(temp_var_hullMainRetVal[2u].WorldPosition[0].xyz, 1.0);
            float3 _536 = _535.xyz;
            float _538 = _535.w;
            if (any((((select(int3(0), int3(1), (_493 - _494) < float3(_496 + _497)) + (int3(2) * select(int3(0), int3(1), (_493 + _494) > float3((-_496) - _497)))) | (select(int3(0), int3(1), (_515 - _494) < float3(_517 + _497)) + (int3(2) * select(int3(0), int3(1), (_515 + _494) > float3((-_517) - _497))))) | (select(int3(0), int3(1), (_536 - _494) < float3(_538 + _497)) + (int3(2) * select(int3(0), int3(1), (_536 + _494) > float3((-_538) - _497))))) != int3(3)))
            {
                _587 = float4(0.0);
                break;
            }
            float3 _556 = temp_var_hullMainRetVal[0u].WorldPosition[0].xyz - temp_var_hullMainRetVal[1u].WorldPosition[0].xyz;
            float3 _557 = temp_var_hullMainRetVal[1u].WorldPosition[0].xyz - temp_var_hullMainRetVal[2u].WorldPosition[0].xyz;
            float3 _558 = temp_var_hullMainRetVal[2u].WorldPosition[0].xyz - temp_var_hullMainRetVal[0u].WorldPosition[0].xyz;
            float3 _561 = (float3(0.5) * (temp_var_hullMainRetVal[0u].WorldPosition[0].xyz + temp_var_hullMainRetVal[1u].WorldPosition[0].xyz)) - float3(View.View_TranslatedWorldCameraOrigin);
            float3 _564 = (float3(0.5) * (temp_var_hullMainRetVal[1u].WorldPosition[0].xyz + temp_var_hullMainRetVal[2u].WorldPosition[0].xyz)) - float3(View.View_TranslatedWorldCameraOrigin);
            float3 _567 = (float3(0.5) * (temp_var_hullMainRetVal[2u].WorldPosition[0].xyz + temp_var_hullMainRetVal[0u].WorldPosition[0].xyz)) - float3(View.View_TranslatedWorldCameraOrigin);
            float _571 = sqrt(dot(_557, _557) / dot(_564, _564));
            float _575 = sqrt(dot(_558, _558) / dot(_567, _567));
            float _579 = sqrt(dot(_556, _556) / dot(_561, _561));
            float4 _584 = float4(_571, _575, _579, 1.0);
            _584.w = 0.333000004291534423828125 * ((_571 + _575) + _579);
            _587 = float4(View.View_AdaptiveTessellationFactor) * _584;
            break;
        }
        float4 _589 = fast::clamp(_479 * _587, float4(1.0), float4(15.0));
        spvTessLevel[gl_PrimitiveID].edgeTessellationFactor[0u] = half(_589.x);
        spvTessLevel[gl_PrimitiveID].edgeTessellationFactor[1u] = half(_589.y);
        spvTessLevel[gl_PrimitiveID].edgeTessellationFactor[2u] = half(_589.z);
        spvTessLevel[gl_PrimitiveID].insideTessellationFactor = half(_589.w);
        patchOut.out_var_PN_POSITION9 = _448 + ((_448 - (((temp_var_hullMainRetVal[2u].WorldPosition[0] + temp_var_hullMainRetVal[1u].WorldPosition[0]) + temp_var_hullMainRetVal[0u].WorldPosition[0]) * float4(0.3333333432674407958984375))) * float4(0.5));
    }
}

