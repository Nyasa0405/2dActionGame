#ifndef CUSTOM_LIGHTING_INCLUDED
#define CUSTOM_LIGHTING_INCLUDED


void GetMainLightDirection_float (out float3 Direction)
{

#ifdef SHADERGRAPH_PREVIEW
  Direction = half3(0.5, 0.5, 0);
    
#else 
    Light light = GetMainLight(0);
    Direction = light.direction;
   
#endif
}
#endif
