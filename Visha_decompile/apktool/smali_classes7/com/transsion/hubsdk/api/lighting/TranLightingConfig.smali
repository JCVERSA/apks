.class public Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TIME_MODE_CUSTOM:I = 0x1

.field public static final TIME_MODE_DEFAULT:I


# instance fields
.field private mBrightness:I

.field public mBundle:Landroid/os/Bundle;

.field public mConfigVersion:I

.field public mCustomEffectVersion:I

.field private mCustomEndHour:I

.field private mCustomEndMinute:I

.field private mCustomStartHour:I

.field private mCustomStartMinute:I

.field public mDoNotDisturb:Z

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsEnable:Z

.field public mLowBattery:Z

.field private final mMaxBrightness:I

.field private final mMinBrightness:I

.field public mPara:I

.field public mPara1:I

.field public mPara2:I

.field public mPara3:I

.field public mSatelliteMode:Z

.field private mSceneConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mStartHour:I

.field private mStartMinute:I

.field private mTimeMode:I


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;IIIIIIILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;IIIIIII",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    iput p2, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    iput p3, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    iput p4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    iput p5, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    iput p6, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    iput p7, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    iput p8, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    iput-object p9, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    return p0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getConfigVersion()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    return p0
.end method

.method public getCustomEffectVersion()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    return p0
.end method

.method public getCustomEndHour()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    return p0
.end method

.method public getCustomEndMinute()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    return p0
.end method

.method public getCustomStartHour()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    return p0
.end method

.method public getCustomStartMinute()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    return p0
.end method

.method public getEndHour()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    return p0
.end method

.method public getEndMinute()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    return p0
.end method

.method public getMaxBrightness()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    return p0
.end method

.method public getMinBrightness()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    return p0
.end method

.method public getPara()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    return p0
.end method

.method public getPara1()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    return p0
.end method

.method public getPara2()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    return p0
.end method

.method public getPara3()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    return p0
.end method

.method public getSceneConfig(I)Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;

    return-object p0
.end method

.method public getSceneConfigs()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/transsion/hubsdk/api/lighting/TranSceneConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getStartHour()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    return p0
.end method

.method public getStartMinute()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    return p0
.end method

.method public getTimeMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    return p0
.end method

.method public isDoNotDisturb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    return p0
.end method

.method public isEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    return p0
.end method

.method public isLowBattery()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    return p0
.end method

.method public isSatelliteMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    return p0
.end method

.method public setBrightness(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    return-void
.end method

.method public setConfigVersion(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    return-void
.end method

.method public setCustomEffectVersion(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    return-void
.end method

.method public setCustomEndHour(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    return-void
.end method

.method public setCustomEndMinute(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    return-void
.end method

.method public setCustomStartHour(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    return-void
.end method

.method public setCustomStartMinute(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    return-void
.end method

.method public setEndHour(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    return-void
.end method

.method public setEndMinute(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    return-void
.end method

.method public setPara(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    return-void
.end method

.method public setPara1(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    return-void
.end method

.method public setPara2(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    return-void
.end method

.method public setPara3(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    return-void
.end method

.method public setStartHour(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    return-void
.end method

.method public setStartMinute(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    return-void
.end method

.method public setTimeMode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranLightingConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mIsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomEffectVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEffectVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMinBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mMaxBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLowBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mLowBattery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDoNotDisturb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mDoNotDisturb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSatelliteMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSatelliteMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStartHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEndHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomStartHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomEndHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mCustomEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mPara3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneConfigs=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    const-string v2, "null"

    const-string v3, "]"

    if-eqz v1, :cond_2

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, ", sceneIds=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    if-lez v1, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mSceneConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranLightingConfig;->mBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
