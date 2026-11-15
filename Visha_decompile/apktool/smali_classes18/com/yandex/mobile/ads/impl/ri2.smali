.class public final Lcom/yandex/mobile/ads/impl/ri2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/lq1<",
        "Lcom/yandex/mobile/ads/impl/oi2;",
        "Lcom/yandex/mobile/ads/impl/ki2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 1

    .line 10
    check-cast p3, Lcom/yandex/mobile/ads/impl/oi2;

    .line 11
    const-string p0, "requestConfiguration"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/oi2;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "page_id"

    invoke-static {p1, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 13
    invoke-interface {p3}, Lcom/yandex/mobile/ads/impl/oi2;->b()Ljava/lang/String;

    move-result-object p1

    const-string p3, "category_id"

    invoke-static {p3, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 14
    sget-object p3, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {p3}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ad_type"

    invoke-static {v0, p3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    filled-new-array {p0, p1, p3}, [Lkotlin/Pair;

    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 18
    const-string p2, "code"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->u:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 20
    const-string p3, "reportType"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "reportData"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 2

    .line 1
    check-cast p1, Lcom/yandex/mobile/ads/impl/oi2;

    .line 2
    const-string p0, "requestConfiguration"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/oi2;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "page_id"

    invoke-static {v0, p0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 4
    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/oi2;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "category_id"

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_type"

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Lkotlin/Pair;

    move-result-object p0

    .line 6
    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->t:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 8
    const-string v1, "reportType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportData"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method
