.class public final synthetic Landroidx/media3/effect/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/o1;->a:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iput-object p2, p0, Landroidx/media3/effect/o1;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/o1;->a:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iget-object p0, p0, Landroidx/media3/effect/o1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0}, Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;->d(Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
