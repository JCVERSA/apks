.class public Lcom/jeffmony/m3u8library/VideoProcessManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sInstance:Lcom/jeffmony/m3u8library/VideoProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnMergeFailed(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnTransformFinished(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jeffmony/m3u8library/VideoProcessManager;->notifyOnTransformProgress(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V

    return-void
.end method

.method public static getInstance()Lcom/jeffmony/m3u8library/VideoProcessManager;
    .locals 2

    sget-object v0, Lcom/jeffmony/m3u8library/VideoProcessManager;->sInstance:Lcom/jeffmony/m3u8library/VideoProcessManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/jeffmony/m3u8library/VideoProcessManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/jeffmony/m3u8library/VideoProcessManager;->sInstance:Lcom/jeffmony/m3u8library/VideoProcessManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/jeffmony/m3u8library/VideoProcessManager;

    invoke-direct {v1}, Lcom/jeffmony/m3u8library/VideoProcessManager;-><init>()V

    sput-object v1, Lcom/jeffmony/m3u8library/VideoProcessManager;->sInstance:Lcom/jeffmony/m3u8library/VideoProcessManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/jeffmony/m3u8library/VideoProcessManager;->sInstance:Lcom/jeffmony/m3u8library/VideoProcessManager;

    return-object v0
.end method

.method private notifyOnMergeFailed(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V
    .locals 1
    .param p1    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/jeffmony/m3u8library/VideoProcessManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/jeffmony/m3u8library/VideoProcessManager$4;-><init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;I)V

    invoke-static {v0}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnTransformFinished(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .locals 1
    .param p1    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/jeffmony/m3u8library/VideoProcessManager$3;

    invoke-direct {v0, p0, p1}, Lcom/jeffmony/m3u8library/VideoProcessManager$3;-><init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V

    invoke-static {v0}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnTransformProgress(Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V
    .locals 1
    .param p1    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/jeffmony/m3u8library/VideoProcessManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/jeffmony/m3u8library/VideoProcessManager$2;-><init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;F)V

    invoke-static {v0}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V
    .locals 1
    .param p3    # Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Input file is not existing"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;->onTransformFailed(Ljava/lang/Exception;)V

    return-void

    :cond_1
    new-instance v0, Lcom/jeffmony/m3u8library/VideoProcessManager$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/jeffmony/m3u8library/VideoProcessManager$1;-><init>(Lcom/jeffmony/m3u8library/VideoProcessManager;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jeffmony/m3u8library/thread/VideoProcessThreadHandler;->submitRunnableTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Input or output File is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;->onTransformFailed(Ljava/lang/Exception;)V

    return-void
.end method
