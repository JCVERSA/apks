.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->f:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;->INSTANCE:Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$Companion$TRANSLATES$2;

    invoke-static {v0}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v0

    sput-object v0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->g:Lo/t14;

    return-void
.end method
