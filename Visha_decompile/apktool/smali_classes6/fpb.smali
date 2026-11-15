.class public final Lfpb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfpb;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static final d:Lapb;

.field public static e:Landroidx/lifecycle/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfpb;

    invoke-direct {v0}, Lfpb;-><init>()V

    sput-object v0, Lfpb;->a:Lfpb;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lfpb;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->getInstance()Lcom/transsion/cloudcore/db/CloudTaskDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/cloudcore/db/CloudTaskDatabase;->videoCloudCacheDao()Lapb;

    move-result-object v1

    sput-object v1, Lfpb;->d:Lapb;

    invoke-virtual {v0}, Lfpb;->f()V

    invoke-virtual {v0}, Lfpb;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lfpb;->l(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lfpb;->j(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lfpb;->g()V

    return-void
.end method

.method public static final g()V
    .locals 5

    const-string v0, "VideoCloudCacheManager"

    :try_start_0
    sget-object v1, Lfpb;->d:Lapb;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lapb;->getVideoCloud()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/VideoCloudCache;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v1, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache initialized with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " video cloud cache items"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v2, "Error initializing cache"

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-void
.end method

.method public static final j(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lfpb;->a:Lfpb;

    invoke-virtual {v0, p0}, Lfpb;->k(Ljava/util/List;)V

    return-void
.end method

.method public static final l(Ljava/util/List;)V
    .locals 4

    const-string v0, "VideoCloudCacheManager"

    :try_start_0
    sget-object v1, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/VideoCloudCache;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    const-string v3, "fileId"

    invoke-virtual {v2, v3}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->t(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/VideoCloudCache;->setPlayDuration(Ljava/lang/Long;)V

    sget-object v2, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/VideoCloudCache;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lcom/transsion/dbdata/dbhelpder/VideoCloudCacheHelper;->h(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache updated with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " video cloud cache items"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "Error updating cache"

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    sget-object p0, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;)Lcom/transsion/dbdata/beans/VideoCloudCache;
    .locals 0

    const-string p0, "fileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lfpb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/VideoCloudCache;

    return-object p0
.end method

.method public final f()V
    .locals 1

    sget-object p0, Lfpb;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcpb;

    invoke-direct {v0}, Lcpb;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfpb;->e(Ljava/lang/String;)Lcom/transsion/dbdata/beans/VideoCloudCache;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()V
    .locals 1

    new-instance p0, Ldpb;

    invoke-direct {p0}, Ldpb;-><init>()V

    sput-object p0, Lfpb;->e:Landroidx/lifecycle/Observer;

    sget-object p0, Lfpb;->d:Lapb;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lapb;->getVideoCloudLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lfpb;->e:Landroidx/lifecycle/Observer;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 1

    sget-object p0, Lfpb;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lepb;

    invoke-direct {v0, p1}, Lepb;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
