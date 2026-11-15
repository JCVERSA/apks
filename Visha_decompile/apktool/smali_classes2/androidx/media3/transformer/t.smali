.class public final synthetic Landroidx/media3/transformer/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/t;->a:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/t;->a:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    invoke-static {p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->e(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
