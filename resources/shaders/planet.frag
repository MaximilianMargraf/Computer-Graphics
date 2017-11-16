#version 150

in vec3 pass_Normal;

//in vec4 gl_Position;
in vec4 gl_FragCoord;
in vec4 sunPosition;

out vec4 out_Color;

//Light source
//const vec4 sunPosition = vec4(0.0, 0.0, 0.0, 1.0);

//indirect light incoming 
const vec3 ambientColor = vec3(0.1, 0.1, 0.1);

//diffusely reflected light
const vec3 diffuseColor = vec3(0.5, 0.5, 0.5);

//Reflection of Light to viewer
const vec3 specColor = vec3(1.0, 1.0, 1.0);


const float shininess = 12.0;
//const float screenGamma = 2.2;

void main()
{	//normalize for dot product n stuff
	vec3 normal = normalize(pass_Normal);

	//Vector between FragCoord and SunPosition
	vec3 lightDir = normalize((gl_FragCoord - sunPosition).xyz);

	//lambertian reflectance
	float lambertian = max(dot(lightDir, normal), 0.0);

	//specular highlight decay
	float specular = 0.0;

	if(lambertian > 0.0)
	{
    	vec3 viewDir = normalize(-gl_FragCoord).xyz;
    	vec3 halfDir = normalize(lightDir + viewDir);
    	float specAngle = max(dot(halfDir, normal), 0.0);
    	specular = pow(specAngle, shininess/4.0); 
	}
  
  	vec3 colorLinear = ambientColor + lambertian * diffuseColor + specular * specColor;

  	out_Color = vec4(colorLinear, 1.0);
}