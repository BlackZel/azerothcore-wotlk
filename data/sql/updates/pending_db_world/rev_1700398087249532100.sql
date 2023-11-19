-- Update gameobject 181021 'Hanging, Door - Val' with sniffed values
-- updated spawns
DELETE FROM `gameobject` WHERE (`id` = 181021) AND (`guid` IN (50650, 50651, 50652, 50653, 50654, 50655, 50656, 50657, 50658, 50659, 50660, 50661, 50662, 50663, 50664, 50665, 50666, 50667, 50668, 50669, 50670, 50671, 50672, 50673, 50674));
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(50650, 181021, 1, 0, 0, 1, 1, -1277.654052734375, 49.86848831176757812, 144.23760986328125, 0.558503925800323486, 0, 0, 0.275636672973632812, 0.961261868476867675, 120, 255, 1, "", 50172, NULL),
(50651, 181021, 1, 0, 0, 1, 1, 1381.4930419921875, -4369.798828125, 52.83467483520507812, 3.281238555908203125, 0, 0, -0.99756336212158203, 0.069766148924827575, 120, 255, 1, "", 50063, NULL),
(50652, 181021, 1, 0, 0, 1, 1, 1661.5504150390625, -4344.4755859375, 75.47270965576171875, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, "", 50063, NULL),
(50653, 181021, 1, 0, 0, 1, 1, 1687.4322509765625, -4340.11474609375, 75.1774444580078125, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, "", 50063, NULL),
(50654, 181021, 1, 0, 0, 1, 1, 1659.8177490234375, -4329.04150390625, 75.46154022216796875, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, "", 50172, NULL),
(50655, 181021, 1, 0, 0, 1, 1, 1484.8697509765625, -4416.72216796875, 53.41733169555664062, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, "", 50063, NULL),
(50656, 181021, 1, 0, 0, 1, 1, 1706.765625, -3929.7119140625, 72.11273193359375, 5.270895957946777343, 0, 0, -0.48480892181396484, 0.87462007999420166, 120, 255, 1, "", 50063, NULL),
(50657, 181021, 1, 0, 0, 1, 1, 9892.4033203125, 2238.71923828125, 1343.6077880859375, 6.195919513702392578, 0, 0, -0.04361915588378906, 0.999048233032226562, 120, 255, 1, "", 50063, NULL),
(50658, 181021, 1, 0, 0, 1, 1, 9985.9443359375, 1978.33984375, 1352.1419677734375, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, "", 50063, NULL),
(50659, 181021, 1, 0, 0, 1, 1, 9986.2841796875, 2022.8958740234375, 1351.8372802734375, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291, 120, 255, 1, "", 50063, NULL),
(50660, 181021, 1, 0, 0, 1, 1, 10013.5576171875, 2242.083251953125, 1343.91455078125, 3.24634718894958496, 0, 0, -0.99862861633300781, 0.052353221923112869, 120, 255, 1, "", 50063, NULL),
(50661, 181021, 1, 0, 0, 1, 1, 10013.978515625, 2226.739501953125, 1343.6868896484375, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, "", 50063, NULL),
(50662, 181021, 1, 0, 0, 1, 1, 10014.4228515625, 2211.135498046875, 1343.829345703125, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 120, 255, 1, "", 50063, NULL),
(50663, 181021, 0, 0, 0, 1, 1, -4994.7783203125, -847.123291015625, 524.5223388671875, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 120, 255, 1, "", 50063, NULL),
(50664, 181021, 0, 0, 0, 1, 1, -5003.3349609375, -874.71356201171875, 524.83770751953125, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 120, 255, 1, "", 50063, NULL),
(50665, 181021, 0, 0, 0, 1, 1, -4974.6494140625, -871.54168701171875, 524.52850341796875, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249, 120, 255, 1, "", 50063, NULL),
(50666, 181021, 0, 0, 0, 1, 1, -4984.7099609375, -859.3367919921875, 524.798828125, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 120, 255, 1, "", 50063, NULL),
(50667, 181021, 0, 0, 0, 1, 1, -4993.27783203125, -886.91668701171875, 524.600341796875, 0.680676698684692382, 0, 0, 0.333806037902832031, 0.942641794681549072, 120, 255, 1, "", 50063, NULL),
(50668, 181021, 1, 0, 0, 1, 1, 1672.8819580078125, -4320.47900390625, 75.21210479736328125, 1.640606880187988281, 0, 0, 0.731352806091308593, 0.6819993257522583, 120, 255, 1, "", 50063, NULL),
(50669, 181021, 1, 0, 0, 1, 1, 1685.8541259765625, -4327.4306640625, 75.085235595703125, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 120, 255, 1, "", 50063, NULL),
(50670, 181021, 1, 0, 0, 1, 1, 9893.3642578125, 2207.5390625, 1343.7637939453125, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876, 120, 255, 1, "", 50063, NULL),
(50671, 181021, 1, 0, 0, 1, 1, 9892.5947265625, 2223.509521484375, 1343.6256103515625, 0.017452461645007133, 0, 0, 0.008726119995117187, 0.999961912631988525, 120, 255, 1, "", 50063, NULL),
(50672, 181021, 0, 0, 0, 1, 1, -4641.595703125, -1178.900634765625, 515.0255126953125, 4.223697185516357421, 0, 0, -0.85716724395751953, 0.515038192272186279, 120, 255, 1, "", 50063, NULL),
(50673, 181021, 0, 0, 0, 1, 1, -5013.38916015625, -862.51910400390625, 524.67938232421875, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 120, 255, 1, "", 50063, NULL),
(50674, 181021, 0, 0, 0, 1, 1, -4634.705078125, -1025.5736083984375, 514.93280029296875, 1.675513744354248046, 0, 0, 0.743144035339355468, 0.669131457805633544, 120, 255, 1, "", 50063, NULL);

