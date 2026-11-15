.class public final Lcom/yandex/mobile/ads/impl/hl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lu95;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/vq0;->a:Lcom/yandex/mobile/ads/impl/vq0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/vq0;->a()Lu95;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/hl;->a:Lu95;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ps0;)Lcom/yandex/mobile/ads/impl/fl;
    .locals 9

    .line 1
    const-string v0, "localStorage"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    const-string v1, "BiddingSettingsAdUnitIdsSet"

    invoke-interface {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    .line 3
    :cond_0
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    const-string v2, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-interface {p0, v2, v1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v1

    .line 4
    :cond_1
    new-instance v2, Lcom/yandex/mobile/ads/impl/gl;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/gl;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 7
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/yandex/mobile/ads/impl/gl;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ba;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    .line 11
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_4
    const-string v0, "MediationPrefetchLoadTimeoutMillis"

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ps0;->b(Ljava/lang/String;)J

    move-result-wide v4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/yandex/mobile/ads/impl/ps0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 16
    sget-object v7, Lcom/yandex/mobile/ads/impl/hl;->a:Lu95;

    .line 17
    invoke-virtual {v7}, Lu95;->a()Ltd9;

    sget-object v8, Lcom/yandex/mobile/ads/impl/e01;->Companion:Lcom/yandex/mobile/ads/impl/e01$b;

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/e01$b;->serializer()Lef5;

    move-result-object v8

    invoke-static {v8}, Lqn0;->t(Lef5;)Lef5;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lu95;->c(Lk92;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Lcom/yandex/mobile/ads/impl/e01;

    if-eqz v6, :cond_5

    .line 19
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/h01;

    invoke-direct {p0, v4, v5, v0}, Lcom/yandex/mobile/ads/impl/h01;-><init>(JLjava/util/List;)V

    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 p0, 0x0

    goto :goto_3

    .line 22
    :cond_8
    :goto_2
    new-instance v0, Lcom/yandex/mobile/ads/impl/fl;

    invoke-direct {v0, v3, p0}, Lcom/yandex/mobile/ads/impl/fl;-><init>(Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/h01;)V

    move-object p0, v0

    :goto_3
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BiddingSettingsAdUnitIdsInfo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/ps0;Lcom/yandex/mobile/ads/impl/fl;)V
    .locals 7

    .line 24
    const-string v0, "localStorage"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingSettings"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fl;->c()Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/ba;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ba;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ba;->d()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v2}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    const-string v2, "BiddingSettingsAdUnitIdsSet"

    invoke-interface {p0, v2, v0}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    .line 31
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 33
    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    invoke-interface {p0, v2, v1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 35
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fl;->d()Lcom/yandex/mobile/ads/impl/h01;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/h01;->d()J

    move-result-wide v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/h01;->e()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    .line 38
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/e01;

    .line 40
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/e01;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/e01;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    sget-object v5, Lcom/yandex/mobile/ads/impl/hl;->a:Lu95;

    .line 43
    invoke-interface {v5}, Lhd9;->a()Ltd9;

    sget-object v6, Lcom/yandex/mobile/ads/impl/e01;->Companion:Lcom/yandex/mobile/ads/impl/e01$b;

    invoke-virtual {v6}, Lcom/yandex/mobile/ads/impl/e01$b;->serializer()Lef5;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Llz9;->b(Lnd9;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-interface {p0, v4, v3}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_7
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    const-string v3, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-interface {p0, v3, p1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p1

    .line 46
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 48
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 49
    :cond_a
    invoke-interface {p0, v3, v2}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 50
    const-string p1, "MediationPrefetchLoadTimeoutMillis"

    invoke-interface {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationPrefetchSettingsAdUnitIdsInfo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/yandex/mobile/ads/impl/ps0;)V
    .locals 5

    .line 2
    const-string v0, "localStorage"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    const-string v1, "BiddingSettingsAdUnitIdsSet"

    invoke-interface {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v0

    .line 4
    :cond_0
    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    const-string v3, "MediationPrefetchSettingsAdUnitIdsSet"

    invoke-interface {p0, v3, v2}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object v2

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/hl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/hl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {p0, v1}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0, v3}, Lcom/yandex/mobile/ads/impl/ps0;->a(Ljava/lang/String;)V

    return-void
.end method
