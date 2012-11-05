#version 420 core

#define POSITION		0
#define COLOR			3
#define TEXCOORD		4
#define FRAG_COLOR		0

layout(triangles, invocations = 1) in;
layout(triangle_strip, max_vertices = 4) out;

in gl_PerVertex
{
	vec4 gl_Position;
} gl_in[];

in vec4 EvalColor[];

out gl_PerVertex
{
	vec4 gl_Position;
};

out vec4 GeomColor;

void main()
{	
	for(int i = 0; i < gl_in.length(); ++i)
	{
		gl_Position = gl_in[i].gl_Position;
		GeomColor = EvalColor[i];
		EmitVertex();
	}
	EndPrimitive();
}

