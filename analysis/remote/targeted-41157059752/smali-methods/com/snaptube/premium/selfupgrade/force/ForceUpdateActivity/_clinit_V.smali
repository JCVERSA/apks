.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->s:Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity$a;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/snaptube/premium/selfupgrade/force/ForceUpdateActivity;->t:J

    return-void
.end method
