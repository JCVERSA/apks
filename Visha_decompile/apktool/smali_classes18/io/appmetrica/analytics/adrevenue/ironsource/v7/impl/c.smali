.class public final Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/b;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/b;

    invoke-direct {v0}, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/b;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;->b:Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/b;

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    return-void
.end method


# virtual methods
.method public final onImpressionSuccess(Lcom/ironsource/mediationsdk/impressionData/ImpressionData;)V
    .locals 14

    if-eqz p1, :cond_4

    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;->getAdRevenueReporter()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/c;->b:Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdUnit()Ljava/lang/String;

    move-result-object p0

    new-instance v13, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getRevenue()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getFiniteDoubleOrDefault(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    const-string v1, "USD"

    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Banner"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "Interstitial"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "Rewarded Video"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->OTHER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->BANNER:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->INTERSTITIAL:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->REWARDED:Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getAdNetwork()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPlacement()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/impressionData/ImpressionData;->getPrecision()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/a;

    invoke-direct {v11, p0}, Lio/appmetrica/analytics/adrevenue/ironsource/v7/impl/a;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-interface {v0, v13}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;->reportAutoAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5b58de9 -> :sswitch_2
        0x2dd6bb4c -> :sswitch_1
        0x762a6b4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
