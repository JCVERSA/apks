.class public final Lcom/yandex/mobile/ads/impl/bh1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bh1;->a:Lcom/yandex/mobile/ads/impl/g5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/util/LinkedHashMap;
    .locals 3

    const-string v0, "phases"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bh1;->a:Lcom/yandex/mobile/ads/impl/g5;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g5;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li81;->b0(Ljava/lang/Iterable;)Lpc9;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/ah1;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ah1;-><init>(Ljava/util/Set;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/e5;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e5;->a()Lcom/yandex/mobile/ads/impl/f5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/f5;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/util/List;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/e5;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method
