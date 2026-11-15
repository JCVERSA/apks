.class public final synthetic Ly62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/GlShaderProgram$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/media3/common/VideoFrameProcessor$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/VideoFrameProcessor$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly62;->a:Landroidx/media3/common/VideoFrameProcessor$Listener;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    iget-object p0, p0, Ly62;->a:Landroidx/media3/common/VideoFrameProcessor$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/common/VideoFrameProcessor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method
