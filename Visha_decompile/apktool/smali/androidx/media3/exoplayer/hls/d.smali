.class public final synthetic Landroidx/media3/exoplayer/hls/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public final synthetic c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;Landroidx/media3/exoplayer/hls/HlsMediaChunk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/d;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/d;->c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/d;->b:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/d;->c:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;Landroidx/media3/exoplayer/hls/HlsMediaChunk;)V

    return-void
.end method
