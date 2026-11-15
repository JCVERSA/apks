.class public Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumColorTemperature(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMinimumColorTemperature(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNightDisplayColorTemperature()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->getNightDisplayColorTemperature()I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospColorDisplayManager;

    :cond_2
    return-object p1
.end method

.method public isNightDisplayActivated()Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->isNightDisplayActivated()Z

    move-result p0

    return p0
.end method

.method public isNightDisplayAvailable(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    .locals 8

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V

    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setNightDisplayActivated(Z)Z

    move-result p0

    return p0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranColorDisplayManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;->setNightDisplayColorTemperature(I)Z

    move-result p0

    return p0
.end method
