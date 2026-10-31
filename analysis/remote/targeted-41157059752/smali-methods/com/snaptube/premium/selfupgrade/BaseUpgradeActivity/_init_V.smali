.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/premium/activity/BaseSwipeBackActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->j:Z

    new-instance v0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$f;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$f;-><init>(Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;)V

    iput-object v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->o:Lcom/snaptube/taskManager/TaskMessageCenter$d;

    return-void
.end method
