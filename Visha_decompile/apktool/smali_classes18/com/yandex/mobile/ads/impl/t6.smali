.class public final Lcom/yandex/mobile/ads/impl/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bm1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/vi1;

.field private final c:Lcom/yandex/mobile/ads/impl/b70;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/vi1;Lcom/yandex/mobile/ads/impl/b70;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateHolder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerProvider"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t6;->a:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/t6;->b:Lcom/yandex/mobile/ads/impl/vi1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/t6;->c:Lcom/yandex/mobile/ads/impl/b70;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ci1;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/t6;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r9;->c()Lcom/yandex/mobile/ads/impl/cj1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/cj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/t6;->b:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/t6;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/r9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/wm0;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ci1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/wm0;->b:Lcom/yandex/mobile/ads/impl/wm0;

    if-eq v3, v0, :cond_1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t6;->c:Lcom/yandex/mobile/ads/impl/b70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b70;->a()Lcom/google/android/exoplayer2/t;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/t;->getDuration()J

    move-result-wide v2

    new-instance p0, Lcom/yandex/mobile/ads/impl/ci1;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ci1;-><init>(JJ)V

    move-object v2, p0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ci1;->a()Lcom/yandex/mobile/ads/impl/ci1;

    move-result-object p0

    return-object p0
.end method
