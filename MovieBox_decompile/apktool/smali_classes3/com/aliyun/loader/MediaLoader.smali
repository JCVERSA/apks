.class public Lcom/aliyun/loader/MediaLoader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mMainHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/aliyun/loader/MediaLoader;


# instance fields
.field private onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/aliyun/utils/NativeLoader;->loadPlayer()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/aliyun/loader/MediaLoader;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/aliyun/loader/MediaLoader;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    .line 14
    .line 15
    new-instance v0, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/loader/MediaLoader;)Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/aliyun/loader/MediaLoader;
    .locals 2

    .line 1
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/aliyun/loader/MediaLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/aliyun/loader/MediaLoader;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/aliyun/loader/MediaLoader;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->sInstance:Lcom/aliyun/loader/MediaLoader;

    .line 27
    .line 28
    return-object v0
.end method

.method public static loadClass()V
    .locals 0

    .line 1
    return-void
.end method

.method private static native nCancel(Ljava/lang/String;)V
.end method

.method private static native nCancelAll()V
.end method

.method private static native nLoad(Ljava/lang/String;J)V
.end method

.method private static nOnCanceled(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/loader/MediaLoader$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/loader/MediaLoader$3;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static nOnCompleted(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/loader/MediaLoader$2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aliyun/loader/MediaLoader$2;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static nOnError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    .line 1
    sget-object v0, Lcom/aliyun/loader/MediaLoader;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/aliyun/loader/MediaLoader$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/aliyun/loader/MediaLoader$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static native nPause(ZLjava/lang/String;)V
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/aliyun/loader/MediaLoader;->nCancelAll()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/aliyun/loader/MediaLoader;->nCancel(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public load(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/aliyun/loader/MediaLoader;->nLoad(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lcom/aliyun/loader/MediaLoader;->nPause(ZLjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/aliyun/loader/MediaLoader;->nPause(ZLjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setOnLoadStatusListener(Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/loader/MediaLoader;->onLoadStatusListener:Lcom/aliyun/loader/MediaLoader$OnLoadStatusListener;

    .line 2
    .line 3
    return-void
.end method
