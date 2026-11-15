.class public final synthetic Landroidx/media3/effect/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/effect/VideoFrameProcessingTaskExecutor$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/media3/effect/VideoCompositor$Listener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/VideoCompositor$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/m;->a:Landroidx/media3/effect/VideoCompositor$Listener;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/effect/m;->a:Landroidx/media3/effect/VideoCompositor$Listener;

    invoke-interface {p0, p1}, Landroidx/media3/effect/VideoCompositor$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    return-void
.end method
