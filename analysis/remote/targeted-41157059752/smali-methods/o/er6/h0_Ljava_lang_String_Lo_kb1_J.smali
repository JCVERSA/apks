.method public final h0(Ljava/lang/String;Lo/kb1;)J
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lo/er6;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {p2, v1}, Lo/kb1;->onAddToDatabase(Landroid/content/ContentValues;)V

    const/4 p2, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const/4 v2, 0x4

    return-wide p1
.end method
