.class public Lcom/mgmi/db/dao3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgmi/db/dao3/d;


# instance fields
.field private b:Lcom/mgmi/db/a;

.field private c:Lcom/mgmi/db/dao3/b;

.field private d:Lorg/greenrobot/greendao/database/Database;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/mgmi/db/dao3/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgmi/db/dao3/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/mgmi/db/dao3/d;->a:Lcom/mgmi/db/dao3/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mgmi/db/dao3/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mgmi/db/dao3/d;->a:Lcom/mgmi/db/dao3/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mgmi/db/dao3/d;

    invoke-direct {v1, p0}, Lcom/mgmi/db/dao3/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgmi/db/dao3/d;->a:Lcom/mgmi/db/dao3/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgmi/db/dao3/d;->a:Lcom/mgmi/db/dao3/d;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/mgmi/db/a;

    const-string v1, "MGMI_PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mgmi/db/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/mgmi/db/dao3/d;->b:Lcom/mgmi/db/a;

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getReadableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/db/dao3/d;->d:Lorg/greenrobot/greendao/database/Database;

    .line 3
    new-instance v0, Lcom/mgmi/db/dao3/a;

    invoke-direct {v0, p1}, Lcom/mgmi/db/dao3/a;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 4
    invoke-virtual {v0}, Lcom/mgmi/db/dao3/a;->a()Lcom/mgmi/db/dao3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/db/dao3/d;->c:Lcom/mgmi/db/dao3/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgmi/db/dao3/d;->c:Lcom/mgmi/db/dao3/b;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/b;->c()Lcom/mgmi/db/dao3/MgmiOfflineAdDao;

    move-result-object p0

    return-object p0
.end method

.method public b()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/db/dao3/d;->c:Lcom/mgmi/db/dao3/b;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/b;->a()Lcom/mgmi/db/dao3/MgmiOfflineAdResourceDao;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/mgmi/db/dao3/FileDownloadInfoDao;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/db/dao3/d;->c:Lcom/mgmi/db/dao3/b;

    invoke-virtual {p0}, Lcom/mgmi/db/dao3/b;->b()Lcom/mgmi/db/dao3/FileDownloadInfoDao;

    move-result-object p0

    return-object p0
.end method
