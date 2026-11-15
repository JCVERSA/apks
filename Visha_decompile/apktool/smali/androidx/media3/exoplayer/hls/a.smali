.class public final synthetic Landroidx/media3/exoplayer/hls/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/common/MediaItem;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/a;->a:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/a;->b:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/hls/a;->c:I

    iput p4, p0, Landroidx/media3/exoplayer/hls/a;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/a;->a:Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/a;->b:Ljava/lang/Object;

    iget v2, p0, Landroidx/media3/exoplayer/hls/a;->c:I

    iget p0, p0, Landroidx/media3/exoplayer/hls/a;->d:I

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    invoke-static {v0, v1, v2, p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
