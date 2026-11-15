.class public final synthetic Landroidx/media3/transformer/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public final synthetic b:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/u;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/transformer/u;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/transformer/u;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object p0, p0, Landroidx/media3/transformer/u;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->a(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
