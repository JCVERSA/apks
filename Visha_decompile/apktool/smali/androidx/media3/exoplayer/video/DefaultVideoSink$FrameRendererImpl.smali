.class final Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/DefaultVideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FrameRendererImpl"
.end annotation


# instance fields
.field private outputFormat:Landroidx/media3/common/Format;

.field final synthetic this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;Landroidx/media3/exoplayer/video/DefaultVideoSink$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$renderFrame$1()V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$dropFrame$2()V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method private synthetic lambda$dropFrame$2()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFrameDropped(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method

.method private synthetic lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onVideoSizeChanged(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method private synthetic lambda$renderFrame$1()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$600(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoSink$Listener;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->onFirstFrameRendered(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method


# virtual methods
.method public dropFrame()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/video/d;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/d;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$500(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->skip()V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const-string v1, "video/raw"

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/video/e;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/e;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderFrame(JJZ)V
    .locals 7

    if-eqz p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$200(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroid/view/Surface;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$100(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/concurrent/Executor;

    move-result-object p5

    new-instance v0, Landroidx/media3/exoplayer/video/c;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/c;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    invoke-interface {p5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->outputFormat:Landroidx/media3/common/Format;

    if-nez p5, :cond_1

    new-instance p5, Landroidx/media3/common/Format$Builder;

    invoke-direct {p5}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p5

    :cond_1
    move-object v5, p5

    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$400(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    move-result-object v0

    iget-object p5, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p5}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$300(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Landroidx/media3/common/util/Clock;

    move-result-object p5

    invoke-interface {p5}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p3

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->this$0:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->access$500(Landroidx/media3/exoplayer/video/DefaultVideoSink;)Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;->render(J)V

    return-void
.end method
