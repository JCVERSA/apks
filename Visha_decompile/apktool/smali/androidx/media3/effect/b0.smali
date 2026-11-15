.class public final synthetic Landroidx/media3/effect/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/ExternalTextureManager;

.field public final synthetic b:Landroidx/media3/effect/GlShaderProgram;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/GlShaderProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/b0;->a:Landroidx/media3/effect/ExternalTextureManager;

    iput-object p2, p0, Landroidx/media3/effect/b0;->b:Landroidx/media3/effect/GlShaderProgram;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/b0;->a:Landroidx/media3/effect/ExternalTextureManager;

    iget-object p0, p0, Landroidx/media3/effect/b0;->b:Landroidx/media3/effect/GlShaderProgram;

    invoke-static {v0, p0}, Landroidx/media3/effect/ExternalTextureManager;->f(Landroidx/media3/effect/ExternalTextureManager;Landroidx/media3/effect/GlShaderProgram;)V

    return-void
.end method
