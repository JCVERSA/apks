.class public Lcom/mgtv/ssp/download/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/download/d$a;,
        Lcom/mgtv/ssp/download/d$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/mgtv/ssp/download/d;

.field private static e:Lokhttp3/OkHttpClient;

.field private static g:Landroid/content/Context;

.field private static h:Z


# instance fields
.field private b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/ssp/download/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/io/File;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/ssp/download/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/mgtv/ssp/download/d;->e:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/download/d;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    sput-object p1, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/download/d;->d:Ljava/io/File;

    invoke-direct {p0}, Lcom/mgtv/ssp/download/d;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/ssp/download/d;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lcom/mgtv/ssp/download/d;->a:Lcom/mgtv/ssp/download/d;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/mgtv/ssp/download/d;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mgtv/ssp/download/d;->a:Lcom/mgtv/ssp/download/d;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mgtv/ssp/download/d;

    invoke-direct {v1, p0}, Lcom/mgtv/ssp/download/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgtv/ssp/download/d;->a:Lcom/mgtv/ssp/download/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgtv/ssp/download/d;->a:Lcom/mgtv/ssp/download/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/download/dao3/c;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/mgtv/ssp/download/d;->b(Lcom/mgtv/ssp/download/dao3/c;I)V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/mgtv/ssp/download/d;->h:Z

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lcom/mgtv/ssp/download/d;->h:Z

    return p0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Lcom/mgtv/ssp/download/dao3/c;I)V
    .locals 0

    .line 9
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    .line 10
    sget-object p1, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic c()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/ssp/download/d;->e:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private d()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object v2

    iput-object v2, p0, Lcom/mgtv/ssp/download/d;->b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    .line 3
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao$Properties;->f:Lorg/greenrobot/greendao/Property;

    filled-new-array {v3}, [Lorg/greenrobot/greendao/Property;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgtv/ssp/download/dao3/c;

    .line 5
    new-instance v5, Lcom/mgtv/ssp/download/c;

    invoke-direct {v5}, Lcom/mgtv/ssp/download/c;-><init>()V

    .line 6
    invoke-virtual {v5, v4}, Lcom/mgtv/ssp/download/c;->a(Lcom/mgtv/ssp/download/dao3/c;)V

    .line 7
    iget-object v6, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    iget-object v4, v4, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgtv/ssp/download/dao3/c;

    if-eqz v5, :cond_1

    .line 11
    iget-object v6, v5, Lcom/mgtv/ssp/download/dao3/c;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 12
    iget-object v6, v5, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p0, v6}, Lcom/mgtv/ssp/download/d;->e(Ljava/lang/String;)Z

    .line 14
    iget-object v6, p0, Lcom/mgtv/ssp/download/d;->b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    invoke-virtual {v6, v5}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_2
    iget-object v6, v5, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v5, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 16
    iget-object v6, p0, Lcom/mgtv/ssp/download/d;->b:Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    invoke-virtual {v6, v5}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 17
    new-instance v6, Lcom/mgtv/ssp/download/e;

    invoke-direct {v6, v5}, Lcom/mgtv/ssp/download/e;-><init>(Lcom/mgtv/ssp/download/dao3/c;)V

    .line 18
    iget-object v7, p0, Lcom/mgtv/ssp/download/d;->c:Ljava/util/Map;

    iget-object v5, v5, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_3
    const-string p0, "FileDownloader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init FileDownload List : Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mgtv/ssp/download/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/download/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/download/dao3/c;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/mgtv/ssp/download/dao3/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " APKDOWNLOAD click resumeDownload uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Lcom/mgtv/ssp/download/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/download/c;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mgtv/ssp/download/c;

    invoke-direct {v0}, Lcom/mgtv/ssp/download/c;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/mgtv/ssp/download/c;->a(Lcom/mgtv/ssp/download/dao3/c;)V

    .line 40
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    new-instance p0, Lcom/mgtv/ssp/download/d$a;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/ssp/download/d$a;-><init>(Lcom/mgtv/ssp/download/dao3/c;Lcom/mgtv/ssp/download/d$b;)V

    .line 42
    invoke-virtual {v0, p0}, Lcom/mgtv/ssp/download/c;->a(Lcom/mgtv/ssp/download/d$a;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 44
    iget-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/ssp/download/d$b;)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/download/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, p2}, Lcom/mgtv/ssp/download/d;->f(Ljava/lang/String;)V

    .line 14
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mgtv/ssp/download/d;->d(Ljava/lang/String;)Lcom/mgtv/ssp/download/e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgtv/ssp/download/dao3/c;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 18
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_1

    .line 20
    invoke-virtual {v1}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p0

    iget-object p0, p0, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_2
    new-instance v1, Lcom/mgtv/ssp/download/c;

    invoke-direct {v1}, Lcom/mgtv/ssp/download/c;-><init>()V

    .line 22
    new-instance v2, Lcom/mgtv/ssp/download/dao3/c;

    invoke-direct {v2}, Lcom/mgtv/ssp/download/dao3/c;-><init>()V

    .line 23
    iput-object p1, v2, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    .line 24
    iput-object p2, v2, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/mgtv/ssp/download/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/mgtv/ssp/download/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p2}, Lcom/mgtv/ssp/download/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/mgtv/ssp/download/dao3/c;->c:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v2, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v2, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v2, Lcom/mgtv/ssp/download/dao3/c;->f:Ljava/lang/Long;

    .line 31
    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/download/c;->a(Lcom/mgtv/ssp/download/dao3/c;)V

    .line 32
    new-instance p2, Lcom/mgtv/ssp/download/d$a;

    invoke-direct {p2, v2, p3}, Lcom/mgtv/ssp/download/d$a;-><init>(Lcom/mgtv/ssp/download/dao3/c;Lcom/mgtv/ssp/download/d$b;)V

    .line 33
    invoke-virtual {v1, p2}, Lcom/mgtv/ssp/download/c;->a(Lcom/mgtv/ssp/download/d$a;)V

    .line 34
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method public a(Lcom/mgtv/ssp/download/dao3/c;)Z
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " APKDOWNLOAD click pauseDownload uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " URL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileDownloader"

    invoke-static {v1, v0}, Lcom/mgtv/ssp/download/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    iget-object v0, p1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/download/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/ssp/download/c;->b()Lcom/mgtv/ssp/download/d$a;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/download/d$a;->a(Z)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 50
    :goto_0
    throw p0

    .line 51
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 p0, 0x4

    .line 52
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p1, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    .line 53
    sget-object p0, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    invoke-static {p0}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 57
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/download/c;

    if-nez v0, :cond_3

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/mgtv/ssp/download/c;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 61
    :cond_4
    iget-object v3, v2, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v2}, Lcom/mgtv/ssp/download/dao3/c;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    .line 63
    :cond_5
    invoke-virtual {v0}, Lcom/mgtv/ssp/download/c;->b()Lcom/mgtv/ssp/download/d$a;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 64
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/download/d$a;->a(Z)V

    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 66
    :goto_1
    throw p0

    .line 67
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :goto_3
    :try_start_1
    sget-object p1, Lcom/mgtv/ssp/download/d;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/ssp/download/a;->a(Landroid/content/Context;)Lcom/mgtv/ssp/download/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/ssp/download/a;->a()Lcom/mgtv/ssp/download/dao3/FileDownloadInfoDao;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    .line 69
    new-instance p1, Ljava/io/File;

    iget-object v1, v2, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    :cond_6
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return v0

    :cond_7
    :goto_5
    return v1
.end method

.method public b(Ljava/lang/String;)Lcom/mgtv/ssp/download/dao3/c;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/download/c;

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/mgtv/ssp/download/c;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v2, v0, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_5
    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/mgtv/ssp/download/dao3/c;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->f:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/download/c;

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/mgtv/ssp/download/c;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 8
    :cond_4
    iget-object v2, v0, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_5
    return-object v1
.end method

.method public d(Ljava/lang/String;)Lcom/mgtv/ssp/download/e;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/mgtv/ssp/download/d;->c:Ljava/util/Map;

    if-nez p0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/download/e;

    if-nez v0, :cond_3

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/mgtv/ssp/download/e;->a()Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 27
    :cond_4
    iget-object v2, v2, Lcom/mgtv/ssp/download/dao3/c;->e:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    return-object v0

    :catchall_0
    :cond_5
    :goto_1
    return-object v1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mgtv/ssp/download/d;->e(Ljava/lang/String;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    return v1
.end method
