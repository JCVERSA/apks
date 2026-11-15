.class public final Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;


# instance fields
.field public final a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

.field public final b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "Fyber"

    return-object p0
.end method

.method public final varargs process([Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/fyber/fairbid/ads/ImpressionData;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->isArgumentsOfClasses([Ljava/lang/Object;[Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    aget-object v1, v1, v3

    check-cast v1, Lcom/fyber/fairbid/ads/ImpressionData;

    iget-object v2, v0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->b:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;

    move-result-object v2

    invoke-interface {v2}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;->getAdRevenueReporter()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;

    move-result-object v2

    iget-object v0, v0, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/d;->a:Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getPlacementType()Lcom/fyber/fairbid/ads/PlacementType;

    move-result-object v0

    new-instance v15, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getNetPayout()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    const/4 v14, 0x1

    if-nez v0, :cond_1

    const/4 v4, 0x0

    :goto_0
    move-object v7, v4

    goto :goto_1

    :cond_1
    sget-object v4, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v14, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3

    const/4 v7, 0x3

    if-eq v4, v7, :cond_2

    sget-object v4, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->OTHER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :cond_2
    sget-object v4, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->INTERSTITIAL:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :cond_3
    sget-object v4, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->REWARDED:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :cond_4
    sget-object v4, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->BANNER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :goto_1
    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getDemandSource()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getCreativeId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Lcom/fyber/fairbid/ads/ImpressionData;->getPriceAccuracy()Lcom/fyber/fairbid/ads/ImpressionData$PriceAccuracy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/a;

    invoke-direct {v1, v0}, Lio/appmetrica/analytics/adrevenue/fyber/v3/impl/a;-><init>(Lcom/fyber/fairbid/ads/PlacementType;)V

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v15

    move/from16 v16, v14

    move-object v14, v1

    move-object v1, v15

    move v15, v0

    invoke-direct/range {v4 .. v15}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-interface {v2, v1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;->reportAutoAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Ad Revenue from Fyber was reported"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v16
.end method
