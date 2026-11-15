.class public final Lcom/yandex/mobile/ads/impl/ei2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/mobile/ads/impl/n92$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->d:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Screen is locked"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->e:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Asset value %s doesn\'t match view value"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->f:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "No ad view"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->g:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "No valid ads in ad unit"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->h:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "No visible required assets"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->i:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Ad view is not added to hierarchy"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->j:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Ad is not visible for percent"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->k:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Required asset %s is not visible in ad view"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->l:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Required asset %s is not subview of ad view"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->c:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Unknown error, that shouldn\'t happen"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->m:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Ad view is hidden"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->n:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "View is too small"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    sget-object v0, Lcom/yandex/mobile/ads/impl/n92$a;->o:Lcom/yandex/mobile/ads/impl/n92$a;

    const-string v1, "Visible area of an ad view is too small"

    invoke-static {v0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    filled-new-array/range {v2 .. v14}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/ei2;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/n92;)Ljava/lang/String;
    .locals 3

    const-string v0, "validationResult"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n92;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/n92;->b()Lcom/yandex/mobile/ads/impl/n92$a;

    move-result-object p0

    sget-object v1, Lcom/yandex/mobile/ads/impl/ei2;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    sget-object v1, Lhz9;->a:Lhz9;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "format(...)"

    invoke-static {v0, v1, p0, v2}, Lcom/yandex/mobile/ads/impl/z0;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Visibility error"

    :goto_0
    return-object p0
.end method
