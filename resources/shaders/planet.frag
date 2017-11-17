#version 150

in vec3 pass_WorldNormal;
in vec3 pass_vertPos;

out vec4 out_Color;

//Blinn-Phong / Cel
//uniform int mode;

//Light source
const vec3 sunPosition = vec3(0.0, 0.0, 0.0);

//indirect light incoming 
const vec3 ambientColor = vec3(0.5, 0.5, 0.5);

//diffusely reflected light
const vec3 diffuseColor = vec3(0.5, 0.5, 0.5);

//Reflection of Light to viewer
const vec3 specColor = vec3(1.0, 0.9, 0.5);

//Shininess, woooohoooo
const float shininess = 5.0;

//
//const float screenGamma = 2.2;

void main()
{	//normalize for dot product n stuff
	vec3 normal = normalize(pass_WorldNormal);

	//Vector between FragCoord and SunPosition
	vec3 lightDir = normalize(sunPosition - pass_vertPos);

	//lambertian reflectance
	float lambertian = max(dot(lightDir, normal), 0.0);

	//specular highlight decay
	float specular = 0.0;

	if(lambertian > 0.0)
	{
    	vec3 viewDir = normalize(-pass_vertPos);

    	//Blinn-Phong Shading
    	//if ( mode == 1)
    	//{
    		vec3 halfDir = normalize(lightDir + viewDir);
    		float specAngle = max(dot(halfDir, normal), 0.0);
    		specular = pow(specAngle, shininess);
    	//}

    	//Cel Shading
    	//if (mode == 2)
    	//{



    	//}
	}
  	vec3 colorLinear = ambientColor + lambertian * diffuseColor + specular * specColor;

  	out_Color = vec4(colorLinear, 1.0);
}