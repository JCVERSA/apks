.class public final Lcom/yandex/mobile/ads/impl/x92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nd2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/a8;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/a8;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adRequestParametersProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x92;->a:Lcom/yandex/mobile/ads/impl/a8;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x92;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/a8;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "undefined"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "page_id"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x92;->a:Lcom/yandex/mobile/ads/impl/a8;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/a8;->c()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :cond_3
    :goto_0
    const-string p0, "imp_id"

    invoke-static {p0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    sget-object v1, Lcom/yandex/mobile/ads/impl/ts;->h:Lcom/yandex/mobile/ads/impl/ts;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ts;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, p0, v1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
