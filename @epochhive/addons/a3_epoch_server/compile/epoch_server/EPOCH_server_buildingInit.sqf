_this addMPEventHandler["MPKilled", { _this call EPOCH_server_save_killedBuilding; }];
// _this addMPEventHandler["MPHit", { if !((_this select 0) in EPOCH_saveBldQueue) then { EPOCH_saveBldQueue pushBack(_this select 0) } }];