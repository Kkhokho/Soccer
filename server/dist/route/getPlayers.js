"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const getAllPlayers_1 = require("../controller/player/getAllPlayers");
const getPlayerByName_1 = require("../controller/player/getPlayerByName");
const get_player_info_1 = require("../controller/player/get_player_info");
const route = (0, express_1.Router)();
route.get("/allPlayer", getAllPlayers_1.getAllPlayer);
route.post("/getPlayerByName", getPlayerByName_1.getPlayerByName);
route.post("/get_player_info", get_player_info_1.get_player_info);
exports.default = route;