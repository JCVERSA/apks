.class public final synthetic Landroidx/media3/exoplayer/hls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/common/MediaItem;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroidx/media3/common/Metadata;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/b;->a:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/exoplayer/hls/b;->c:I

    iput p4, p0, Landroidx/media3/exoplayer/hls/b;->d:I

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/b;->e:Landroidx/media3/common/Metadata;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/b;->a:Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/b;->b:Ljava/lang/Object;

    iget v2, p0, Landroidx/media3/exoplayer/hls/b;->c:I

    iget v3, p0, Landroidx/media3/exoplayer/hls/b;->d:I

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/b;->e:Landroidx/media3/common/Metadata;

    move-object v5, p1

    check-cast v5, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$PlayerListener;->b(Landroidx/media3/common/MediaItem;Ljava/lang/Object;IILandroidx/media3/common/Metadata;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
