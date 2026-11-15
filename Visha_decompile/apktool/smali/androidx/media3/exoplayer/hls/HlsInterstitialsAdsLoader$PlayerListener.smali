.class Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerListener"
.end annotation


# instance fields
.field private final period:Landroidx/media3/common/Timeline$Period;

.field final synthetic this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;-><init>(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->lambda$markAdAsPlayedAndNotifyListeners$1(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->lambda$onMetadata$0(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method

.method private static synthetic lambda$markAdAsPlayedAndNotifyListeners$1(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onAdCompleted(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    return-void
.end method

.method private static synthetic lambda$onMetadata$0(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;->onMetadata(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;)V

    return-void
.end method

.method private markAdAsPlayedAndNotifyListeners(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroidx/media3/common/AdPlaybackState;->withPlayedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1, p2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$400(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v0, Landroidx/media3/exoplayer/hls/a;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/hls/a;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/common/Player;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object v4, v1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v5

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v6

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    new-instance v0, Landroidx/media3/exoplayer/hls/b;

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/hls/b;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;)V

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$300(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;Landroidx/media3/common/util/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/common/Player;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p1, p1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v2

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    invoke-direct {p0, v1, p1, v2, v0}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->markAdAsPlayedAndNotifyListeners(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1

    if-nez p3, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/common/Player;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz p2, :cond_1

    iget p2, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {p2}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$100(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Landroidx/media3/common/Player;

    move-result-object p2

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    iget p3, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p2, p3, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->period:Landroidx/media3/common/Timeline$Period;

    iget-object p2, p2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object p2, p2, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->this$0:Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;

    invoke-static {p3}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->access$200(Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget v0, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget p1, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-direct {p0, p3, p2, v0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->markAdAsPlayedAndNotifyListeners(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void
.end method
