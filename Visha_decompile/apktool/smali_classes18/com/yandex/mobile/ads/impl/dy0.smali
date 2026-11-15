.class public final Lcom/yandex/mobile/ads/impl/dy0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/tx0;)Ljava/util/Map;
    .locals 4

    const-string v0, "mediatedAdData"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tx0;->b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const-string v2, "mediation_adapter_version"

    invoke-static {v2, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    const-string v3, "mediation_network_name"

    invoke-static {v3, v2}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;->getNetworkSdkVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string p0, "mediation_network_sdk_version"

    invoke-static {p0, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {v0, v2, p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
