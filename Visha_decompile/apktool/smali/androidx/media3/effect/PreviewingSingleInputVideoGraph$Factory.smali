.class public final Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/PreviewingVideoGraph$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/effect/PreviewingSingleInputVideoGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;

    invoke-direct {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->build()Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;-><init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/VideoFrameProcessor$Factory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoCompositorSettings;Ljava/util/List;J)Landroidx/media3/common/PreviewingVideoGraph;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/DebugViewProvider;",
            "Landroidx/media3/common/VideoGraph$Listener;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;J)",
            "Landroidx/media3/common/PreviewingVideoGraph;"
        }
    .end annotation

    new-instance v10, Landroidx/media3/effect/PreviewingSingleInputVideoGraph;

    move-object v0, p0

    iget-object v2, v0, Landroidx/media3/effect/PreviewingSingleInputVideoGraph$Factory;->videoFrameProcessorFactory:Landroidx/media3/common/VideoFrameProcessor$Factory;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v9}, Landroidx/media3/effect/PreviewingSingleInputVideoGraph;-><init>(Landroid/content/Context;Landroidx/media3/common/VideoFrameProcessor$Factory;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/VideoGraph$Listener;Ljava/util/concurrent/Executor;JLandroidx/media3/effect/PreviewingSingleInputVideoGraph$1;)V

    return-object v10
.end method

.method public supportsMultipleInputs()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
