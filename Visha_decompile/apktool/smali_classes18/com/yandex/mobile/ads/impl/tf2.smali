.class public final Lcom/yandex/mobile/ads/impl/tf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bm1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/r9;

.field private final b:Lcom/yandex/mobile/ads/impl/uj1;

.field private final c:Lcom/yandex/mobile/ads/impl/pe2;

.field private final d:Lcom/yandex/mobile/ads/impl/vi1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/r9;Lcom/yandex/mobile/ads/impl/ti1;Lcom/yandex/mobile/ads/impl/uj1;Lcom/yandex/mobile/ads/impl/pe2;Lcom/yandex/mobile/ads/impl/vi1;)V
    .locals 1

    const-string v0, "adStateHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerStateController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "positionProviderHolder"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "videoDurationHolder"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "playerStateHolder"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tf2;->a:Lcom/yandex/mobile/ads/impl/r9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tf2;->b:Lcom/yandex/mobile/ads/impl/uj1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tf2;->c:Lcom/yandex/mobile/ads/impl/pe2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/tf2;->d:Lcom/yandex/mobile/ads/impl/vi1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ci1;
    .locals 9

    new-instance v0, Lcom/yandex/mobile/ads/impl/ci1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tf2;->b:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/uj1;->a()Lcom/yandex/mobile/ads/impl/sj1;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/tf2;->b:Lcom/yandex/mobile/ads/impl/uj1;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/uj1;->b()Lcom/yandex/mobile/ads/impl/pi1;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/sj1;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tf2;->a:Lcom/yandex/mobile/ads/impl/r9;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/r9;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tf2;->d:Lcom/yandex/mobile/ads/impl/vi1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vi1;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/pi1;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/tf2;->c:Lcom/yandex/mobile/ads/impl/pe2;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/pe2;->a()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tf2;->c:Lcom/yandex/mobile/ads/impl/pe2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pe2;->a()J

    move-result-wide v3

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/ci1;-><init>(JJ)V

    return-object v0
.end method
