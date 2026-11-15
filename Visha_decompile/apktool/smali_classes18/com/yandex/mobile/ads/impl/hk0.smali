.class public final Lcom/yandex/mobile/ads/impl/hk0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/hk0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ek0;

.field private final b:Lcom/yandex/mobile/ads/impl/tb1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ek0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ek0;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/tb1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/tb1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/hk0;-><init>(Lcom/yandex/mobile/ads/impl/ek0;Lcom/yandex/mobile/ads/impl/tb1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ek0;Lcom/yandex/mobile/ads/impl/tb1;)V
    .locals 1

    .line 4
    const-string v0, "imageValuesProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoUrlsProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hk0;->a:Lcom/yandex/mobile/ads/impl/ek0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hk0;->b:Lcom/yandex/mobile/ads/impl/tb1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/s41;)Lcom/yandex/mobile/ads/impl/hk0$a;
    .locals 6

    const-string v0, "nativeAdBlock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->b()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/s41;->c()Lcom/yandex/mobile/ads/impl/y61;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->e()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hk0;->a:Lcom/yandex/mobile/ads/impl/ek0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "nativeAds"

    invoke-static {v1, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/g41;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/g41;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/g41;->e()Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/yandex/mobile/ads/impl/ek0;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lz71;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/hk0;->a:Lcom/yandex/mobile/ads/impl/ek0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "nativeAdResponse"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/y61;->c()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/mobile/ads/impl/b30;

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/b30;->d()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lz71;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hk0;->b:Lcom/yandex/mobile/ads/impl/tb1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tb1;->c(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v1, p0}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o8;->Q()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    :cond_4
    invoke-static {p0, v1}, Lze9;->m(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/mobile/ads/impl/xj0;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/xj0;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {p1, v0}, Lze9;->k(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/yandex/mobile/ads/impl/hk0$a;

    invoke-direct {v1, v0, p1, p0}, Lcom/yandex/mobile/ads/impl/hk0$a;-><init>(Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;)V

    return-object v1
.end method
