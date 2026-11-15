.class public Lcom/mgmi/net/bean/CustomBootAdBean;
.super Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/AdWidgetInfoImp;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mgmi/net/bean/CustomBootAdBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childId:Ljava/lang/String;

.field public eCpm:Ljava/lang/String;

.field public isApkDown:Z

.field public jump_time:I

.field public jump_type:Ljava/lang/String;

.field public jump_val:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jumpid:Ljava/lang/String;

.field public jumpkind:Ljava/lang/String;

.field private mAwayAppType:Lcom/mgmi/ads/api/d;

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private mValuesTag:Ljava/lang/String;

.field private mWidgetType:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field public transfer:I

.field public update_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mgmi/net/bean/CustomBootAdBean$1;

    invoke-direct {v0}, Lcom/mgmi/net/bean/CustomBootAdBean$1;-><init>()V

    sput-object v0, Lcom/mgmi/net/bean/CustomBootAdBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorCode:I

    .line 3
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorMsg:Ljava/lang/String;

    .line 4
    const-string v1, "ADS_TYPE_BOOT"

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mWidgetType:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mAwayAppType:Lcom/mgmi/ads/api/d;

    .line 6
    iput-boolean v0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->isApkDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorCode:I

    .line 9
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorMsg:Ljava/lang/String;

    .line 10
    const-string v1, "ADS_TYPE_BOOT"

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mWidgetType:Ljava/lang/String;

    .line 11
    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_NO:Lcom/mgmi/ads/api/d;

    iput-object v1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mAwayAppType:Lcom/mgmi/ads/api/d;

    .line 12
    iput-boolean v0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->isApkDown:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public autoLand()Z
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAidColor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAwayAppType()Lcom/mgmi/ads/api/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mAwayAppType:Lcom/mgmi/ads/api/d;

    return-object p0
.end method

.method public getChildId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public getClickThrought()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->pageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getContLabel()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCornerType()Lcom/mgmi/ads/api/f;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDiscription()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorCode:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jump_type:Ljava/lang/String;

    return-object p0
.end method

.method public getJump_val()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jump_val:Ljava/util/List;

    return-object p0
.end method

.method public getJumpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    return-object p0
.end method

.method public getJumpkind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpkind:Ljava/lang/String;

    return-object p0
.end method

.method public getLoaderInterface()Lcom/mgmi/ads/api/a/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->mid:Ljava/lang/String;

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->pageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getPauseType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getResourceUrl()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchGuideA()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSchGuideM()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getThumbnailPic()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransfer()I
    .locals 0

    iget p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->transfer:I

    return p0
.end method

.method public getUpdate_url()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->update_url:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValuesTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mValuesTag:Ljava/lang/String;

    return-object p0
.end method

.method public getWidgetType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method public isAdComplete()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAdLogEnnable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlayerUse()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAwayAppType(Lcom/mgmi/ads/api/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mAwayAppType:Lcom/mgmi/ads/api/d;

    return-void
.end method

.method public setChildId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->childId:Ljava/lang/String;

    return-void
.end method

.method public setECpm(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->eCpm:Ljava/lang/String;

    return-object p0
.end method

.method public setErrorCode(I)Lcom/mgmi/net/bean/CustomBootAdBean;
    .locals 0

    iput p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorCode:I

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setJump_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jump_type:Ljava/lang/String;

    return-void
.end method

.method public setJump_val(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jump_val:Ljava/util/List;

    return-void
.end method

.method public setJumpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpid:Ljava/lang/String;

    return-void
.end method

.method public setJumpkind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->jumpkind:Ljava/lang/String;

    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->pageUrl:Ljava/lang/String;

    return-void
.end method

.method public setPauseType(I)V
    .locals 0

    return-void
.end method

.method public setTransfer(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->transfer:I

    return-void
.end method

.method public setUpdate_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->update_url:Ljava/lang/String;

    return-void
.end method

.method public setValuesTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mValuesTag:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setWidgetType(Ljava/lang/String;)Lcom/mgmi/ads/api/AdWidgetInfoImp;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->setWidgetType(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;

    move-result-object p0

    return-object p0
.end method

.method public setWidgetType(Ljava/lang/String;)Lcom/mgmi/net/bean/CustomBootAdBean;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgmi/net/bean/CustomBootAdBean;->mWidgetType:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/BaseAdWidgetInfoImpBean;->adLogoAndOriginName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
