.class public final Lio/appmetrica/analytics/impl/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueReporter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Uc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Uc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Uc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/x0;->a:Lio/appmetrica/analytics/impl/Uc;

    return-void
.end method


# virtual methods
.method public final reportAutoAdRevenue(Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/x0;->a:Lio/appmetrica/analytics/impl/Uc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdRevenue()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getCurrency()Ljava/util/Currency;

    move-result-object v0

    invoke-static {p0, v0}, Lio/appmetrica/analytics/AdRevenue;->newBuilder(Ljava/math/BigDecimal;Ljava/util/Currency;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdType()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;->values()[Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/appmetrica/analytics/impl/Tc;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_1
    sget-object v0, Lio/appmetrica/analytics/AdType;->OTHER:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lio/appmetrica/analytics/AdType;->APP_OPEN:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lio/appmetrica/analytics/AdType;->MREC:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lio/appmetrica/analytics/AdType;->INTERSTITIAL:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_5
    sget-object v0, Lio/appmetrica/analytics/AdType;->REWARDED:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_6
    sget-object v0, Lio/appmetrica/analytics/AdType;->BANNER:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_7
    sget-object v0, Lio/appmetrica/analytics/AdType;->NATIVE:Lio/appmetrica/analytics/AdType;

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdType(Lio/appmetrica/analytics/AdType;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdNetwork(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdUnitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdUnitName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementId(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAdPlacementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withAdPlacementName(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getPrecision()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPrecision(Ljava/lang/String;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getPayload()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/AdRevenue$Builder;->withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/AdRevenue$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/AdRevenue$Builder;->build()Lio/appmetrica/analytics/AdRevenue;

    move-result-object p0

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenue;->getAutoCollected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lio/appmetrica/analytics/ModulesFacade;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
