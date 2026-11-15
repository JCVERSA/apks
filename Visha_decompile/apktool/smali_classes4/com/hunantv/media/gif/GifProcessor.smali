.class public Lcom/hunantv/media/gif/GifProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/gif/GifProcessor$Callback;,
        Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;,
        Lcom/hunantv/media/gif/GifProcessor$Task;
    }
.end annotation


# static fields
.field public static final ERROR_GIF:I = 0x6ad78f

.field private static TAG:Ljava/lang/String; = "GifProcessor"

.field private static sApplication:Landroid/app/Application;

.field private static sInstance:Lcom/hunantv/media/gif/GifProcessor;


# instance fields
.field private mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

.field private mGifProcessThread:Landroid/os/HandlerThread;

.field private mReporter:Lcom/hunantv/media/report/a;

.field private mSafeLocker:Ljava/lang/Object;

.field private mWeakCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/hunantv/media/gif/GifProcessor$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mSafeLocker:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/hunantv/media/gif/GifProcessor;->init()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/hunantv/media/gif/GifProcessor;ILcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/gif/GifProcessor;->callbackFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/hunantv/media/gif/GifProcessor;Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/gif/GifProcessor;->callbackSuccess(Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/hunantv/media/gif/GifProcessor;)Lcom/hunantv/media/report/a;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor;->mReporter:Lcom/hunantv/media/report/a;

    return-object p0
.end method

.method private declared-synchronized callbackFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackFailure ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/hunantv/media/gif/GifProcessor$Task;->access$100(Lcom/hunantv/media/gif/GifProcessor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/hunantv/media/gif/GifProcessor$Task;->access$100(Lcom/hunantv/media/gif/GifProcessor$Task;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hunantv/media/player/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/gif/GifProcessor$Callback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/hunantv/media/gif/GifProcessor$Callback;->onFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private callbackSuccess(Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 3

    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackSuccess targetFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor;->mWeakCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/media/gif/GifProcessor$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/gif/GifProcessor$Callback;->onSuccess(Ljava/lang/String;Lcom/hunantv/media/gif/GifProcessor$Task;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hunantv/media/gif/GifProcessor;
    .locals 2

    const-class v0, Lcom/hunantv/media/gif/GifProcessor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/gif/GifProcessor;->sInstance:Lcom/hunantv/media/gif/GifProcessor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/hunantv/media/gif/GifProcessor;

    invoke-direct {v1}, Lcom/hunantv/media/gif/GifProcessor;-><init>()V

    sput-object v1, Lcom/hunantv/media/gif/GifProcessor;->sInstance:Lcom/hunantv/media/gif/GifProcessor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/hunantv/media/gif/GifProcessor;->sInstance:Lcom/hunantv/media/gif/GifProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MgtvGifProcessThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;-><init>(Lcom/hunantv/media/gif/GifProcessor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    :cond_1
    return-void
.end method

.method private validTask(Lcom/hunantv/media/gif/GifProcessor$Task;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->url:Ljava/lang/String;

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->startS:I

    if-ltz p0, :cond_1

    iget p0, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->durationS:I

    if-lez p0, :cond_1

    iget p0, p1, Lcom/hunantv/media/gif/GifProcessor$Task;->fps:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bindApplication(Landroid/app/Application;)V
    .locals 2

    sput-object p1, Lcom/hunantv/media/gif/GifProcessor;->sApplication:Landroid/app/Application;

    new-instance p1, Lcom/hunantv/media/report/a;

    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->sApplication:Landroid/app/Application;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/hunantv/media/report/a;-><init>(Landroid/content/Context;Lcom/hunantv/media/player/MgtvMediaPlayer;)V

    iput-object p1, p0, Lcom/hunantv/media/gif/GifProcessor;->mReporter:Lcom/hunantv/media/report/a;

    new-instance p0, Lcom/hunantv/media/report/ReportParams;

    invoke-direct {p0}, Lcom/hunantv/media/report/ReportParams;-><init>()V

    sget-object v0, Lcom/hunantv/media/report/ReportParams$VideoType;->GIF_CREATOR:Lcom/hunantv/media/report/ReportParams$VideoType;

    invoke-virtual {p0, v0}, Lcom/hunantv/media/report/ReportParams;->setVideoType(Lcom/hunantv/media/report/ReportParams$VideoType;)Lcom/hunantv/media/report/ReportParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hunantv/media/report/a;->a(Lcom/hunantv/media/report/ReportParams;)V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor;->mSafeLocker:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    const-string v1, "cancel in"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/player/libnative/FFmpegApi;->fftool_process_interrupt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    const-string v1, "cancel out"

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isSupported()Z
    .locals 0

    invoke-static {}, Lcom/hunantv/media/player/e/a;->b()Z

    move-result p0

    return p0
.end method

.method public processAsync(Lcom/hunantv/media/gif/GifProcessor$Task;)V
    .locals 4

    invoke-virtual {p0}, Lcom/hunantv/media/gif/GifProcessor;->cancel()V

    iget-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mSafeLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAsync in. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/hunantv/media/gif/GifProcessor;->validTask(Lcom/hunantv/media/gif/GifProcessor$Task;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, -0x65

    invoke-direct {p0, v1, p1}, Lcom/hunantv/media/gif/GifProcessor;->callbackFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    const-string p1, "processAsync out."

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    const/16 v1, -0x64

    invoke-direct {p0, v1, p1}, Lcom/hunantv/media/gif/GifProcessor;->callbackFailure(ILcom/hunantv/media/gif/GifProcessor$Task;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mSafeLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    const-string v2, "release in"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/hunantv/media/player/libnative/FFmpegApi;->fftool_process_interrupt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v2, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessHandler:Lcom/hunantv/media/gif/GifProcessor$GifProcessHandler;

    :cond_0
    iget-object v1, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/hunantv/media/gif/GifProcessor;->mGifProcessThread:Landroid/os/HandlerThread;

    :cond_1
    sget-object p0, Lcom/hunantv/media/gif/GifProcessor;->TAG:Ljava/lang/String;

    const-string v1, "release out"

    invoke-static {p0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setWeakCallback(Lcom/hunantv/media/gif/GifProcessor$Callback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hunantv/media/gif/GifProcessor;->mWeakCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method