DELETE FROM `game_event_gameobject` WHERE (`eventEntry` = 1) AND (`guid` IN (50650, 50651, 50652, 50653, 50654, 50655, 50656, 50657, 50658, 50659, 50660, 50661, 50662, 50663, 50664, 50665, 50666, 50667, 50668, 50669, 50670, 50671, 50672, 50673, 50674));
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(1, 50650),
(1, 50651),
(1, 50652),
(1, 50653),
(1, 50654),
(1, 50655),
(1, 50656),
(1, 50657),
(1, 50658),
(1, 50659),
(1, 50660),
(1, 50661),
(1, 50662),
(1, 50663),
(1, 50664),
(1, 50665),
(1, 50666),
(1, 50667),
(1, 50668),
(1, 50669),
(1, 50670),
(1, 50671),
(1, 50672),
(1, 50673),
(1, 50674);

-- remove duplicate spawns
DELETE FROM `gameobject` WHERE (`id` = 181021) AND (`guid` IN (241160, 4771, 241243, 5051, 241132, 241130, 241139, 241133, 241189, 241134, 241855, 241668, 241666, 241640, 241906, 241879, 241874, 241882, 241877, 241881, 241876, 241892, 241639, 241662, 241667, 241636, 241644));
DELETE FROM `game_event_gameobject` WHERE (`guid` IN (241160, 4771, 241243, 5051, 241132, 241130, 241139, 241133, 241189, 241134, 241855, 241668, 241666, 241640, 241906, 241879, 241874, 241882, 241877, 241881, 241876, 241892, 241639, 241662, 241667, 241636, 241644));

-- these duplicates were (wrongly) static spawned or assigned to event 8 - 'Love is in the Air'
-- so we now use the updated spawns for event 8, too
DELETE FROM `game_event_gameobject` WHERE (`eventEntry` = 8) AND (`guid` IN (50650, 50651, 50652, 50653, 50654, 50655, 50656, 50657, 50658, 50659, 50660, 50661, 50662, 50663, 50664, 50665, 50666, 50667, 50668, 50669, 50670, 50671, 50672, 50673, 50674));
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(8, 50650),
(8, 50651),
(8, 50652),
(8, 50653),
(8, 50654),
(8, 50655),
(8, 50656),
(8, 50657),
(8, 50658),
(8, 50659),
(8, 50660),
(8, 50661),
(8, 50662),
(8, 50663),
(8, 50664),
(8, 50665),
(8, 50666),
(8, 50667),
(8, 50668),
(8, 50669),
(8, 50670),
(8, 50671),
(8, 50672),
(8, 50673),
(8, 50674);
