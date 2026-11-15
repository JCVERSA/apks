.class public final Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

.field public static final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final c:Ljava/util/concurrent/ExecutorService;

.field public static final d:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

.field public static e:Landroidx/lifecycle/Observer;

.field public static final f:Landroidx/lifecycle/MutableLiveData;

.field public static final g:Landroidx/lifecycle/MutableLiveData;

.field public static h:Z

.field public static final i:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;

.field public static final j:Lhk1;

.field public static final k:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-direct {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "newSingleThreadExecutor(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getInstance()Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    move-result-object v1

    const-string v2, "getInstance(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->d:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;

    invoke-direct {v1, v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;-><init>(Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;)V

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->i:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;

    sget-object v1, Lhk1;->w1:Lhk1$b;

    new-instance v2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$b;

    invoke-direct {v2, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$b;-><init>(Lhk1$b;)V

    sput-object v2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->j:Lhk1;

    invoke-static {}, Lmc2;->a()Lkotlinx/coroutines/c;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v4, v3}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    invoke-interface {v1, v2}, Lkotlin/coroutines/d;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v1

    sput-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k:Lnk1;

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->l()V

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->o()V

    invoke-virtual {v0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->q()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->t(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->p(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c()V
    .locals 0

    invoke-static {}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->m()V

    return-void
.end method

.method public static final synthetic d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final m()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    sget-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->d:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    invoke-virtual {v1}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getAllFinishTask()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->e(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CloudTaskFinishCacheManager"

    const-string v2, "Error initializing cache"

    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final p(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v0, p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->s(Ljava/util/List;)V

    return-void
.end method

.method public static final t(Ljava/util/List;)V
    .locals 3

    const-string v0, "CloudTaskFinishCacheManager"

    :try_start_0
    sget-object v1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {v1, p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->e(Ljava/util/List;)V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache updated with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " finished tasks"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Error updating cache"

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final e(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    iget-object v0, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/transsion/cloudcore/db/CloudTaskEntity;->cloudFileId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 6

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->k:Lnk1;

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v1

    new-instance v3, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$flushCacheLocalFileStatus$1;-><init>(Lwh1;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method

.method public final g()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->h:Z

    return p0
.end method

.method public final h()I
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    const-string p0, "cloudFileId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "localFileId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    iget p0, p0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFileId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean p1, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->isLocalFileExist:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/transsion/cloudcore/db/CloudTaskEntity;->localFilePath:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final k()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->g:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final l()V
    .locals 1

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lx31;

    invoke-direct {v0}, Lx31;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->f:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final o()V
    .locals 1

    new-instance p0, Lw31;

    invoke-direct {p0}, Lw31;-><init>()V

    sput-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->e:Landroidx/lifecycle/Observer;

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->d:Lcom/transsion/cloudcore/db/CloudTransferRecordManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/db/CloudTransferRecordManager;->getAllFinishTaskLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p0

    sget-object v0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->e:Landroidx/lifecycle/Observer;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final q()V
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    sget-object v2, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->i:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager$a;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final r(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->h:Z

    return-void
.end method

.method public final s(Ljava/util/List;)V
    .locals 1

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ly31;

    invoke-direct {v0, p1}, Ly31;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
