.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;-><init>(Lo/pg1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;->INSTANCE:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->g:Lo/t14;

    .line 24
    .line 25
    return-void
.end method
