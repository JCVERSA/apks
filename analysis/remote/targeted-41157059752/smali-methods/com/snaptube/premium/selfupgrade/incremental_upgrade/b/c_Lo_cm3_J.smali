.method public static c(Lo/cm3;)J
    .locals 4

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lo/cm3;->Z()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->m:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
