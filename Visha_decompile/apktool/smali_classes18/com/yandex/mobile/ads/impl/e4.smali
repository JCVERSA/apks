.class public final Lcom/yandex/mobile/ads/impl/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p5;

.field private final b:Lcom/yandex/mobile/ads/impl/c3;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/c3;)V
    .locals 1

    const-string v0, "videoDurationHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBreakTimingProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/e4;->a:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/e4;->b:Lcom/yandex/mobile/ads/impl/c3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ht;)I
    .locals 10

    const-string v0, "adBreakPosition"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/e4;->b:Lcom/yandex/mobile/ads/impl/c3;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/c3;->a(Lcom/yandex/mobile/ads/impl/ht;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/e4;->a:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    const/4 v4, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    add-int/lit8 v4, p0, -0x1

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4
.end method
