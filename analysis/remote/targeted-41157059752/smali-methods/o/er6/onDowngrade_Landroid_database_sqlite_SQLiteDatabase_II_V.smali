.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x3

    if-le p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lo/er6;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lo/er6;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v0, 0x4

    return-void
.end method
