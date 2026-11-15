.class public Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PARAMETER_BATTERY:I = 0x4

.field public static final PARAMETER_CLOCK:I = 0x10

.field public static final PARAMETER_NONE:I = 0x0

.field public static final PARAMETER_TEMPERATURE:I = 0x8

.field public static final PARAMETER_TIME:I = 0x1

.field public static final PARAMETER_VOLUME:I = 0x20

.field public static final PARAMETER_WEATHER:I = 0x2


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mColor:I

.field private final mCreatedTime:J

.field public mCustomFilePath:Ljava/lang/String;

.field private final mEffectId:I

.field private final mEffectParameter:I

.field private final mIsHidden:Z

.field private final mIsPrebuilt:Z

.field private final mIsSupportColor:Z

.field private final mIsUnlocked:Z

.field private mPara:I

.field private mPara1:I

.field private mPara2:I

.field private mPara3:I

.field private mPlayTime:I

.field private mType:I


# direct methods
.method public constructor <init>(IIZIZZZJLandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    iput v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    iput p2, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    iput-boolean p3, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    iput p4, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    iput-boolean p5, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    iput-boolean p6, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    iput-boolean p7, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    iput-wide p8, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    iput-object p10, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    return p0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    return-wide v0
.end method

.method public getCustomFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectId()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    return p0
.end method

.method public getEffectParameter()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    return p0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getPara()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    return p0
.end method

.method public getPara1()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    return p0
.end method

.method public getPara2()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    return p0
.end method

.method public getPara3()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    return p0
.end method

.method public getPlayTime()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    return p0
.end method

.method public isHidden()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    return p0
.end method

.method public isPrebuilt()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    return p0
.end method

.method public isSupportColor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    return p0
.end method

.method public isUnlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    return p0
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    return-void
.end method

.method public setCustomFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    return-void
.end method

.method public setPara(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    return-void
.end method

.method public setPara1(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    return-void
.end method

.method public setPara2(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    return-void
.end method

.method public setPara3(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    return-void
.end method

.method public setPlayTime(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranEffectConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSupportColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsSupportColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mEffectParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsUnlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPrebuilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mIsPrebuilt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCreatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCreatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCustomFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mCustomFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPlayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPara3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mPara3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/lighting/TranEffectConfig;->mBundle:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
