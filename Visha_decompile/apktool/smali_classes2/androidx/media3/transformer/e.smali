.class public final synthetic Landroidx/media3/transformer/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    invoke-interface {p1}, Landroidx/media3/exoplayer/video/VideoSink;->signalEndOfCurrentInputStream()V

    return-void
.end method
