.class public Lcom/monetization/ads/mediation/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdObject()Lcom/monetization/ads/mediation/base/model/MediatedAdObject;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAdapterInfo()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;
    .locals 0

    new-instance p0, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;

    invoke-direct {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/monetization/ads/mediation/base/MediatedAdapterInfo$Builder;->build()Lcom/monetization/ads/mediation/base/MediatedAdapterInfo;

    move-result-object p0

    return-object p0
.end method

.method public getShouldTrackImpressionAutomatically()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
