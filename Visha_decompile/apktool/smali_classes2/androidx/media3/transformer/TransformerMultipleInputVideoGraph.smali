.class final Landroidx/media3/transformer/TransformerMultipleInputVideoGraph;
.super Landroidx/media3/effect/MultipleInputVideoGraph;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/TransformerVideoGraph;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/TransformerMultipleInputVideoGraph$Factory;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/VideoFrameProcessor$Factory;",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/DebugViewProvider;",
            "Landroidx/media3/common/VideoGraph$Listener;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;JZ)V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p11}, Landroidx/media3/effect/MultipleInputVideoGraph;-><init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;JZ)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;JZLandroidx/media3/transformer/TransformerMultipleInputVideoGraph$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Landroidx/media3/transformer/TransformerMultipleInputVideoGraph;-><init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;JZ)V

    return-void
.end method


# virtual methods
.method public createInput(I)Landroidx/media3/transformer/GraphInput;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/VideoFrameProcessingException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/effect/MultipleInputVideoGraph;->registerInput(I)V

    new-instance v0, Landroidx/media3/transformer/VideoFrameProcessingWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/effect/MultipleInputVideoGraph;->getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/effect/MultipleInputVideoGraph;->getInitialTimestampOffsetUs()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/media3/transformer/VideoFrameProcessingWrapper;-><init>(Landroidx/media3/common/VideoFrameProcessor;Ljava/util/List;J)V

    return-object v0
.end method

.method public renderOutputFrameWithMediaPresentationTime()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/effect/MultipleInputVideoGraph;->getCompositionVideoFrameProcessor()Landroidx/media3/common/VideoFrameProcessor;

    move-result-object p0

    const-wide/16 v0, -0x3

    invoke-interface {p0, v0, v1}, Landroidx/media3/common/VideoFrameProcessor;->renderOutputFrame(J)V

    return-void
.end method
