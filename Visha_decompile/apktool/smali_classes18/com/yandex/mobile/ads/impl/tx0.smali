.class public final Lcom/yandex/mobile/ads/impl/tx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/monetization/ads/mediation/base/a;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/a;)V
    .locals 1

    const-string v0, "mediatedAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tx0;->a:Lcom/monetization/ads/mediation/base/a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tx0;->a:Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getAdObject()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lcom/monetization/ads/mediation/base/model/MediatedAdObject;

    return-object p0
.end method

.method public final b()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tx0;->a:Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getAdapterInfo()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    invoke-direct {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;-><init>()V

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setAdapterVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setNetworkName(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->setNetworkSdkVersion(Ljava/lang/String;)Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->build()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    :goto_1
    check-cast p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    return-object p0
.end method

.method public final c()Z
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tx0;->a:Lcom/monetization/ads/mediation/base/a;

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/a;->getShouldTrackImpressionAutomatically()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
