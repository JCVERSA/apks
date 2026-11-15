.class Landroidx/media3/effect/SingleInputVideoGraph$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/effect/SingleInputVideoGraph;->registerInput(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private lastProcessedFramePresentationTimeUs:J

.field final synthetic this$0:Landroidx/media3/effect/SingleInputVideoGraph;


# direct methods
.method public constructor <init>(Landroidx/media3/effect/SingleInputVideoGraph;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/effect/SingleInputVideoGraph$1;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/SingleInputVideoGraph$1;->lambda$onOutputFrameRateChanged$1(F)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/effect/SingleInputVideoGraph$1;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/SingleInputVideoGraph$1;->lambda$onOutputFrameAvailableForRendering$2(J)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/effect/SingleInputVideoGraph$1;Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/effect/SingleInputVideoGraph$1;->lambda$onError$3(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/effect/SingleInputVideoGraph$1;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/effect/SingleInputVideoGraph$1;->lambda$onOutputSizeChanged$0(II)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/effect/SingleInputVideoGraph$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/effect/SingleInputVideoGraph$1;->lambda$onEnded$4()V

    return-void
.end method

.method private synthetic lambda$onEnded$4()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->lastProcessedFramePresentationTimeUs:J

    invoke-interface {v0, v1, v2}, Landroidx/media3/common/VideoGraph$Listener;->onEnded(J)V

    return-void
.end method

.method private synthetic lambda$onError$3(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {p0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoGraph$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method

.method private synthetic lambda$onOutputFrameAvailableForRendering$2(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {p0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/VideoGraph$Listener;->onOutputFrameAvailableForRendering(J)V

    return-void
.end method

.method private synthetic lambda$onOutputFrameRateChanged$1(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {p0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoGraph$Listener;->onOutputFrameRateChanged(F)V

    return-void
.end method

.method private synthetic lambda$onOutputSizeChanged$0(II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {p0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$200(Landroidx/media3/effect/SingleInputVideoGraph;)Landroidx/media3/common/VideoGraph$Listener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/VideoGraph$Listener;->onOutputSizeChanged(II)V

    return-void
.end method


# virtual methods
.method public onEnded()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/effect/e1;

    invoke-direct {v1, p0}, Landroidx/media3/effect/e1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/effect/f1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/f1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph$1;Landroidx/media3/common/VideoFrameProcessingException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputFrameAvailableForRendering(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/effect/SingleInputVideoGraph;->access$102(Landroidx/media3/effect/SingleInputVideoGraph;Z)Z

    :cond_0
    iput-wide p1, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->lastProcessedFramePresentationTimeUs:J

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/effect/c1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/effect/c1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph$1;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputFrameRateChanged(F)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/effect/b1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/effect/b1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph$1;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/SingleInputVideoGraph$1;->this$0:Landroidx/media3/effect/SingleInputVideoGraph;

    invoke-static {v0}, Landroidx/media3/effect/SingleInputVideoGraph;->access$000(Landroidx/media3/effect/SingleInputVideoGraph;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/media3/effect/d1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/effect/d1;-><init>(Landroidx/media3/effect/SingleInputVideoGraph$1;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
