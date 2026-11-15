.class public final synthetic Lqr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/common/MediaItem;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/media3/common/AdViewProvider;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr4;->a:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Lqr4;->b:Ljava/lang/Object;

    iput-object p3, p0, Lqr4;->c:Landroidx/media3/common/AdViewProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lqr4;->a:Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Lqr4;->b:Ljava/lang/Object;

    iget-object p0, p0, Lqr4;->c:Landroidx/media3/common/AdViewProvider;

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader;->a(Landroidx/media3/common/MediaItem;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/hls/HlsInterstitialsAdsLoader$Listener;)V

    return-void
.end method
