.class public final synthetic Landroidx/media3/exoplayer/source/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;

.field public final synthetic c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final synthetic d:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/c;->b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/c;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/c;->d:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/c;->b:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/c;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/c;->d:Ljava/io/IOException;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;->a(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    return-void
.end method
