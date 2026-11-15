.class public final synthetic Landroidx/media3/effect/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/media3/common/DebugViewProvider;

.field public final synthetic e:Landroidx/media3/common/ColorInfo;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

.field public final synthetic h:Ljava/util/concurrent/Executor;

.field public final synthetic i:Landroidx/media3/common/VideoFrameProcessor$Listener;

.field public final synthetic j:Landroidx/media3/common/GlObjectsProvider;

.field public final synthetic k:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/a0;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    iput-object p2, p0, Landroidx/media3/effect/a0;->c:Landroid/content/Context;

    iput-object p3, p0, Landroidx/media3/effect/a0;->d:Landroidx/media3/common/DebugViewProvider;

    iput-object p4, p0, Landroidx/media3/effect/a0;->e:Landroidx/media3/common/ColorInfo;

    iput-boolean p5, p0, Landroidx/media3/effect/a0;->f:Z

    iput-object p6, p0, Landroidx/media3/effect/a0;->g:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iput-object p7, p0, Landroidx/media3/effect/a0;->h:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/media3/effect/a0;->i:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iput-object p9, p0, Landroidx/media3/effect/a0;->j:Landroidx/media3/common/GlObjectsProvider;

    iput-boolean p10, p0, Landroidx/media3/effect/a0;->k:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/media3/effect/a0;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;

    iget-object v1, p0, Landroidx/media3/effect/a0;->c:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/effect/a0;->d:Landroidx/media3/common/DebugViewProvider;

    iget-object v3, p0, Landroidx/media3/effect/a0;->e:Landroidx/media3/common/ColorInfo;

    iget-boolean v4, p0, Landroidx/media3/effect/a0;->f:Z

    iget-object v5, p0, Landroidx/media3/effect/a0;->g:Landroidx/media3/effect/VideoFrameProcessingTaskExecutor;

    iget-object v6, p0, Landroidx/media3/effect/a0;->h:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/media3/effect/a0;->i:Landroidx/media3/common/VideoFrameProcessor$Listener;

    iget-object v8, p0, Landroidx/media3/effect/a0;->j:Landroidx/media3/common/GlObjectsProvider;

    iget-boolean v9, p0, Landroidx/media3/effect/a0;->k:Z

    invoke-static/range {v0 .. v9}, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;->a(Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory;Landroid/content/Context;Landroidx/media3/common/DebugViewProvider;Landroidx/media3/common/ColorInfo;ZLandroidx/media3/effect/VideoFrameProcessingTaskExecutor;Ljava/util/concurrent/Executor;Landroidx/media3/common/VideoFrameProcessor$Listener;Landroidx/media3/common/GlObjectsProvider;Z)Landroidx/media3/effect/DefaultVideoFrameProcessor;

    move-result-object p0

    return-object p0
.end method
