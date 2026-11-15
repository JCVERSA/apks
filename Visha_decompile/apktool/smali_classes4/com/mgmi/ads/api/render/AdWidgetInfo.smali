.class public Lcom/mgmi/ads/api/render/AdWidgetInfo;
.super Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/AdWidgetInfoImp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/ads/api/render/AdWidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SchGuideA:I

.field private SchGuideM:I

.field private contLabel:Ljava/lang/String;

.field private cornerType:Lcom/mgmi/ads/api/f;

.field private countDown:I

.field private dianaData:Ljava/lang/String;

.field private duration:I

.field private incentEntryce:Ljava/lang/String;

.field private isAdComplete:Z

.field private isAutoLand:Z

.field private isPlayerUse:Z

.field private loaderInterface:Lcom/mgmi/ads/api/a/b;

.field private mAdDiscription:Ljava/lang/String;

.field private mAdDrationRemain:I

.field private mAdLogEnnable:Z

.field private mAdOrigin:Ljava/lang/String;

.field private mAidColor:I

.field private mAwayAppType:Lcom/mgmi/ads/api/d;

.field private mClickThrought:Ljava/lang/String;

.field private mClickUrl:Ljava/lang/String;

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mResType:I

.field private mResourceUrl:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;

.field private mVast:Lcom/mgmi/model/VASTAd;

.field private mWidgetType:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private pauseType:I

.field private preLoad:Z

.field private rollTime:I

.field private thumbnailPic:Ljava/lang/String;

.field private timeType:I

.field private triggeringTime:F

.field private uuid:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private viewTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/ads/api/render/AdWidgetInfo$1;

    invoke-direct {v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo$1;-><init>()V

    sput-object v0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDrationRemain:I

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    .line 14
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResType:I

    .line 15
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorCode:I

    .line 16
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorMsg:Ljava/lang/String;

    .line 17
    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAwayAppType:Lcom/mgmi/ads/api/d;

    .line 18
    iput-boolean v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAutoLand:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickUrl:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickThrought:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResourceUrl:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mTitleText:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDrationRemain:I

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    .line 4
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResType:I

    .line 5
    iput v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorCode:I

    .line 6
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorMsg:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    iput-object v1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAwayAppType:Lcom/mgmi/ads/api/d;

    .line 8
    iput-boolean v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAutoLand:Z

    .line 9
    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    .line 10
    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public autoLand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAutoLand:Z

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAdDurationRemain()I
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDrationRemain:I

    return p0
.end method

.method public getAdLogoAndOriginName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    return-object p0
.end method

.method public getAdOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getAidColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAidColor:I

    return p0
.end method

.method public getAwayAppType()Lcom/mgmi/ads/api/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAwayAppType:Lcom/mgmi/ads/api/d;

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getClickThrought()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickThrought:Ljava/lang/String;

    return-object p0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getContLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->contLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getCornerType()Lcom/mgmi/ads/api/f;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->cornerType:Lcom/mgmi/ads/api/f;

    return-object p0
.end method

.method public getCountDown()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->countDown:I

    return p0
.end method

.method public getDianaData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->dianaData:Ljava/lang/String;

    return-object p0
.end method

.method public getDiscription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDiscription:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->duration:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getIncentEntryce()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->incentEntryce:Ljava/lang/String;

    return-object p0
.end method

.method public getLoaderInterface()Lcom/mgmi/ads/api/a/b;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->loaderInterface:Lcom/mgmi/ads/api/a/b;

    return-object p0
.end method

.method public getMid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->mid:Ljava/lang/String;

    return-object p0
.end method

.method public getPauseType()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->pauseType:I

    return p0
.end method

.method public getPreLoad()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->preLoad:Z

    return p0
.end method

.method public getResType()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResType:I

    return p0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRollTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->rollTime:I

    return p0
.end method

.method public getSchGuideA()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->SchGuideA:I

    return p0
.end method

.method public getSchGuideM()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->SchGuideM:I

    return p0
.end method

.method public getThumbnailPic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->thumbnailPic:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mTitleText:Ljava/lang/String;

    return-object p0
.end method

.method public getTriggeringTime()F
    .locals 0

    iget p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->triggeringTime:F

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValuesTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->viewTag:Ljava/lang/String;

    return-object p0
.end method

.method public getVast()Lcom/mgmi/model/VASTAd;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mVast:Lcom/mgmi/model/VASTAd;

    return-object p0
.end method

.method public getWidgetType()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method public isAdComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAdComplete:Z

    return p0
.end method

.method public isAdLogEnnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdLogEnnable:Z

    return p0
.end method

.method public isPlayerUse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isPlayerUse:Z

    return p0
.end method

.method public setAdComplete()Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAdComplete:Z

    return-object p0
.end method

.method public setAdDrationRemain(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDrationRemain:I

    return-void
.end method

.method public setAdLogEnnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdLogEnnable:Z

    return-void
.end method

.method public setAdOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdOrigin:Ljava/lang/String;

    return-void
.end method

.method public setAidColor(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAidColor:I

    return-object p0
.end method

.method public setAutoLand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isAutoLand:Z

    return-void
.end method

.method public setAwayAppType(Lcom/mgmi/ads/api/d;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAwayAppType:Lcom/mgmi/ads/api/d;

    return-object p0
.end method

.method public setClickThrought(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickThrought:Ljava/lang/String;

    return-object p0
.end method

.method public setClickUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setContLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->contLabel:Ljava/lang/String;

    return-void
.end method

.method public setCornerType(Lcom/mgmi/ads/api/f;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->cornerType:Lcom/mgmi/ads/api/f;

    return-object p0
.end method

.method public setCountDown(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->countDown:I

    return-void
.end method

.method public setDianaData(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->dianaData:Ljava/lang/String;

    return-object p0
.end method

.method public setDiscription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mAdDiscription:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->duration:I

    return-void
.end method

.method public setErrorCode(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorCode:I

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setIncentEntryce(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->incentEntryce:Ljava/lang/String;

    return-object p0
.end method

.method public setLoaderInterface(Lcom/mgmi/ads/api/a/b;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->loaderInterface:Lcom/mgmi/ads/api/a/b;

    return-object p0
.end method

.method public setPauseType(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->pauseType:I

    return-void
.end method

.method public setPlayerUse(Z)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->isPlayerUse:Z

    return-object p0
.end method

.method public setPreLoad(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->preLoad:Z

    return-void
.end method

.method public setResType(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResType:I

    return-void
.end method

.method public setResourceUrl(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setRollTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->rollTime:I

    return-void
.end method

.method public setSchGuideA(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->SchGuideA:I

    return-void
.end method

.method public setSchGuideM(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->SchGuideM:I

    return-void
.end method

.method public setThumnailPic(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->thumbnailPic:Ljava/lang/String;

    return-object p0
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mTitleText:Ljava/lang/String;

    return-void
.end method

.method public setTriggeringTime(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->triggeringTime:F

    return-void
.end method

.method public setUuid(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setValuesTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->viewTag:Ljava/lang/String;

    return-void
.end method

.method public setVast(Lcom/mgmi/model/VASTAd;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mVast:Lcom/mgmi/model/VASTAd;

    return-void
.end method

.method public bridge synthetic setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/AdWidgetInfoImp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p0

    return-object p0
.end method

.method public setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/render/AdWidgetInfo;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mClickThrought:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mResourceUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mgmi/ads/api/render/AdWidgetInfo;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
