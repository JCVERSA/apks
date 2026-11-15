.class public final Lcom/yandex/mobile/ads/impl/u41;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/mobile/ads/impl/ca1;",
            "Lcom/yandex/mobile/ads/impl/t41;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 3

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    new-instance v1, Lcom/yandex/mobile/ads/impl/v81;

    invoke-direct {v1, p1}, Lcom/yandex/mobile/ads/impl/v81;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/ca1;->d:Lcom/yandex/mobile/ads/impl/ca1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/g81;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/g81;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    sget-object v1, Lcom/yandex/mobile/ads/impl/ca1;->e:Lcom/yandex/mobile/ads/impl/ca1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/zz1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/zz1;-><init>()V

    invoke-static {v1, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u41;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ca1;)Lcom/yandex/mobile/ads/impl/t41;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u41;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/t41;

    return-object p0
.end method
