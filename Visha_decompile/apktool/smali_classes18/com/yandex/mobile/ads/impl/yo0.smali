.class public final Lcom/yandex/mobile/ads/impl/yo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/kq1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/oi2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/oi2;)V
    .locals 1

    const-string v0, "requestConfig"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yo0;->a:Lcom/yandex/mobile/ads/impl/oi2;

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

    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_type"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/yo0;->a:Lcom/yandex/mobile/ads/impl/oi2;

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/oi2;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_id"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yo0;->a:Lcom/yandex/mobile/ads/impl/oi2;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/oi2;->b()Ljava/lang/String;

    move-result-object p0

    const-string v2, "category_id"

    invoke-static {v2, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
