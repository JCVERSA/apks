.class public Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/mgtv/ssp/download/dao3/c;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "FILE_DOWNLOAD_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgtv/ssp/download/dao3/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"FILE_DOWNLOAD_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"FILE_ID\" TEXT,\"FILE_NAME\" TEXT,\"FILE_PATH\" TEXT,\"FILE_URL\" TEXT,\"OPERATE_TIME\" INTEGER,\"COMPLETE_SIZE\" INTEGER,\"TOTAL_SIZE\" INTEGER,\"STATUS\" INTEGER,\"FILE_MD5\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    .line 45
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public a(Lcom/mgtv/ssp/download/dao3/c;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/mgtv/ssp/download/dao3/c;->a()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/mgtv/ssp/download/dao3/c;J)Ljava/lang/Long;
    .locals 0

    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/ssp/download/dao3/c;->a(Ljava/lang/Long;)V

    .line 57
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Lcom/mgtv/ssp/download/dao3/c;I)V
    .locals 3

    .line 46
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->a(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x1

    .line 47
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->a(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x2

    .line 48
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->b(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x3

    .line 49
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, v0

    goto :goto_3

    :cond_3
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->c(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x4

    .line 50
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    goto :goto_4

    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->d(Ljava/lang/String;)V

    add-int/lit8 p0, p3, 0x5

    .line 51
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p0, v0

    goto :goto_5

    :cond_5
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->b(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x6

    .line 52
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p0, v0

    goto :goto_6

    :cond_6
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_6
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->c(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x7

    .line 53
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object p0, v0

    goto :goto_7

    :cond_7
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_7
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->d(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x8

    .line 54
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v0

    goto :goto_8

    :cond_8
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_8
    invoke-virtual {p2, p0}, Lcom/mgtv/ssp/download/dao3/c;->a(Ljava/lang/Integer;)V

    add-int/lit8 p3, p3, 0x9

    .line 55
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_9

    :cond_9
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/mgtv/ssp/download/dao3/c;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgtv/ssp/download/dao3/c;)V
    .locals 3

    .line 24
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 25
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 27
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 29
    :cond_1
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 30
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 31
    :cond_2
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 32
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 33
    :cond_3
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 35
    :cond_4
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->f()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 36
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 37
    :cond_5
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->g()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x7

    .line 38
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 39
    :cond_6
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->h()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 41
    :cond_7
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->i()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 42
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 43
    :cond_8
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->j()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    const/16 p2, 0xa

    .line 44
    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgtv/ssp/download/dao3/c;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 9
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->d()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 11
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 13
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->f()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->g()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v0, 0x7

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 18
    :cond_6
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->h()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_7

    const/16 v0, 0x8

    .line 19
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 20
    :cond_7
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->i()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 22
    :cond_8
    invoke-virtual {p2}, Lcom/mgtv/ssp/download/dao3/c;->j()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    const/16 p2, 0xa

    .line 23
    invoke-interface {p1, p2, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/mgtv/ssp/download/dao3/c;
    .locals 11

    .line 1
    new-instance p0, Lcom/mgtv/ssp/download/dao3/c;

    .line 2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    add-int/lit8 v0, p2, 0x3

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_3
    add-int/lit8 v0, p2, 0x4

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_4
    add-int/lit8 v0, p2, 0x5

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v1

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    :goto_5
    add-int/lit8 v0, p2, 0x6

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v1

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v8, v0

    :goto_6
    add-int/lit8 v0, p2, 0x7

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v1

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    :goto_7
    add-int/lit8 v0, p2, 0x8

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v1

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v10, v0

    :goto_8
    add-int/lit8 p2, p2, 0x9

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object p1, v1

    goto :goto_9

    :cond_9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/mgtv/ssp/download/dao3/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Lcom/mgtv/ssp/download/dao3/c;)Z
    .locals 0

    .line 12
    invoke-virtual {p1}, Lcom/mgtv/ssp/download/dao3/c;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgtv/ssp/download/dao3/c;)V

    return-void
.end method

.method public synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgtv/ssp/download/dao3/c;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Lcom/mgtv/ssp/download/dao3/c;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->b(Lcom/mgtv/ssp/download/dao3/c;)Z

    move-result p0

    return p0
.end method

.method public final isEntityUpdateable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->b(Landroid/database/Cursor;I)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Landroid/database/Cursor;Lcom/mgtv/ssp/download/dao3/c;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgtv/ssp/download/dao3/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;->a(Lcom/mgtv/ssp/download/dao3/c;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
