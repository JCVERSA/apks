.class public final Lcom/yandex/mobile/ads/impl/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/am1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q9;

.field private final b:Lcom/yandex/mobile/ads/impl/ui1;

.field private final c:Lcom/yandex/mobile/ads/impl/a70;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/q9;Lcom/yandex/mobile/ads/impl/si1;Lcom/yandex/mobile/ads/impl/ui1;Lcom/yandex/mobile/ads/impl/a70;)V
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s6;->a:Lcom/yandex/mobile/ads/impl/q9;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s6;->b:Lcom/yandex/mobile/ads/impl/ui1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s6;->c:Lcom/yandex/mobile/ads/impl/a70;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/di1;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s6;->a:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/q9;->c()Lcom/yandex/mobile/ads/impl/bj1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bj1;->d()Lcom/yandex/mobile/ads/impl/go0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/s6;->b:Lcom/yandex/mobile/ads/impl/ui1;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ui1;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s6;->a:Lcom/yandex/mobile/ads/impl/q9;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/q9;->a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/vm0;

    move-result-object v0

    invoke-static {}, Lcom/yandex/mobile/ads/impl/di1;->a()Lcom/yandex/mobile/ads/impl/di1;

    move-result-object v2

    sget-object v3, Lcom/yandex/mobile/ads/impl/vm0;->b:Lcom/yandex/mobile/ads/impl/vm0;

    if-eq v3, v0, :cond_1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s6;->c:Lcom/yandex/mobile/ads/impl/a70;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a70;->a()Landroidx/media3/common/Player;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    new-instance p0, Lcom/yandex/mobile/ads/impl/di1;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/di1;-><init>(JJ)V

    move-object v2, p0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/di1;->a()Lcom/yandex/mobile/ads/impl/di1;

    move-result-object p0

    return-object p0
.end method
