.class public final synthetic Landroidx/media3/exoplayer/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/d;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    invoke-static {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;)V

    return-void
.end method
