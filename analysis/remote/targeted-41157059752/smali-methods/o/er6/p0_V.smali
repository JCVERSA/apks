.method public p0()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "logcat"

    invoke-virtual {p0, v0}, Lo/er6;->x(Ljava/lang/String;)Lo/ul0;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x5

    new-instance v1, Lo/ul0;

    invoke-direct {v1, v0}, Lo/ul0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1}, Lo/er6;->m0(Lo/ul0;)J

    :cond_0
    const/4 v2, 0x6

    return-void
.end method
