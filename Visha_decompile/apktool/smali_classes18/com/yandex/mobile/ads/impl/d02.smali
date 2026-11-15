.class public final Lcom/yandex/mobile/ads/impl/d02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dc1;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d02;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/g71;)V
    .locals 0

    .line 2
    const-string p0, "nativeAdViewAdapter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/d02;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lcom/yandex/mobile/ads/impl/ja;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/ja;-><init>(Lcom/yandex/mobile/ads/impl/g71;Lcom/yandex/mobile/ads/impl/bp;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d02;->a:Ljava/util/List;

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

    .line 7
    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/g71;->a(Lcom/yandex/mobile/ads/impl/ig;)Lcom/yandex/mobile/ads/impl/jg;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ig;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yandex/mobile/ads/impl/jg;->c(Ljava/lang/Object;)V

    .line 9
    const-string v2, "null cannot be cast to non-null type com.monetization.ads.network.model.Asset<kotlin.Any?>"

    invoke-static {p2, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p2, v0}, Lcom/yandex/mobile/ads/impl/jg;->a(Lcom/yandex/mobile/ads/impl/ig;Lcom/yandex/mobile/ads/impl/yg2;)V

    goto :goto_0

    :cond_2
    return-void
.end method
