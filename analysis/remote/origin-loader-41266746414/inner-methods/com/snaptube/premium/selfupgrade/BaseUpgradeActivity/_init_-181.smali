.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->j:Z

    .line 6
    .line 7
    new-instance v0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$f;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$f;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->o:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    .line 13
    .line 14
    return-void
.end method
