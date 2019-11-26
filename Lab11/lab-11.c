
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

static int c_swap(lua_State *l)
{
  double a = luaL_checknumber(l, 1);
  double b = luaL_checknumber(l, 2);
  
  lua_pushnumber(l, b);
  lua_pushnumber(l, a);

  return 2;
 }

static int c_sum(lua_State *l)
{
  double a = luaL_checknumber(l, 1);
  double b = luaL_checknumber(l, 2);

  lua_pushnumber(l,a*b);
  
  return 1;
}

static const struct luaL_Reg list[] =
{
  {"lua_swap", c_swap},
  {"lua_sum", c_sum},
  {NULL, NULL}
};


int luaopen_lab_11_lib(lua_State *l)
{
  luaL_newlib(l, list);
  return 1;
}
