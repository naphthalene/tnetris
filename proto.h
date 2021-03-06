ExtFunc void MapKeys(char *newKeys);
ExtFunc int StartNewPiece(int scr, Shape *shape);
ExtFunc void OneGame(int scr, int scr2);
ExtFunc int main(int argc, char **argv);
ExtFunc void InitScreens(void);
ExtFunc void CleanupScreens(void);
ExtFunc void GetTermcapInfo(void);
ExtFunc void OutputTermStr(char *str, int flush);
ExtFunc void InitScreen(int scr);
ExtFunc void CleanupScreen(int scr);
ExtFunc void PlotBlock(int scr, int y, int x, BlockType type);
ExtFunc void PlotUnderline(int scr, int x, int flag);
ExtFunc void ShowDisplayInfo(void);
ExtFunc void UpdateOpponentDisplay(void);
ExtFunc void ShowPause(int pausedByMe, int pausedByThem);
ExtFunc void Message(char *s);
ExtFunc void RefreshScreen(void);
ExtFunc void ScheduleFullRedraw(void);
ExtFunc void MoveInDir(Dir dir, int dist, int *y, int *x);
ExtFunc Dir RotateDir(Dir dir, int delta);
ExtFunc int ShapeIterate(Shape *s, int scr, int y, int x, int falling,
ExtFunc				ShapeDrawFunc func, void *data);
ExtFunc Shape *ChooseOption(ShapeOption *options);
ExtFunc short ShapeToNetNum(Shape *shape);
ExtFunc Shape *NetNumToShape(short num);
ExtFunc void InitBoard(int scr);
ExtFunc void CleanupBoard(int scr);
ExtFunc BlockType GetBlock(int scr, int y, int x);
ExtFunc void SetBlock(int scr, int y, int x, BlockType type);
ExtFunc int RefreshBoard(int scr);
ExtFunc int PlotFunc(int scr, int y, int x, BlockType type, void *data);
ExtFunc int EraseFunc(int scr, int y, int x, BlockType type, void *data);
ExtFunc int CollisionFunc(int scr, int y, int x, BlockType type, void *data);
ExtFunc int VisibleFunc(int scr, int y, int x, BlockType type, void *data);
ExtFunc void PlotShape(Shape *shape, int scr, int y, int x, int falling);
ExtFunc void EraseShape(Shape *shape, int scr, int y, int x);
ExtFunc int ShapeFits(Shape *shape, int scr, int y, int x);
ExtFunc int ShapeVisible(Shape *shape, int scr, int y, int x);
ExtFunc int MovePiece(int scr, int deltaY, int deltaX);
ExtFunc int RotatePiece(int scr);
ExtFunc int DropPiece(int scr);
ExtFunc int LineIsFull(int scr, int y);
ExtFunc void CopyLine(int scr, int from, int to);
ExtFunc int ClearFullLines(int scr);
ExtFunc void FreezePiece(int scr);
ExtFunc void InsertJunk(int scr, int count, int column);
ExtFunc void InitUtil(void);
ExtFunc void ResetBaseTime(void);
ExtFunc void AtExit(void (*handler)(void));
ExtFunc void Usage(void);
ExtFunc void DistInfo(void);
ExtFunc void Rules(void);
ExtFunc void SRandom(int seed);
ExtFunc int Random(int min, int max1);
ExtFunc int MyRead(int fd, void *data, int len);
ExtFunc int MyWrite(int fd, void *data, int len);
ExtFunc void NormalizeTime(struct timeval *tv);
ExtFunc void CatchInt(int sig);
ExtFunc void CatchAlarm(int sig);
ExtFunc long CurTimeval(void);
ExtFunc void SetTimeval(struct timeval *tv, long usec);
ExtFunc long GetTimeval(struct timeval *tv);
ExtFunc long SetITimer(long interval, long value);
ExtFunc volatile void die(char *msg);
ExtFunc volatile void fatal(char *msg);
ExtFunc void BlockSignals(MySigSet *saved, ...);
ExtFunc void RestoreSignals(MySigSet *saved, MySigSet *set);
ExtFunc void AddEventGen(EventGenRec *gen);
ExtFunc void RemoveEventGen(EventGenRec *gen);
ExtFunc MyEventType WaitMyEvent(MyEvent *event, int mask);
ExtFunc void InitNet(void);
ExtFunc int WaitForConnection(char *portStr);
ExtFunc int InitiateConnection(char *hostStr, char *portStr);
ExtFunc void CheckNetConn(void);
ExtFunc void SendPacket(NetPacketType type, int size, void *data);
ExtFunc void CloseNet(void);
ExtFunc void InitRobot(char *robotProg);
ExtFunc void CatchPipe(int sig);
ExtFunc void RobotCmd(int flush, char *fmt, ...);
ExtFunc void RobotTimeStamp(void);
ExtFunc void CloseRobot(void);
