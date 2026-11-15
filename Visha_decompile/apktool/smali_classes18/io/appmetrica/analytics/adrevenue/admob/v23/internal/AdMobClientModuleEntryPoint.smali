.class public Lio/appmetrica/analytics/adrevenue/admob/v23/internal/AdMobClientModuleEntryPoint;
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

    const-string p0, "ad-revenue-admob-v23"

    return-object p0
.end method

.method public initClientSide(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 2
    .param p1    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "com.google.android.gms.ads.AdView"

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->detectClassExists(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;->getAdRevenueProcessorsHolder()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;

    move-result-object p0

    new-instance v0, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/a;

    new-instance v1, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;

    invoke-direct {v1}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;-><init>()V

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/adrevenue/admob/v23/impl/a;-><init>(Lio/appmetrica/analytics/adrevenue/admob/v23/impl/d;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessorsHolder;->register(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;)V

    :cond_0
    return-void
.end method
