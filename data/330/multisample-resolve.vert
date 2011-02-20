#version 330 core

// Declare all the semantics
#define ATTR_POSITION	0
#define ATTR_COLOR		3
#define ATTR_TEXCOORD	4
#define VERT_POSITION	0
#define VERT_COLOR		3
#define VERT_TEXCOORD	4
#define VERT_INSTANCE	7
#define FRAG_COLOR		0
#define FRAG_RED		0
#define FRAG_GREEN		1
#define FRAG_BLUE		2
#define FRAG_ALPHA		3

layout(location = ATTR_POSITION) in vec4 Position;

out vert
{
	vec2 Texcoord;
} Vert;

void main(){	
	gl_Position = Position;
	Vert.Texcoord = (Position.xy + vec2(1.0))*0.5;
}

