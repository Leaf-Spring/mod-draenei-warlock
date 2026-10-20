#include "ScriptMgr.h"

// Clase base vacía para registrar el módulo en el emulador
class mod_draenei_warlock : public PlayerScript {
public:
    mod_draenei_warlock() : PlayerScript("mod_draenei_warlock") {}
};

// Función de carga requerida por AzerothCore
void Addmod_draenei_warlockScripts() {
    new mod_draenei_warlock();
}