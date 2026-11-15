.class public final Lcom/yandex/mobile/ads/impl/q9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/bj1;

.field private final b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q9;->a:Lcom/yandex/mobile/ads/impl/bj1;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q9;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)Lcom/yandex/mobile/ads/impl/vm0;
    .locals 1

    .line 2
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q9;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/vm0;

    if-nez p0, :cond_0

    .line 4
    sget-object p0, Lcom/yandex/mobile/ads/impl/vm0;->b:Lcom/yandex/mobile/ads/impl/vm0;

    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q9;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/bj1;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q9;->a:Lcom/yandex/mobile/ads/impl/bj1;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/vm0;)V
    .locals 1

    .line 5
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdStatus"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q9;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q9;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/yandex/mobile/ads/impl/vm0;->d:Lcom/yandex/mobile/ads/impl/vm0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/vm0;->e:Lcom/yandex/mobile/ads/impl/vm0;

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/bj1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q9;->a:Lcom/yandex/mobile/ads/impl/bj1;

    return-object p0
.end method
