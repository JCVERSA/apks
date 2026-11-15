.class public final Lcom/yandex/mobile/ads/impl/x90;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/x90$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/w90;

.field private final b:Lcom/yandex/mobile/ads/impl/f90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/w90;Lcom/yandex/mobile/ads/impl/f90;)V
    .locals 1

    const-string v0, "feedItemLoadControllerCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedAdRequestDataProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x90;->a:Lcom/yandex/mobile/ads/impl/w90;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x90;->b:Lcom/yandex/mobile/ads/impl/f90;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/v7;Ljava/util/List;Lwh1;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/v7;",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/n90;",
            ">;",
            "Lwh1<",
            "-",
            "Lcom/yandex/mobile/ads/impl/aa0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lw09;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->c(Lwh1;)Lwh1;

    move-result-object v1

    invoke-direct {v0, v1}, Lw09;-><init>(Lwh1;)V

    new-instance v1, Lcom/yandex/mobile/ads/impl/x90$a;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/impl/x90$a;-><init>(Lw09;)V

    invoke-static {p2}, Li81;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/n90;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/n90;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/o8;->A()Lcom/yandex/mobile/ads/impl/ka0;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/x90;->b:Lcom/yandex/mobile/ads/impl/f90;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "adRequestData"

    invoke-static {p1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "feedItemList"

    invoke-static {p2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yandex/mobile/ads/impl/n90;

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/n90;->c()Lcom/yandex/mobile/ads/impl/b02;

    move-result-object v7

    invoke-interface {v7}, Lcom/yandex/mobile/ads/impl/q61;->a()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    add-int/2addr v6, v7

    goto :goto_1

    :cond_2
    invoke-static {}, Lky5;->e()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->h()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object v5

    :cond_3
    invoke-interface {p2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "feed-page"

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "feed-ads-count"

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lky5;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const/16 v4, 0xfbf

    invoke-static {p1, p2, v3, v4}, Lcom/yandex/mobile/ads/impl/v7;->a(Lcom/yandex/mobile/ads/impl/v7;Ljava/util/Map;Ljava/lang/String;I)Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x90;->a:Lcom/yandex/mobile/ads/impl/w90;

    invoke-virtual {p0, v1, p1, v2}, Lcom/yandex/mobile/ads/impl/w90;->a(Lcom/yandex/mobile/ads/impl/z90;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ka0;)Lcom/yandex/mobile/ads/impl/v90;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/v90;->y()V

    invoke-virtual {v0}, Lw09;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p3}, Lpt1;->c(Lwh1;)V

    :cond_4
    return-object p0
.end method
