.class public final Lcom/yandex/mobile/ads/impl/w5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/w5$a;,
        Lcom/yandex/mobile/ads/impl/w5$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/p5;

.field private final c:Lcom/yandex/mobile/ads/impl/vi1;

.field private final d:Lcom/yandex/mobile/ads/impl/zi1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p9;->b()Lcom/yandex/mobile/ads/impl/r9;

    move-result-object v3

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/p9;->c()Lcom/yandex/mobile/ads/impl/p5;

    move-result-object v4

    .line 3
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ti1;->d()Lcom/yandex/mobile/ads/impl/vi1;

    move-result-object v5

    .line 4
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ti1;->e()Lcom/yandex/mobile/ads/impl/zi1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/w5;-><init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/zi1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/p5;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/zi1;)V
    .locals 1

    .line 6
    const-string v0, "adStateDataController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adStateHolder"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adPlaybackStateController"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerStateHolder"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "playerVolumeController"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/w5;->a:Lcom/yandex/mobile/ads/impl/r9;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/w5;->b:Lcom/yandex/mobile/ads/impl/p5;

    .line 10
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/w5;->c:Lcom/yandex/mobile/ads/impl/vi1;

    .line 11
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/w5;->d:Lcom/yandex/mobile/ads/impl/zi1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/v4;Lcom/yandex/mobile/ads/impl/w5$b;Lcom/yandex/mobile/ads/impl/w5$a;)V
    .locals 5

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDiscardType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adDiscardListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v4;->b()I

    move-result p1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/w5;->b:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/p5;->a()Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->g(II)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/yandex/mobile/ads/impl/w5$b;->c:Lcom/yandex/mobile/ads/impl/w5$b;

    const-wide/16 v3, 0x0

    if-ne v2, p2, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/a;->d(I)Lcom/google/android/exoplayer2/source/ads/a$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/source/ads/a$a;->c:I

    :goto_0
    if-ge p1, p2, :cond_2

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->g(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->p(II)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/ads/a;->l(J)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->g(II)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplayer2/source/ads/a;->p(II)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplayer2/source/ads/a;->l(J)Lcom/google/android/exoplayer2/source/ads/a;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    :cond_2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w5;->b:Lcom/yandex/mobile/ads/impl/p5;

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/p5;->a(Lcom/google/android/exoplayer2/source/ads/a;)V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w5;->d:Lcom/yandex/mobile/ads/impl/zi1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zi1;->b()V

    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/w5$a;->a()V

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/w5;->c:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/w5;->a:Lcom/yandex/mobile/ads/impl/r9;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/cj1;)V

    :cond_3
    return-void
.end method
