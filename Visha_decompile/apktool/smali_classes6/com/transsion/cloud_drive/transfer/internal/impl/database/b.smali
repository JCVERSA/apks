.class public final Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lthb;


# instance fields
.field public final a:Lq5b;


# direct methods
.method public constructor <init>(Lq5b;)V
    .locals 1

    const-string v0, "dbHelper"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;->a:Lq5b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lmhb;
    .locals 8

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->Companion:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns$a;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns$a;->a()[Ljava/lang/String;

    move-result-object v2

    sget-object p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=?"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "UploadBlockInfo"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p1, Lmhb;

    invoke-direct {p1}, Lmhb;-><init>()V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmhb;->o(J)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->q(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getInt(Landroid/database/Cursor;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmhb;->l(I)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->m(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->UPLOAD_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->r(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;->getEntries()Ldb3;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->STATE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getInt(Landroid/database/Cursor;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lmhb;->p(Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_ALGORITHM:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->j(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_VALUE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmhb;->k(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_MODIFIED_TIME:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0, p0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getLong(Landroid/database/Cursor;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmhb;->n(J)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public b(Lmhb;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->UPLOAD_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->STATE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->g()Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_ALGORITHM:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_VALUE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_MODIFIED_TIME:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v1, "UploadBlockInfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmhb;->o(J)V

    return-void
.end method

.method public c(Lmhb;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->UPLOAD_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->STATE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->g()Lcom/transsion/cloud_drive/transfer/internal/upload/UploadState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_ALGORITHM:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->CRC_VALUE:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->FILE_MODIFIED_TIME:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmhb;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "UploadBlockInfo"

    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/b;->a:Lq5b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;

    invoke-virtual {v0}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/UploadSerialInfoColumns;->getColumn()Ljava/lang/String;

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

    const-string v1, "UploadBlockInfo"

    invoke-virtual {p0, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
