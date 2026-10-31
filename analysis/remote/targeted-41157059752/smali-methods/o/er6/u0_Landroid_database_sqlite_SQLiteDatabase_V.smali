.method public static u0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x3

    const-string v0, "desolnircltgnneaaoFdaS_sT"

    const-string v0, "Slog_endTransactionFailed"

    const/4 v1, 0x0

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x2

    return-void
.end method
