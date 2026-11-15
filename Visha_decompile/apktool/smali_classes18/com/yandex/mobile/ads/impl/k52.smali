.class public final Lcom/yandex/mobile/ads/impl/k52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/p5;

.field private final b:Lcom/yandex/mobile/ads/impl/gb;

.field private final c:Lcom/yandex/mobile/ads/impl/uh1;

.field private final d:Lcom/yandex/mobile/ads/impl/vi1;

.field private final e:Lcom/yandex/mobile/ads/impl/pe2;

.field private final f:Lcom/yandex/mobile/ads/impl/n82;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/gb;Lcom/yandex/mobile/ads/impl/uh1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/n82;)V
    .locals 1

    const-string v0, "adPlaybackStateController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adsPlaybackInitializer"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playbackChangesHandler"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateHolder"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoDurationHolder"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "updatedDurationAdPlaybackProvider"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k52;->a:Lcom/yandex/mobile/ads/impl/p5;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k52;->b:Lcom/yandex/mobile/ads/impl/gb;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/k52;->c:Lcom/yandex/mobile/ads/impl/uh1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/k52;->d:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/k52;->e:Lcom/yandex/mobile/ads/impl/pe2;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/k52;->f:Lcom/yandex/mobile/ads/impl/n82;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/a0;)V
    .locals 6

    const-string v0, "timeline"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->u()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a0;->m()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k52;->d:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/vi1;->a(Lcom/google/android/exoplayer2/a0;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k52;->d:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/vi1;->a()Lcom/google/android/exoplayer2/a0$b;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/a0;->j(ILcom/google/android/exoplayer2/a0$b;)Lcom/google/android/exoplayer2/a0$b;

    move-result-object p1

    const-string v0, "getPeriod(...)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/google/android/exoplayer2/a0$b;->e:J

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k52;->e:Lcom/yandex/mobile/ads/impl/pe2;

    invoke-static {v0, v1}, Lblb;->P0(J)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/yandex/mobile/ads/impl/pe2;->a(J)V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k52;->a:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/k52;->f:Lcom/yandex/mobile/ads/impl/n82;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "adPlaybackState"

    invoke-static {p1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/ads/a;->n(J)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    const-string v3, "withContentDurationUs(...)"

    invoke-static {p1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p1, Lcom/google/android/exoplayer2/source/ads/a;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/ads/a$a;->b:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/ads/a;->q(I)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    const-string v4, "withSkippedAdGroup(...)"

    invoke-static {p1, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k52;->a:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k52;->b:Lcom/yandex/mobile/ads/impl/gb;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gb;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/k52;->b:Lcom/yandex/mobile/ads/impl/gb;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gb;->b()V

    :cond_4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k52;->c:Lcom/yandex/mobile/ads/impl/uh1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/uh1;->a()V

    :cond_5
    return-void
.end method
