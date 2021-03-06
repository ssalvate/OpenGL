#shader vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 texCoord;

out vec2 v_TexCoord;//Texture coordinates out from vertex coord, 'vary'
uniform mat4 u_MVP;

void main()
{
	//OpenGl applies this PVM 'cause column major order, D11 is row major etc
	gl_Position = u_MVP * position;
	v_TexCoord = texCoord;
};


#shader fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec2 v_TexCoord;//Received from vertex shader

//uniform vec4 u_Color;
uniform sampler2D u_Texture;

void main()
{
	vec4 texColor = texture(u_Texture, v_TexCoord); // * u_Color;//
    color = texColor;
};