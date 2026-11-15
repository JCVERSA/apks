.class public final Lcom/yandex/mobile/ads/impl/gn0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zb2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/vu;

.field private final c:Lcom/yandex/mobile/ads/impl/z12;

.field private final d:Lcom/yandex/mobile/ads/impl/kz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/vu;Lcom/yandex/mobile/ads/impl/z12;Lcom/yandex/mobile/ads/impl/kz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/vu;",
            "Lcom/yandex/mobile/ads/impl/z12;",
            "Lcom/yandex/mobile/ads/impl/kz;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoAdInfo"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "creativeAssetsProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sponsoredAssetProviderCreator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callToActionAssetProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gn0;->a:Lcom/yandex/mobile/ads/impl/zb2;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gn0;->b:Lcom/yandex/mobile/ads/impl/vu;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gn0;->c:Lcom/yandex/mobile/ads/impl/z12;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/gn0;->d:Lcom/yandex/mobile/ads/impl/kz;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/gn0;->a:Lcom/yandex/mobile/ads/impl/zb2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gn0;->b:Lcom/yandex/mobile/ads/impl/vu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/vu;->a(Lcom/yandex/mobile/ads/impl/uu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/gn0;->c:Lcom/yandex/mobile/ads/impl/z12;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/z12;->a()Lcom/yandex/mobile/ads/impl/gz;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    const-string v3, "sponsored"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/gn0;->d:Lcom/yandex/mobile/ads/impl/kz;

    const-string v3, "call_to_action"

    invoke-direct {v1, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/gz;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/yandex/mobile/ads/impl/ig;

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/ig;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    check-cast v4, Lcom/yandex/mobile/ads/impl/ig;

    if-nez v4, :cond_0

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/gz;->a()Lcom/yandex/mobile/ads/impl/ig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
