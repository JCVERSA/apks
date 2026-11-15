.class public final Lcom/yandex/mobile/ads/impl/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fl;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fl;)V
    .locals 1

    const-string v0, "biddingSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ea;->a:Lcom/yandex/mobile/ads/impl/fl;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/f01;
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ea;->a:Lcom/yandex/mobile/ads/impl/fl;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fl;->d()Lcom/yandex/mobile/ads/impl/h01;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ea;->a:Lcom/yandex/mobile/ads/impl/fl;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fl;->d()Lcom/yandex/mobile/ads/impl/h01;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/h01;->e()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/yandex/mobile/ads/impl/e01;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/e01;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/yandex/mobile/ads/impl/e01;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/f01;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/e01;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/e01;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h01;->d()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p1, v1}, Lcom/yandex/mobile/ads/impl/f01;-><init>(JLjava/lang/String;Ljava/util/List;)V

    return-object p0

    :cond_4
    :goto_1
    return-object v1
.end method
