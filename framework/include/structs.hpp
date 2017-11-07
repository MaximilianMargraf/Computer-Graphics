#ifndef STRUCTS_HPP
#define STRUCTS_HPP

#include <map>
#include <glbinding/gl/gl.h>
#include <glm/vec3.hpp>
// use gl definitions from glbinding 
using namespace gl;

// gpu representation of model
struct model_object {
  // vertex array object
  GLuint vertex_AO = 0;
  // vertex buffer object
  GLuint vertex_BO = 0;
  // index buffer object
  GLuint element_BO = 0;
  // primitive type to draw
  GLenum draw_mode = GL_NONE;
  // indices number, if EBO exists
  GLsizei num_elements = 0;
};

// gpu representation of texture
struct texture_object {
  // handle of texture object
  GLuint handle = 0;
  // binding point
  GLenum target = GL_NONE;
};

// shader handle and uniform storage
struct shader_program {
  shader_program(std::string const& vertex, std::string const& fragment)
   :vertex_path{vertex}
   ,fragment_path{fragment}
   ,handle{0}
   {}

  // path to shader source
  std::string vertex_path; 
  std::string fragment_path; 
  // object handle
  GLuint handle;
  // uniform locations mapped to name
  std::map<std::string, GLint> u_locs{};
};

//struct for the planets
struct planet {
  planet(float const& size, float const& rot_speed, float const& dis_to_origin)
    :m_size{size},
    m_rot_speed{rot_speed},
    m_dis_to_origin{dis_to_origin}
    {}

  float m_size;
  float m_rot_speed;
  float m_dis_to_origin;
};

//struct for the satellites/moons with given father planet
struct satellite {
  satellite(planet const& father, float const& size, float const& rot_speed, float const& dis_to_father)
    :m_father{father},
    m_size{size},
    m_rot_speed{rot_speed},
    m_dis_to_father{dis_to_father}
    {}

  planet m_father;
  float m_size;
  float m_rot_speed;
  float m_dis_to_father;
};

/* 
struct star{
  star():
  position{rand_coord(), rand_coord(), rand_coord()},
  color{rand_col(), rand_col(), rand_col()}
  {}

  glm::vec3 position;
  glm::vec3 color;

  float rand_coord(){
    float r = -50 + static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/100));
    return r;
  }

  float rand_col(){
    float r = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/255));
    return r;
  }
};
*/
#endif
