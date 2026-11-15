.class public final Lcom/yandex/mobile/ads/impl/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/j80;

.field private final b:Lcom/yandex/mobile/ads/impl/me2;

.field private final c:Lcom/yandex/mobile/ads/impl/r9;

.field private final d:Lcom/yandex/mobile/ads/impl/p5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/j80;Lcom/yandex/mobile/ads/impl/me2;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;)V
    .locals 1

    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fakePositionConfigurator"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoCompletedNotifier"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStateHolder"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateController"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m5;->a:Lcom/yandex/mobile/ads/impl/j80;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/m5;->b:Lcom/yandex/mobile/ads/impl/me2;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/m5;->c:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/m5;->d:Lcom/yandex/mobile/ads/impl/p5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/t;Z)V
    .locals 9

    const-string v0, "player"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m5;->b:Lcom/yandex/mobile/ads/impl/me2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/me2;->b()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getCurrentAdGroupIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m5;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getContentPosition()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/t;->getContentDuration()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, v7

    if-eqz p1, :cond_0

    cmp-long p1, v3, v7

    if-eqz p1, :cond_0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/source/ads/a;->f(JJ)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m5;->c:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/r9;->b()Z

    move-result p1

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-eq v1, v2, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/m5;->d:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p2, v2, v4

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m5;->b:Lcom/yandex/mobile/ads/impl/me2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/me2;->a()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m5;->a:Lcom/yandex/mobile/ads/impl/j80;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/mobile/ads/impl/j80;->a(Lcom/google/android/exoplayer2/source/ads/a;I)V

    :cond_3
    :goto_1
    return-void
.end method
