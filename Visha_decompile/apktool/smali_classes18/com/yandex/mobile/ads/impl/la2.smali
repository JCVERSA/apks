.class public final Lcom/yandex/mobile/ads/impl/la2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lq1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/lq1<",
        "Lcom/yandex/mobile/ads/impl/ha2;",
        "Lcom/yandex/mobile/ads/impl/z92;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a8;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/a8;)V
    .locals 1

    const-string v0, "adRequestParametersProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/la2;->a:Lcom/yandex/mobile/ads/impl/a8;

    return-void
.end method

.method private final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/la2;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a8;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-string v3, "null"

    if-nez v2, :cond_1

    move-object v0, v3

    :cond_1
    const-string v2, "page_id"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/la2;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a8;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    const-string p0, "imp_id"

    invoke-static {p0, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 17
    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Lkotlin/Pair;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xq1;ILjava/lang/Object;)Lcom/yandex/mobile/ads/impl/op1;
    .locals 0

    .line 7
    check-cast p3, Lcom/yandex/mobile/ads/impl/ha2;

    .line 8
    const-string p1, "requestConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/la2;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 11
    const-string p2, "code"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object p2, Lcom/yandex/mobile/ads/impl/op1$b;->n:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 13
    const-string p3, "reportType"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "reportData"

    invoke-static {p0, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
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
    check-cast p1, Lcom/yandex/mobile/ads/impl/ha2;

    .line 2
    const-string v0, "requestConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/la2;->a()Ljava/util/Map;

    move-result-object p0

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/op1;

    sget-object v0, Lcom/yandex/mobile/ads/impl/op1$b;->m:Lcom/yandex/mobile/ads/impl/op1$b;

    .line 5
    const-string v1, "reportType"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reportData"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/op1$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/yandex/mobile/ads/impl/op1;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/yandex/mobile/ads/impl/f;)V

    return-object p1
.end method
