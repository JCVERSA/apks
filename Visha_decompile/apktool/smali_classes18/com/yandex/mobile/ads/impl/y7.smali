.class public final Lcom/yandex/mobile/ads/impl/y7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kq1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o3;

.field private final b:Lcom/yandex/mobile/ads/impl/c8;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o3;)V
    .locals 1

    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y7;->a:Lcom/yandex/mobile/ads/impl/o3;

    new-instance p1, Lcom/yandex/mobile/ads/impl/c8;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/c8;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y7;->b:Lcom/yandex/mobile/ads/impl/c8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->b()Lcom/yandex/mobile/ads/impl/ts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_type"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/o3;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "block_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_unit_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/y7;->b:Lcom/yandex/mobile/ads/impl/c8;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y7;->a:Lcom/yandex/mobile/ads/impl/o3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/c8;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/pp1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pp1;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
