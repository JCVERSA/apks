.method public m0(Lo/ul0;)J
    .locals 3

    const/4 v2, 0x7

    if-nez p1, :cond_0

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-string v0, "sch_blttc_eogk"

    const-string v0, "tbl_slog_check"

    const/4 v2, 0x5

    invoke-virtual {p0, v0, p1}, Lo/er6;->h0(Ljava/lang/String;Lo/kb1;)J

    move-result-wide v0

    return-wide v0
.end method
