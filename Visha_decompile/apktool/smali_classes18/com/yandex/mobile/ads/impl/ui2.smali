.class public final Lcom/yandex/mobile/ads/impl/ui2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/wq1;
    .locals 4

    const-string v0, "response"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/wq1;

    iget v1, p0, Lcom/yandex/mobile/ads/impl/xc1;->a:I

    new-instance v2, Lcom/yandex/mobile/ads/impl/ar1;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/xc1;->b:[B

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/ar1;-><init>([B)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xc1;->c:Ljava/util/Map;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    :cond_0
    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/wq1;-><init>(ILcom/yandex/mobile/ads/impl/ar1;Ljava/util/Map;)V

    return-object v0
.end method
