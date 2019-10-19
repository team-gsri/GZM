// RemoteExec on server only
if(!isServer) exitWith {};

_players = [];
{_players pushBack (name _x)} forEach allPlayers;

["List of Zeus allowed players :"] remoteExec ["systemChat", remoteExecutedOwner];
{
	_line = format ["   %1 (%2)", (_x select 0), ["offline", "ONLINE"] select ((_x select 0) in _players)];
	[_line] remoteExec ["systemChat", remoteExecutedOwner];
} forEach GZM_ZEUS_WHITELIST;