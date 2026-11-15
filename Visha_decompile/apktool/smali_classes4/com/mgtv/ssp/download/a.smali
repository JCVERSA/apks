.class public Lcom/mgtv/ssp/download/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mgtv/ssp/download/a;


# instance fields
.field private b:Lcom/mgtv/ssp/download/b;

.field private c:Lcom/mgtv/ssp/download/dao3/b;

.field private d:Lorg/greenrobot/greendao/database/Database;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/download/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, p1}, Lcom/mgtv/ssp/download/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;
    .locals 3

    const-class v0, Lcom/mgtv/ssp/download/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/download/a;->a:Lcom/mgtv/ssp/download/a;

    if-nez v1, :cond_1

    .line 2
    const-class v1, Lcom/mgtv/ssp/download/a;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v2, Lcom/mgtv/ssp/download/a;->a:Lcom/mgtv/ssp/download/a;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/mgtv/ssp/download/a;

    invoke-direct {v2, p0}, Lcom/mgtv/ssp/download/a;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/mgtv/ssp/download/a;->a:Lcom/mgtv/ssp/download/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgtv/ssp/download/a;->a:Lcom/mgtv/ssp/download/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/mgtv/ssp/download/b;

    const-string v1, "MgSspFileDownload"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mgtv/ssp/download/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/mgtv/ssp/download/a;->b:Lcom/mgtv/ssp/download/b;

    iget-object p1, p0, Lcom/mgtv/ssp/download/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/download/a;->b:Lcom/mgtv/ssp/download/b;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getReadableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/download/a;->d:Lorg/greenrobot/greendao/database/Database;

    new-instance v0, Lcom/mgtv/ssp/download/dao3/a;

    invoke-direct {v0, p1}, Lcom/mgtv/ssp/download/dao3/a;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {v0}, Lcom/mgtv/ssp/download/dao3/a;->a()Lcom/mgtv/ssp/download/dao3/b;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/download/a;->c:Lcom/mgtv/ssp/download/dao3/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/download/a;->c:Lcom/mgtv/ssp/download/dao3/b;

    invoke-virtual {p0}, Lcom/mgtv/ssp/download/dao3/b;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object p0

    return-object p0
.end method
