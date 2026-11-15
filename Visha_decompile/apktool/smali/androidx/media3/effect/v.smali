.class public final synthetic Landroidx/media3/effect/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/v;->a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iput-wide p2, p0, Landroidx/media3/effect/v;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/effect/v;->a:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iget-wide v1, p0, Landroidx/media3/effect/v;->b:J

    invoke-static {v0, v1, v2}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->h(Landroidx/media3/effect/DefaultVideoFrameProcessor;J)V

    return-void
.end method
