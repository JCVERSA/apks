.class public final Lcom/yandex/mobile/ads/impl/j80;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j80;->a:Lcom/yandex/mobile/ads/impl/uj1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j80;->b:Lcom/yandex/mobile/ads/impl/pe2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j80;->a:Lcom/yandex/mobile/ads/impl/uj1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/uj1;->a(Lcom/yandex/mobile/ads/impl/l80;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/ads/a;I)V
    .locals 2

    .line 1
    const-string v0, "adPlaybackState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    invoke-static {p1, p2}, Lblb;->P0(J)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/j80;->b:Lcom/yandex/mobile/ads/impl/pe2;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/pe2;->a()J

    move-result-wide p1

    .line 4
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/l80;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/l80;-><init>(J)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j80;->a:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/uj1;->a(Lcom/yandex/mobile/ads/impl/l80;)V

    return-void
.end method
