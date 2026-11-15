.class public final Lcom/yandex/mobile/ads/impl/da;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/da;->a:Lcom/yandex/mobile/ads/impl/fl;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/ba;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/da;->a:Lcom/yandex/mobile/ads/impl/fl;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fl;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/ba;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ba;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/yandex/mobile/ads/impl/ba;

    return-object v0
.end method
