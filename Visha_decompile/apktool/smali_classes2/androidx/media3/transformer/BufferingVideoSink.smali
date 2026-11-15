.class final Landroidx/media3/transformer/BufferingVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isInitialized:Z

.field private final pendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;",
            ">;"
        }
    .end annotation
.end field

.field private placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private videoSink:Landroidx/media3/exoplayer/video/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->context:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setListener$1(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic b(FLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setPlaybackSpeed$4(FLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic c(JJLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setStreamTimestampInfo$6(JJLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/Renderer$WakeupListener;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setWakeupListener$10(Landroidx/media3/exoplayer/Renderer$WakeupListener;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setVideoFrameMetadataListener$3(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;->execute(Landroidx/media3/exoplayer/video/VideoSink;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static synthetic f(ILandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setChangeFrameRateStrategy$8(ILandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setOutputSurfaceInfo$7(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private getPlaceholderSurface()Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .locals 2

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_0
    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-object p0
.end method

.method public static synthetic h(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$join$11(ZLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic i(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$onInputStreamChanged$9(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic j(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$flush$2(ZLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic k(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$onRendererEnabled$0(ZLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setVideoEffects$5(Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private static synthetic lambda$flush$2(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->flush(Z)V

    return-void
.end method

.method private static synthetic lambda$join$11(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->join(Z)V

    return-void
.end method

.method private static synthetic lambda$onInputStreamChanged$9(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->onInputStreamChanged(ILandroidx/media3/common/Format;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$onRendererEnabled$0(ZLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->onRendererEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$setChangeFrameRateStrategy$8(ILandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setChangeFrameRateStrategy(I)V

    return-void
.end method

.method private static synthetic lambda$setListener$1(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static synthetic lambda$setOutputSurfaceInfo$7(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    return-void
.end method

.method private static synthetic lambda$setPlaybackSpeed$4(FLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setPlaybackSpeed(F)V

    return-void
.end method

.method private static synthetic lambda$setStreamTimestampInfo$6(JJLandroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoSink;->setStreamTimestampInfo(JJ)V

    return-void
.end method

.method private static synthetic lambda$setVideoEffects$5(Ljava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoEffects(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$setVideoFrameMetadataListener$3(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method private static synthetic lambda$setWakeupListener$10(Landroidx/media3/exoplayer/Renderer$WakeupListener;Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/video/VideoSink;->setWakeupListener(Landroidx/media3/exoplayer/Renderer$WakeupListener;)V

    return-void
.end method


# virtual methods
.method public clearOutputSurfaceInfo()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/f;

    invoke-direct {v0}, Landroidx/media3/transformer/f;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public clearPendingOperations()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public enableMayRenderStartOfStream()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/a;

    invoke-direct {v0}, Landroidx/media3/transformer/a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public flush(Z)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/k;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/k;-><init>(Z)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/transformer/BufferingVideoSink;->getPlaceholderSurface()Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getVideoSink()Landroidx/media3/exoplayer/video/VideoSink;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object p0
.end method

.method public handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputBitmap(Landroid/graphics/Bitmap;Landroidx/media3/common/util/TimestampIterator;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleInputFrame(JZLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->handleInputFrame(JZLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Landroidx/media3/common/Format;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->initialize(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->isInitialized:Z

    return p1
.end method

.method public isEnded()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink;->isEnded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->isInitialized:Z

    return p0
.end method

.method public isReady(Z)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->isReady(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public join(Z)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/i;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/i;-><init>(Z)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onInputStreamChanged(ILandroidx/media3/common/Format;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/g;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media3/transformer/g;-><init>(ILandroidx/media3/common/Format;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onRendererDisabled()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/q;

    invoke-direct {v0}, Landroidx/media3/transformer/q;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onRendererEnabled(Z)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/m;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/m;-><init>(Z)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onRendererStarted()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/s;

    invoke-direct {v0}, Landroidx/media3/transformer/s;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public onRendererStopped()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/l;

    invoke-direct {v0}, Landroidx/media3/transformer/l;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public release()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/b;

    invoke-direct {v0}, Landroidx/media3/transformer/b;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    :cond_0
    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoSink;->render(JJ)V

    :cond_0
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/c;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/c;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/u;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/u;-><init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/h;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/h;-><init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/j;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/j;-><init>(F)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setStreamTimestampInfo(JJ)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/d;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/transformer/d;-><init>(JJ)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/media3/transformer/p;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/p;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/t;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/t;-><init>(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2
    .param p1    # Landroidx/media3/exoplayer/video/VideoSink;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;

    invoke-interface {v1, p1}, Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;->execute(Landroidx/media3/exoplayer/video/VideoSink;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/transformer/BufferingVideoSink;->pendingOperations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setWakeupListener(Landroidx/media3/exoplayer/Renderer$WakeupListener;)V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/n;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/n;-><init>(Landroidx/media3/exoplayer/Renderer$WakeupListener;)V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public signalEndOfCurrentInputStream()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/e;

    invoke-direct {v0}, Landroidx/media3/transformer/e;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method

.method public signalEndOfInput()V
    .locals 1

    new-instance v0, Landroidx/media3/transformer/o;

    invoke-direct {v0}, Landroidx/media3/transformer/o;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/transformer/BufferingVideoSink;->executeOrDelay(Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;)V

    return-void
.end method
