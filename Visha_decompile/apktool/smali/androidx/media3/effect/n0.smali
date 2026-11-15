.class public final synthetic Landroidx/media3/effect/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/FinalShaderProgramWrapper;

.field public final synthetic b:Landroidx/media3/common/SurfaceInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/SurfaceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/n0;->a:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iput-object p2, p0, Landroidx/media3/effect/n0;->b:Landroidx/media3/common/SurfaceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/n0;->a:Landroidx/media3/effect/FinalShaderProgramWrapper;

    iget-object p0, p0, Landroidx/media3/effect/n0;->b:Landroidx/media3/common/SurfaceInfo;

    invoke-static {v0, p0}, Landroidx/media3/effect/FinalShaderProgramWrapper;->g(Landroidx/media3/effect/FinalShaderProgramWrapper;Landroidx/media3/common/SurfaceInfo;)V

    return-void
.end method
