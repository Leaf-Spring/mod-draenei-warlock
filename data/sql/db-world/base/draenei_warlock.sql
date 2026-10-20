-- ===========================================================
-- Parche Base acore_world: Draenei Warlock (Raza 11 / Clase 9)
-- ===========================================================

-- 1. Posición e información de inicio (Isla Bruma Azur)
DELETE FROM `playercreateinfo` WHERE `race` = 11 AND `class` = 9;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`)
SELECT 11, 9, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`
FROM `playercreateinfo` WHERE `race` = 11 AND `class` = 1 LIMIT 1;

-- 2. Barras de acción iniciales (Copiadas de Brujo - Gnomo, raza 7 clase 9)
DELETE FROM `playercreateinfo_action` WHERE `race` = 11 AND `class` = 9;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`)
SELECT 11, 9, `button`, `action`, `type`
FROM `playercreateinfo_action`
WHERE `race` = 7 AND `class` = 9;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(11, 9, 3, 59547, 0);