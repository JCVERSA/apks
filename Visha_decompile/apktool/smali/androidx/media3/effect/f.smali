.class public final synthetic Landroidx/media3/effect/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$Task;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/ChainingGlShaderProgramListener;

.field public final synthetic b:Landroidx/media3/common/GlTextureInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/ChainingGlShaderProgramListener;Landroidx/media3/common/GlTextureInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/f;->a:Landroidx/media3/effect/ChainingGlShaderProgramListener;

    iput-object p2, p0, Landroidx/media3/effect/f;->b:Landroidx/media3/common/GlTextureInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/f;->a:Landroidx/media3/effect/ChainingGlShaderProgramListener;

    iget-object p0, p0, Landroidx/media3/effect/f;->b:Landroidx/media3/common/GlTextureInfo;

    invoke-static {v0, p0}, Landroidx/media3/effect/ChainingGlShaderProgramListener;->a(Landroidx/media3/effect/ChainingGlShaderProgramListener;Landroidx/media3/common/GlTextureInfo;)V

    return-void
.end method
