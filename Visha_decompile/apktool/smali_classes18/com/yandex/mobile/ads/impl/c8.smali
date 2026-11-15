.class public final Lcom/yandex/mobile/ads/impl/c8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ya;

.field private final b:Lcom/yandex/mobile/ads/impl/jj1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ya;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ya;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c8;->a:Lcom/yandex/mobile/ads/impl/ya;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jj1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jj1;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/c8;->b:Lcom/yandex/mobile/ads/impl/jj1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;
    .locals 11

    new-instance v0, Lcom/yandex/mobile/ads/impl/pp1;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->h()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/c8;->a:Lcom/yandex/mobile/ads/impl/ya;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz v1, :cond_0

    const-string v4, "adapter_network_name"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "adapter_version"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "adapter_network_sdk_version"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v7}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v9}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c8;->b:Lcom/yandex/mobile/ads/impl/jj1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/yandex/mobile/ads/impl/pp1;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v4, v5}, Lcom/yandex/mobile/ads/impl/pp1;-><init>(Ljava/util/Map;I)V

    if-eqz v1, :cond_1

    const-string v4, "plugin_type"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "plugin_version"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v6}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/util/Map;)V

    const-string p0, "preload_type"

    invoke-virtual {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->g()Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    :goto_1
    xor-int/lit8 p1, p0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "open_bidding"

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/pp1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_6

    const-string p0, "openbidding"

    const-string p1, "integration_type"

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/pp1;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-object v0
.end method
