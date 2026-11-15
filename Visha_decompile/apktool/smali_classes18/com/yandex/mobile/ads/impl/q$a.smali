.class final Lcom/yandex/mobile/ads/impl/q$a;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/q;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/q$a;->b:Lcom/yandex/mobile/ads/impl/q;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q$a;->b:Lcom/yandex/mobile/ads/impl/q;

    check-cast p0, Lcom/yandex/mobile/ads/impl/o;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o;->d()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q$a;->b:Lcom/yandex/mobile/ads/impl/q;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/q;->a()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/hu0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hu0;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q$a;->b:Lcom/yandex/mobile/ads/impl/q;

    check-cast p0, Lcom/yandex/mobile/ads/impl/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/yandex/mobile/ads/impl/n;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/n;-><init>(Lcom/yandex/mobile/ads/impl/o;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q$a;->b:Lcom/yandex/mobile/ads/impl/q;

    check-cast p0, Lcom/yandex/mobile/ads/impl/o;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o;->g()I

    move-result p0

    return p0
.end method
