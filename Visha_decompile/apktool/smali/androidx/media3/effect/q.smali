.class public final synthetic Landroidx/media3/effect/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/FinalShaderProgramWrapper$OnInputStreamProcessedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Landroidx/media3/common/VideoFrameProcessor$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/q;->a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iput-object p2, p0, Landroidx/media3/effect/q;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/media3/effect/q;->c:Landroidx/media3/common/VideoFrameProcessor$Listener;

    return-void
.end method


# virtual methods
.method public final onInputStreamProcessed()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/effect/q;->a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iget-object v1, p0, Landroidx/media3/effect/q;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/media3/effect/q;->c:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-static {v0, v1, p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->f(Landroidx/media3/effect/DefaultVideoFrameProcessor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;)V

    return-void
.end method
