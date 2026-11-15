.class public final Lcom/yandex/mobile/ads/impl/l71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dc1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g41;

.field private b:Lcom/yandex/mobile/ads/impl/g71;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g41;Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l71;->a:Lcom/yandex/mobile/ads/impl/g41;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/l71;->b:Lcom/yandex/mobile/ads/impl/g71;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l71;->b:Lcom/yandex/mobile/ads/impl/g71;

    if-eqz v0, :cond_1

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l71;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ig;

    .line 15
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v2

    .line 16
    instance-of v3, v2, Lcom/yandex/mobile/ads/impl/y00;

    if-eqz v3, :cond_0

    .line 17
    check-cast v2, Lcom/yandex/mobile/ads/impl/y00;

    .line 18
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/yandex/mobile/ads/impl/y00;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 0

    .line 1
    const-string p0, "nativeAdViewAdapter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/g71;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;)V
    .locals 3

    .line 3
    const-string v0, "nativeAdViewAdapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickListenerConfigurator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/l71;->b:Lcom/yandex/mobile/ads/impl/g71;

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/l71;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/g41;->e()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/yandex/mobile/ads/impl/ra;

    .line 7
    new-instance v2, Lcom/yandex/mobile/ads/impl/uh2;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/uh2;-><init>()V

    .line 8
    invoke-direct {v1, p1, p2, v0, v2}, Lcom/yandex/mobile/ads/impl/ra;-><init>(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;Lcom/yandex/mobile/ads/impl/vr0;Lcom/yandex/mobile/ads/impl/uh2;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/l71;->a:Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/ig;

    .line 10
    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/yandex/mobile/ads/impl/jg;->c(Ljava/lang/Object;)V

    .line 12
    const-string v2, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<kotlin.Any?>"

    invoke-static {p2, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Lcom/yandex/mobile/ads/impl/jg;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;)V

    goto :goto_0

    :cond_2
    return-void
.end method
