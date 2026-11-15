.class public final Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lay2;


# instance fields
.field public final a:Lq5b;


# direct methods
.method public constructor <init>(Lq5b;)V
    .locals 1

    const-string v0, "dbHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;->a:Lq5b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 13

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->Companion:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;->a()[Ljava/lang/String;

    move-result-object v3

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ASC"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "DownloadBlockInfo"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lby2;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v2

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v5

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v7

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v9

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v11

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lby2;-><init>(JLjava/lang/String;JJJJ)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public b(Lby2;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "DownloadBlockInfo"

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public c(Lby2;)J
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lby2;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "DownloadBlockInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/a;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->getColumn()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadBlockInfo"

    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
