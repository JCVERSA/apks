.class public Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private highFrameRateTip:Ljava/lang/String;

.field private highResolutionTip:Ljava/lang/String;

.field private maxHardwareResolution:Ljava/lang/String;

.field private maxPlatformResolution:Ljava/lang/String;

.field private resolutionTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighFrameRateTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highFrameRateTip:Ljava/lang/String;

    return-object p0
.end method

.method public getHighResolutionTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highResolutionTip:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxHardwareResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxHardwareResolution:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxPlatformResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxPlatformResolution:Ljava/lang/String;

    return-object p0
.end method

.method public getResolutionTip()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->resolutionTip:Ljava/lang/String;

    return-object p0
.end method

.method public setHighFrameRateTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highFrameRateTip:Ljava/lang/String;

    return-void
.end method

.method public setHighResolutionTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highResolutionTip:Ljava/lang/String;

    return-void
.end method

.method public setMaxHardwareResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxHardwareResolution:Ljava/lang/String;

    return-void
.end method

.method public setMaxPlatformResolution(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxPlatformResolution:Ljava/lang/String;

    return-void
.end method

.method public setResolutionTip(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->resolutionTip:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxHardwareResolution:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxPlatformResolution:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->resolutionTip:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highFrameRateTip:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highResolutionTip:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerLimitBean{maxHardwareResolution=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxHardwareResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", maxPlatformResolution=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->maxPlatformResolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resolutionTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->resolutionTip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", highFrameRateTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highFrameRateTip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", highResolutionTip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/appconfig/ControllerLimitBean;->highResolutionTip:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
