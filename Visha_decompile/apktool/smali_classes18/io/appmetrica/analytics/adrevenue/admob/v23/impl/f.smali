.class public final Lio/appmetrica/analytics/adrevenue/admob/v23/impl/f;
.super Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    return-void
.end method


# virtual methods
.method public final varargs process([Ljava/lang/Object;)Z
    .locals 5

    const-class v0, Lcom/google/android/gms/ads/AdValue;

    const-class v1, Lcom/google/android/gms/ads/AdView;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->isArgumentsOfClasses([Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget-object v0, p1, v1

    check-cast v0, Lcom/google/android/gms/ads/AdValue;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    iget-object v2, p0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;->a:Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->BANNER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    const-string v4, "bannerAd"

    invoke-static {v0, v2, v4, v3, p1}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;->a(Lcom/google/android/gms/ads/AdValue;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Lcom/google/android/gms/ads/ResponseInfo;Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/g;->a(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    return v1
.end method
