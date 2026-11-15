.class public Lio/appmetrica/analytics/adrevenue/fyber/v3/internal/FyberClientModuleEntryPoint;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientEntryPoint;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "ad-revenue-fyber-v3"

    return-object p0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "com.fyber.fairbid.ads.Interstitial"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;->getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;

    move-result-object p0

    new-instance v0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;

    new-instance v1, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

    invoke-direct {v1}, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;-><init>()V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;-><init>(Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;->register(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;)V

    :cond_0
    return-void
.end method
