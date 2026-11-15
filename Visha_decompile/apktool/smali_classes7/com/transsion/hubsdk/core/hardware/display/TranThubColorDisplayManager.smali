.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/hardware/display/ITranColorDisplayManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubColorDisplayManager"


# instance fields
.field private mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "color_display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    return-void
.end method


# virtual methods
.method public getMaximumColorTemperature(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->getMaximumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getMinimumColorTemperature(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->getMinimumColorTemperature(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getNightDisplayColorTemperature()I
    .locals 4

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNightDisplayColorTemperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isNightDisplayActivated()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public isNightDisplayAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/hardware/display/TranColorDisplayBridge;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setEyeCareEnabled(Ljava/lang/String;IZIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setEyeCareEnabled:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setNightDisplayActivated(Z)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setNightDisplayActivated(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightDisplayActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setNightDisplayColorTemperature(I)Z
    .locals 3

    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;->setNightDisplayColorTemperature(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightDisplayColorTemperature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setService(Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubColorDisplayManager;->mService:Lcom/transsion/hubsdk/hardware/display/ITranColorDisplayManager;

    return-void
.end method
