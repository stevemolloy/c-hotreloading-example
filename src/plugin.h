#ifndef _PLUGIN_H
#define _PLUGIN_H

#include "raylib.h"

typedef struct {
  int fontsize;
  Font font;
} PlugState;

typedef void (*plug_frame_update_t)(PlugState state);

typedef struct {
  plug_frame_update_t plug_frame_update;
} Plug;

#endif // !_PLUGIN_H

