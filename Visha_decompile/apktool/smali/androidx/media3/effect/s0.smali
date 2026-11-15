.class public final synthetic Landroidx/media3/effect/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/GlShaderProgram;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/GlShaderProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/s0;->a:Landroidx/media3/effect/GlShaderProgram;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/s0;->a:Landroidx/media3/effect/GlShaderProgram;

    invoke-interface {p0}, Landroidx/media3/effect/GlShaderProgram;->signalEndOfCurrentInputStream()V

    return-void
.end method
