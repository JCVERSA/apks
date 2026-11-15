.class public final Lcom/yandex/mobile/ads/impl/gi1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p5;

.field private final b:Lcom/yandex/mobile/ads/impl/ri1;

.field private final c:Lcom/yandex/mobile/ads/impl/js0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/ri1;Lcom/yandex/mobile/ads/impl/js0;)V
    .locals 1

    const-string v0, "adPlaybackStateController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionProviderHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoDurationHolder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateChangedListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "loadingAdGroupIndexProvider"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gi1;->a:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gi1;->b:Lcom/yandex/mobile/ads/impl/ri1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/gi1;->c:Lcom/yandex/mobile/ads/impl/js0;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/t;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-interface {p2}, Lcom/google/android/exoplayer2/t;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gi1;->a:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gi1;->c:Lcom/yandex/mobile/ads/impl/js0;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/js0;->a(Lcom/google/android/exoplayer2/source/ads/a;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v0

    const-string v1, "getAdGroup(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/a$a;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gi1;->b:Lcom/yandex/mobile/ads/impl/ri1;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/t;->getPlayWhenReady()Z

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/yandex/mobile/ads/impl/ri1;->a(ZI)V

    :cond_3
    :goto_1
    return-void
.end method
