#pragma once

#include "Renderer.h"

class Texture
{
private:
	unsigned int m_RendererID;
	std::string m_Filepath;
	unsigned char* m_LocalBuffer;
	int m_Width, m_Height, m_BPP;//Bytes per pixel
public:
	Texture(const std::string& path);
	~Texture();

	void Bind(unsigned int slot = 0) const;//Optional param, if none -> 0
	void Unbind() const;
	
	inline int GetWidth() const { return m_Width; }
	inline int GetHeight() const { return m_Height; }
};