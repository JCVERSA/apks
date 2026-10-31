.method public o(Lo/cm3;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lo/cm3;

    invoke-direct {p1}, Lo/cm3;-><init>()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lo/cm3;->B0:J

    const-string v0, "task info is null or status is not finish or filepath is null or download file not exist"

    invoke-static {p1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->l(Lo/cm3;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/b;->a:Z

    return-void
.end method
