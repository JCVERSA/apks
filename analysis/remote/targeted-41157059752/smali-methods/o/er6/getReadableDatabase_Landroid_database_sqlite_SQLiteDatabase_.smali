.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    return-object v0

    :catch_0
    move-exception v0

    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v3, 0x6

    const-string v2, "reateo-pp degadaaby rusnda"

    const-string v2, "upgrade read-only database"

    const/4 v3, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    :cond_0
    throw v0
.end method
