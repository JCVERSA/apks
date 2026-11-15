.class public final synthetic Landroidx/media3/effect/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

.field public final synthetic c:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/n1;->b:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iput-object p2, p0, Landroidx/media3/effect/n1;->c:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/n1;->b:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iget-object p0, p0, Landroidx/media3/effect/n1;->c:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;

    invoke-static {v0, p0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->b(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;)V

    return-void
.end method
