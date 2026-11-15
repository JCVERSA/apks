.class public Lcom/mgtv/ssp/bean/config/SspSdkConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;
    }
.end annotation


# instance fields
.field private apiRetry:I

.field private apiRetryDomain:Ljava/lang/String;

.field private cardInfMerge:I

.field private cpRetry:I

.field private cpRetryDomain:Ljava/lang/String;

.field private cxid:Ljava/lang/String;

.field private detailInfMerge:I

.field private downloadServerConfig:Ljava/lang/String;

.field private downloadUrlHls:Ljava/lang/String;

.field private downloadUrlMp4:Ljava/lang/String;

.field private globalConf:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

.field private immersionInfMerge:I

.field private lmFrontPid:I

.field private loadingIcon:Ljava/lang/String;

.field private loadingTime:J

.field private loadingTitle:Ljava/lang/String;

.field private maxDownloadTaskNum:I

.field private maxOfflineDownloadSpeedKB:I

.field private pdata:Ljava/lang/String;

.field private qmSdk:I

.field private render:I

.field private reportH5:Ljava/lang/String;

.field private rtype:Ljava/lang/String;

.field private saveBreakPoint:I

.field private showLoading:I

.field private status:I

.field private supportVip:I

.field private tokenA:Ljava/lang/String;

.field private vipVideoHint:Ljava/lang/String;

.field private vodInfMerge:I

.field private vodSoundOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->saveBreakPoint:I

    return-void
.end method


# virtual methods
.method public getApiRetry()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->apiRetry:I

    return p0
.end method

.method public getApiRetryDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->apiRetryDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getCardInfMerge()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cardInfMerge:I

    return p0
.end method

.method public getCpRetry()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cpRetry:I

    return p0
.end method

.method public getCpRetryDomain()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cpRetryDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getCxid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cxid:Ljava/lang/String;

    return-object p0
.end method

.method public getDetailInfMerge()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->detailInfMerge:I

    return p0
.end method

.method public getDownloadServerConfig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadServerConfig:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadUrlHls()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadUrlHls:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadUrlMp4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadUrlMp4:Ljava/lang/String;

    return-object p0
.end method

.method public getGlobalConf()Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->globalConf:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    return-object p0
.end method

.method public getImmersionInfMerge()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->immersionInfMerge:I

    return p0
.end method

.method public getLmFrontPid()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->lmFrontPid:I

    return p0
.end method

.method public getLoadingIcon()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingIcon:Ljava/lang/String;

    return-object p0
.end method

.method public getLoadingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingTime:J

    return-wide v0
.end method

.method public getLoadingTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDownloadTaskNum()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->maxDownloadTaskNum:I

    return p0
.end method

.method public getMaxOfflineDownloadSpeedKB()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->maxOfflineDownloadSpeedKB:I

    return p0
.end method

.method public getPdata()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->pdata:Ljava/lang/String;

    return-object p0
.end method

.method public getQmSdk()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->qmSdk:I

    return p0
.end method

.method public getRender()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->render:I

    return p0
.end method

.method public getReportH5()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->reportH5:Ljava/lang/String;

    const-string v0, "MG^UNION!2022@"

    invoke-static {p0, v0}, Lcom/mgtv/ssp/utils/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "__ABROAD__"

    invoke-static {}, Lcom/hunantv/imgo/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRtype()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->rtype:Ljava/lang/String;

    return-object p0
.end method

.method public getSaveBreakPoint()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->saveBreakPoint:I

    return p0
.end method

.method public getShowLoading()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->showLoading:I

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->status:I

    return p0
.end method

.method public getSupportVip()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->supportVip:I

    return p0
.end method

.method public getTokenA()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->tokenA:Ljava/lang/String;

    return-object p0
.end method

.method public getVipVideoHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vipVideoHint:Ljava/lang/String;

    return-object p0
.end method

.method public getVodInfMerge()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vodInfMerge:I

    return p0
.end method

.method public getVodSoundOff()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vodSoundOff:I

    return p0
.end method

.method public setApiRetry(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->apiRetry:I

    return-void
.end method

.method public setApiRetryDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->apiRetryDomain:Ljava/lang/String;

    return-void
.end method

.method public setCardInfMerge(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cardInfMerge:I

    return-void
.end method

.method public setCpRetry(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cpRetry:I

    return-void
.end method

.method public setCpRetryDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cpRetryDomain:Ljava/lang/String;

    return-void
.end method

.method public setCxid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->cxid:Ljava/lang/String;

    return-void
.end method

.method public setDetailInfMerge(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->detailInfMerge:I

    return-void
.end method

.method public setDownloadServerConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadServerConfig:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrlHls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadUrlHls:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrlMp4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->downloadUrlMp4:Ljava/lang/String;

    return-void
.end method

.method public setGlobalConf(Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->globalConf:Lcom/mgtv/ssp/bean/config/SspSdkConfig$DomainConfig;

    return-void
.end method

.method public setImmersionInfMerge(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->immersionInfMerge:I

    return-void
.end method

.method public setLmFrontPid(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->lmFrontPid:I

    return-void
.end method

.method public setLoadingIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingIcon:Ljava/lang/String;

    return-void
.end method

.method public setLoadingTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingTime:J

    return-void
.end method

.method public setLoadingTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->loadingTitle:Ljava/lang/String;

    return-void
.end method

.method public setMaxDownloadTaskNum(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->maxDownloadTaskNum:I

    return-void
.end method

.method public setMaxOfflineDownloadSpeedKB(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->maxOfflineDownloadSpeedKB:I

    return-void
.end method

.method public setPdata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->pdata:Ljava/lang/String;

    return-void
.end method

.method public setQmSdk(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->qmSdk:I

    return-void
.end method

.method public setRender(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->render:I

    return-void
.end method

.method public setReportH5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->reportH5:Ljava/lang/String;

    return-void
.end method

.method public setRtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->rtype:Ljava/lang/String;

    return-void
.end method

.method public setSaveBreakPoint(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->saveBreakPoint:I

    return-void
.end method

.method public setShowLoading(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->showLoading:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->status:I

    return-void
.end method

.method public setSupportVip(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->supportVip:I

    return-void
.end method

.method public setTokenA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->tokenA:Ljava/lang/String;

    return-void
.end method

.method public setVipVideoHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vipVideoHint:Ljava/lang/String;

    return-void
.end method

.method public setVodInfMerge(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vodInfMerge:I

    return-void
.end method

.method public setVodSoundOff(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/config/SspSdkConfig;->vodSoundOff:I

    return-void
.end method
