.class public Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/db/dao3/MgmiAdReportinfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/mgmi/db/dao3/e;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MGMI_ADREPORTER_DB"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/mgmi/db/dao3/b;)V
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

    const-string p1, "\"MGMI_ADREPORTER_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"UUID\" TEXT,\"DOWNLOADPACKNAME\" TEXT,\"DOWNLOADPATH\" TEXT,\"REPORTDATA\" TEXT,\"URLDATA\" TEXT,\"EXPIRETIME\" INTEGER);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    .line 33
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

.method public a(Lcom/mgmi/db/dao3/e;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/e;->e()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/mgmi/db/dao3/e;J)Ljava/lang/Long;
    .locals 0

    .line 41
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgmi/db/dao3/e;->b(Ljava/lang/Long;)V

    .line 42
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Lcom/mgmi/db/dao3/e;I)V
    .locals 3

    .line 34
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
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->b(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x1

    .line 35
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->a(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;

    add-int/lit8 p0, p3, 0x2

    .line 36
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p0, v0

    goto :goto_2

    :cond_2
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->d(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;

    add-int/lit8 p0, p3, 0x3

    .line 37
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p0, v0

    goto :goto_3

    :cond_3
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->e(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;

    add-int/lit8 p0, p3, 0x4

    .line 38
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p0, v0

    goto :goto_4

    :cond_4
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->c(Ljava/lang/String;)Lcom/mgmi/db/dao3/e;

    add-int/lit8 p0, p3, 0x5

    .line 39
    invoke-interface {p1, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object p0, v0

    goto :goto_5

    :cond_5
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/e;->b(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x6

    .line 40
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/mgmi/db/dao3/e;->a(Ljava/lang/Long;)Lcom/mgmi/db/dao3/e;

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgmi/db/dao3/e;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 19
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->e()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 24
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 25
    :cond_2
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 26
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 27
    :cond_3
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 29
    :cond_4
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 30
    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 31
    :cond_5
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->d()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 p2, 0x7

    .line 32
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    :cond_6
    return-void
.end method

.method public final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgmi/db/dao3/e;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->e()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    .line 9
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    .line 11
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    .line 13
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 14
    :cond_4
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    .line 15
    invoke-interface {p1, v0, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 16
    :cond_5
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/e;->d()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 p2, 0x7

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_6
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/mgmi/db/dao3/e;
    .locals 8

    .line 1
    new-instance p0, Lcom/mgmi/db/dao3/e;

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
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_5
    add-int/lit8 p2, p2, 0x6

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object p1, v1

    goto :goto_6

    :cond_6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_6
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mgmi/db/dao3/e;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-object p0
.end method

.method public b(Lcom/mgmi/db/dao3/e;)Z
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/e;->e()Ljava/lang/Long;

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
    check-cast p2, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgmi/db/dao3/e;)V

    return-void
.end method

.method public synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgmi/db/dao3/e;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Lcom/mgmi/db/dao3/e;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->b(Lcom/mgmi/db/dao3/e;)Z

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
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->b(Landroid/database/Cursor;I)Lcom/mgmi/db/dao3/e;

    move-result-object p0

    return-object p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Landroid/database/Cursor;Lcom/mgmi/db/dao3/e;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgmi/db/dao3/MgmiAdReportinfoDao;->a(Lcom/mgmi/db/dao3/e;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
