.method public n0(Lo/wu1;)J
    .locals 3

    if-nez p1, :cond_0

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v0, -0x1

    const/4 v2, 0x5

    return-wide v0

    :cond_0
    const/4 v2, 0x3

    const-string v0, "tbl_slog_download"

    const/4 v2, 0x6

    invoke-virtual {p0, v0, p1}, Lo/er6;->h0(Ljava/lang/String;Lo/kb1;)J

    move-result-wide v0

    const/4 v2, 0x4

    return-wide v0
.end method
