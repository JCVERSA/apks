.class public Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/mgmi/db/dao3/h;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MGMI_PULLREFRESH_AD_DB"


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

    const-string p1, "\"MGMI_PULLREFRESH_AD_DB\" (\"_id\" INTEGER PRIMARY KEY ,\"CHANNEL\" INTEGER NOT NULL ,\"VAST\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"MGMI_PULLREFRESH_AD_DB\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    .line 15
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

.method public a(Lcom/mgmi/db/dao3/h;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/h;->a()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lcom/mgmi/db/dao3/h;J)Ljava/lang/Long;
    .locals 0

    .line 19
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgmi/db/dao3/h;->a(Ljava/lang/Long;)V

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/database/Cursor;Lcom/mgmi/db/dao3/h;I)V
    .locals 3

    .line 16
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
    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/h;->a(Ljava/lang/Long;)V

    add-int/lit8 p0, p3, 0x1

    .line 17
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/mgmi/db/dao3/h;->a(I)V

    add-int/lit8 p3, p3, 0x2

    .line 18
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/mgmi/db/dao3/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgmi/db/dao3/h;)V
    .locals 3

    .line 9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 10
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->b()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 13
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p2, 0x3

    .line 14
    invoke-virtual {p1, p2, p0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgmi/db/dao3/h;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 4
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->a()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->b()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Lcom/mgmi/db/dao3/h;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p2, 0x3

    .line 8
    invoke-interface {p1, p2, p0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/mgmi/db/dao3/h;
    .locals 4

    .line 3
    new-instance p0, Lcom/mgmi/db/dao3/h;

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    add-int/lit8 p2, p2, 0x2

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/mgmi/db/dao3/h;-><init>(Ljava/lang/Long;ILjava/lang/String;)V

    return-object p0
.end method

.method public b(Lcom/mgmi/db/dao3/h;)Z
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/db/dao3/h;->a()Ljava/lang/Long;

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
    check-cast p2, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/mgmi/db/dao3/h;)V

    return-void
.end method

.method public synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/mgmi/db/dao3/h;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Lcom/mgmi/db/dao3/h;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->b(Lcom/mgmi/db/dao3/h;)Z

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
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->b(Landroid/database/Cursor;I)Lcom/mgmi/db/dao3/h;

    move-result-object p0

    return-object p0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p2, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Landroid/database/Cursor;Lcom/mgmi/db/dao3/h;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/mgmi/db/dao3/h;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgmi/db/dao3/MgmiPullRefreshAdDao;->a(Lcom/mgmi/db/dao3/h;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
