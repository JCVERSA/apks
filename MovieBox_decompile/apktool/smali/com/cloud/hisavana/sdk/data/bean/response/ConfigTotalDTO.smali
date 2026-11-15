.class public Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    }
.end annotation


# instance fields
.field private abTestEnable:Ljava/lang/Boolean;

.field private adInternalBlackBrands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adInternalRequestEnable:Ljava/lang/Boolean;

.field private antifraudPowerEnable:Ljava/lang/Boolean;

.field private antifraudSubfunctionControl:Ljava/lang/String;

.field private cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

.field private clickDataSyncTimeInterval:Ljava/lang/Integer;

.field private cloudControlCacheInterval:Ljava/lang/Integer;

.field private cloudControlVersion:Ljava/lang/String;

.field private codeSeats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;"
        }
    .end annotation
.end field

.field private customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

.field private defaultAdRequestTimeInterval:Ljava/lang/Integer;

.field private extInfo:Ljava/lang/String;

.field private initOmIdEnable:Ljava/lang/Boolean;

.field private initPolyGammaEnable:Z

.field private preConnectEnable:Ljava/lang/Boolean;

.field private showDataSyncTimeInterval:Ljava/lang/Integer;

.field private showRuStyle:Z

.field private showTrackingNewPowerEnable:Z

.field private sspUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    .line 6
    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getAbTestEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getAdInternalBlackBrands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalBlackBrands:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdInternalRequestEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalRequestEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public getAntifraudPowerEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudPowerEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAntifraudSubfunctionControl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudSubfunctionControl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5a0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getClickDataSyncTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getCloudControlCacheInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloudControlVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomConfigs()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->extInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPreConnectEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowDataSyncTimeInterval()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getSspUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->sspUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInitPolyGammaEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOmIdEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isShowRuStyle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowTrackingNewPowerEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAbTestEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAntifraudPowerEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudPowerEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAntifraudSubfunctionControl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->antifraudSubfunctionControl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCdnVersionAddressRequestTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setClickDataSyncTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCloudControlCacheInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setCloudControlVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    .line 2
    .line 3
    return-void
.end method

.method public setInitPolyGammaEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreConnectEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setShowDataSyncTimeInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingNewPowerEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSspUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->sspUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConfigTotalDTO{showTrackingNewPowerEnable="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showTrackingNewPowerEnable:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", cloudControlVersion=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlVersion:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", preConnectEnable="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->preConnectEnable:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", codeSeats="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->codeSeats:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", cdnVersionAddressRequestTimeInterval="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cdnVersionAddressRequestTimeInterval:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", cloudControlCacheInterval="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->cloudControlCacheInterval:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", adInternalBlackBrands="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalBlackBrands:Ljava/util/List;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", showRUStyle="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showRuStyle:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", abTestEnable="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->abTestEnable:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ", initPolyGammaEnable="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initPolyGammaEnable:Z

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", adInternalRequestEnable="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->adInternalRequestEnable:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", showDataSyncTimeInterval="

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->showDataSyncTimeInterval:Ljava/lang/Integer;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ", clickDataSyncTimeInterval="

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->clickDataSyncTimeInterval:Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, ", initOmIdEnable="

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->initOmIdEnable:Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, ", extInfo="

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->extInfo:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v1, ", customConfigs="

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->customConfigs:Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const/16 v1, 0x7d

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0
.end method
