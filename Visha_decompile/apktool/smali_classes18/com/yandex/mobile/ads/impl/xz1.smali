.class public final Lcom/yandex/mobile/ads/impl/xz1;
.super Lcom/yandex/mobile/ads/impl/o41;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w71;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;",
            "Lcom/yandex/mobile/ads/impl/w71;",
            ")V"
        }
    .end annotation

    const-string v0, "assets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/o41;-><init>(Ljava/util/List;Lcom/yandex/mobile/ads/impl/w71;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/a81$a;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/a81$a;",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;)Z"
        }
    .end annotation

    const-string v0, "validator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o41;->b()Lcom/yandex/mobile/ads/impl/w71;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/w71;->c()Z

    invoke-interface {p1, p2}, Lcom/yandex/mobile/ads/impl/a81$a;->a(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
