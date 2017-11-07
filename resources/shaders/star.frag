#version 150
#extension GL_ARB_explicit_attrib_location : require

in vec3 pass_color;

out vec4 out_Color;

void main ()
{
	out_Color = vec4(pass_color, 1.0);
}

//Brauchts das überhaupt?
