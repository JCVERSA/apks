.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    const-string v1, "rl ndV:ipoes"

    const-string v1, "oldVersion: "

    const/4 v2, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const-string v1, "irosne:,etV wn"

    const-string v1, ", newVersion: "

    const/4 v2, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const-string v1, "eDsSrLepogHl"

    const-string v1, "SLogDBHelper"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    if-ge p2, p3, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, p1}, Lo/er6;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lo/er6;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
