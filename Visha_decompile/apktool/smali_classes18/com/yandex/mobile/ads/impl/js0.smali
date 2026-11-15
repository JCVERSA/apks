.class public final Lcom/yandex/mobile/ads/impl/js0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/uj1;

.field private final b:Lcom/yandex/mobile/ads/impl/pe2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;)V
    .locals 1

    const-string v0, "positionProviderHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDurationHolder"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/js0;->a:Lcom/yandex/mobile/ads/impl/uj1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/js0;->b:Lcom/yandex/mobile/ads/impl/pe2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/ads/a;)I
    .locals 6

    const-string v0, "adPlaybackState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/js0;->a:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/uj1;->b()Lcom/yandex/mobile/ads/impl/pi1;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/js0;->b:Lcom/yandex/mobile/ads/impl/pe2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pe2;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lblb;->t0(J)J

    move-result-wide v2

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/sj1;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Lblb;->t0(J)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/source/ads/a;->f(JJ)I

    move-result p0

    if-ne p0, v1, :cond_0

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/source/ads/a;->e(JJ)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method
