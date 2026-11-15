.class public Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
.super Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actualShowRate:Ljava/lang/Integer;

.field private actualShowTime:Ljava/lang/Long;

.field private adPsType:Ljava/lang/Integer;

.field private adRequestVer:I

.field private adSeatType:Ljava/lang/String;

.field private adclickTimeStamp:J

.field private autoRetentionTime:I

.field private bannerStyle:I

.field private calledUrlType:I

.field private campaignname:Ljava/lang/String;

.field private clickUrlTs:J

.field private click_link:Ljava/lang/String;

.field private clickid:Ljava/lang/String;

.field private closeDelayTime:I

.field private deepLinkUrlFirst:Ljava/lang/String;

.field private defaultAdSupportNetType:I

.field private defaultMaterialType:I

.field private downloadArea:I

.field private endCardType:I

.field private expiredDate:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fill_ts:Ljava/lang/Long;

.field private halfScreenType:Ljava/lang/String;

.field private imageIsDownload:Ljava/lang/Boolean;

.field private impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field private impressionUrl:Ljava/lang/String;

.field private indexLocation:Ljava/lang/String;

.field private isACReady:Ljava/lang/Boolean;

.field private isAdClickTracking:Z

.field private isEffectiveShow:Ljava/lang/Integer;

.field private isFromJs:Z

.field private isFromLocal:Z

.field private isHideCloseView:Z

.field private isJumpToHalfscreen:Z

.field private isMatchVulgarBrand:Z

.field private isOptimizeTracking:Z

.field private transient isRecordClick:Z

.field private isShowSourceSize:Z

.field private isUpdateClickUrl:Z

.field private isVastDownloadSuccess:Z

.field private isVastTypeAd:Z

.field private jsCodeSeatId:Ljava/lang/String;

.field private jsMediaId:Ljava/lang/String;

.field private jsRequestId:Ljava/lang/String;

.field private jsTriggerId:Ljava/lang/String;

.field private layoutDirection:I

.field private materialHeight:I

.field private materialWith:I

.field offlineAdExpireTime:Ljava/lang/Long;

.field offlineAdLaunchDateStr:Ljava/lang/String;

.field offlineAdStartDateLong:Ljava/lang/Long;

.field private orientation:I

.field private preloadStatus:I

.field private pslinkAppName:Ljava/lang/String;

.field private pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

.field private realLandUrl:Ljava/lang/String;

.field private requestPsTs:J

.field private retentionEndCardRatio:I

.field private returnPsTs:J

.field private showArea:Ljava/lang/String;

.field private showDate:J

.field private volatile showNum:Ljava/lang/Integer;

.field private showPsFlag:Z

.field private showReportTimeType:Ljava/lang/Integer;

.field private source:I

.field private splashCountTime:Ljava/lang/Integer;

.field private tableId:I

.field private templateCode:Ljava/lang/String;

.field private templateHtmlFilePath:Ljava/lang/String;

.field private templateHtmlUrl:Ljava/lang/String;

.field private trackUserClickArea:I

.field private triggerShowSpend:J

.field private uuid:Ljava/lang/String;

.field private videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

.field private viewHeight:I

.field private viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;-><init>()V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 4
    const-string v2, "0*0"

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v3, 0x3

    .line 6
    iput v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 7
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 8
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 9
    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 10
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 11
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 12
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    const-wide/16 v3, 0x0

    .line 13
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    .line 15
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 16
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 17
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 18
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 19
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 20
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 21
    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    .line 22
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    .line 23
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isRecordClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 24
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x4

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 27
    const-string v2, "0*0"

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v2, 0x1

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v3, 0x3

    .line 29
    iput v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 30
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 31
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 32
    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 33
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 34
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 35
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    const-wide/16 v3, 0x0

    .line 36
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    .line 38
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 39
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 40
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 41
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 42
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 43
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 44
    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    .line 45
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    .line 46
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isRecordClick:Z

    .line 47
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 49
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 55
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_2
    if-ne v1, v2, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v0

    .line 56
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_5

    :cond_4
    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v0

    .line 58
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_6

    .line 61
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    goto :goto_6

    .line 62
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 63
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_7

    .line 64
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    goto :goto_7

    .line 65
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 66
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_8

    .line 68
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    goto :goto_8

    .line 69
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 70
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_9

    .line 71
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    goto :goto_9

    .line 72
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 73
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_a

    .line 74
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    goto :goto_a

    .line 75
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 76
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 84
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_b

    .line 90
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    goto :goto_b

    .line 91
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 92
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_c

    .line 93
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    goto :goto_c

    .line 94
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 95
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_d

    .line 97
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    goto :goto_d

    .line 98
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 99
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showPsFlag:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    .line 101
    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    move v1, v0

    :goto_f
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    move v1, v0

    :goto_10
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 104
    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    move v1, v0

    :goto_11
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    move v1, v0

    :goto_12
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    move v1, v0

    :goto_13
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    move v1, v0

    :goto_14
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    move v1, v0

    :goto_16
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    move v1, v0

    :goto_17
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_18

    :cond_18
    move v1, v0

    :goto_18
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlUrl:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlFilePath:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateCode:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_19

    move v0, v2

    :cond_19
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHideCloseView:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getACReady()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getActualShowRate()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getActualShowTime()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getAdPsType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-object p0
.end method

.method public getAdRequestVer()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    return p0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    return-object p0
.end method

.method public getAdType()I
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    :goto_0
    return p0
.end method

.method public getAutoRetentionTime()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    return p0
.end method

.method public getBannerStyle()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    return p0
.end method

.method public getCalledUrlType()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    return p0
.end method

.method public getCampaignname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    return-object p0
.end method

.method public getClickUrlTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    return-wide v0
.end method

.method public getClick_link()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-object p0
.end method

.method public getCloseDelayTime()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    return p0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getDeepLinkUrlFirst()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getDefaultAdSupportNetType()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    return p0
.end method

.method public getDefaultMaterialType()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    return p0
.end method

.method public getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 2

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object v0

    invoke-virtual {v0}, Lcgc;->s()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object p0

    :cond_2
    sget-object p0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    return-object p0
.end method

.method public getDownloadArea()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    return p0
.end method

.method public getEndCardType()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    return p0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFill_ts()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getHalfScreenType()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HalfScreenType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "palmplay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHalfScreenType error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lja1;->e(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    return-object p0

    :cond_4
    :goto_2
    const-string p0, ""

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    return-object p0
.end method

.method public getImageIsDownload()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-object p0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getIndexLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getIsEffectiveShow()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getJsCodeSeatId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsCodeSeatId:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getJsMediaId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsMediaId:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getJsRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsRequestId:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getJsTriggerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    return-object p0
.end method

.method public getLayoutDirection()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    return p0
.end method

.method public getMaterialHeight()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    return p0
.end method

.method public getMaterialWith()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    return p0
.end method

.method public getMaxShowCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getOfflineAdExpireTime()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getOfflineAdLaunchDateStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-object p0
.end method

.method public getOfflineAdStartDateLong()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getOfflineH5Url()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public getOmIdVerifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getOmSdkVerifications()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    return p0
.end method

.method public getPreloadStatus()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return p0
.end method

.method public getPslinkAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    return-object p0
.end method

.method public getPslinkInfoStatus()Z
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHalfScreenAd()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcy9;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRealLandUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    return-wide v0
.end method

.method public getRequestType()I
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getRetentionEndCardRatio()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    return p0
.end method

.method public getReturnPsTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    return-wide v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getRuCompliance()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    move-result-object p0

    return-object p0
.end method

.method public getShowArea()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-object p0
.end method

.method public getShowDate()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    return-wide v0
.end method

.method public getShowNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getShowReportTimeType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getShowSourceSize()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    return p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    return p0
.end method

.method public getSplashCountTime()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getTableId()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    return p0
.end method

.method public getTemplateCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateCode:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplateHtmlFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplateHtmlUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackUserClickArea()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    return p0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    const-string v0, ""

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTriggerShowSpend()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    return p0
.end method

.method public getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    return-object p0
.end method

.method public getViewWidth()I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    return p0
.end method

.method public isAdmNormalClick()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public isAllowTrackingADClick()Z
    .locals 7

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-string/jumbo v2, "ssp"

    if-nez v0, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "click data error, allow tracking"

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long p0, v3, v5

    if-lez p0, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string v0, "click the timestamp for more than 10 seconds, allow tracking"

    invoke-virtual {p0, v2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isDownloadAd()Z
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public isFromJs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    return p0
.end method

.method public isFromLocal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    return p0
.end method

.method public isH5Zip()Z
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v3

    :cond_3
    :goto_0
    return v1
.end method

.method public isHalfScreenAd()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideCloseView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHideCloseView:Z

    return p0
.end method

.method public isJumpToHalfscreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    return p0
.end method

.method public isMatchVulgarBrand()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    return p0
.end method

.method public isOptimizeTracking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return p0
.end method

.method public isPsAd()Z
    .locals 2

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public isRecordClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isRecordClick:Z

    return p0
.end method

.method public isUpdateClickUrl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    return p0
.end method

.method public isVastDownloadSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    return p0
.end method

.method public isVastTypeAd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    return p0
.end method

.method public judgeOptimizeTracking()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return p0
.end method

.method public setACReady(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    return-void
.end method

.method public setActualShowRate(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    return-void
.end method

.method public setActualShowTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    return-void
.end method

.method public setAdClickTracking(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    :cond_0
    return-void
.end method

.method public setAdPsType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    return-void
.end method

.method public setAdRequestVer(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    return-void
.end method

.method public setAutoRetentionTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    return-void
.end method

.method public setBannerStyle(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    return-void
.end method

.method public setCalledUrlType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    return-void
.end method

.method public setCampaignname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    return-void
.end method

.method public setClickUrlTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    return-void
.end method

.method public setClick_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    return-void
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    return-void
.end method

.method public setCloseDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    return-void
.end method

.method public setDeepLinkUrlFirst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAdSupportNetType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    return-void
.end method

.method public setDefaultMaterialType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    return-void
.end method

.method public setDownloadArea(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    return-void
.end method

.method public setEndCardType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setFill_ts(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    return-void
.end method

.method public setFromJs(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    return-void
.end method

.method public setFromLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    return-void
.end method

.method public setHideCloseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHideCloseView:Z

    return-void
.end method

.method public setImageIsDownload(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    return-void
.end method

.method public setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    return-void
.end method

.method public setIndexLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    return-void
.end method

.method public setIsEffectiveShow(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    return-void
.end method

.method public setJsTriggerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    return-void
.end method

.method public setJumpToHalfscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    return-void
.end method

.method public setMatchVulgarBrand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    return-void
.end method

.method public setMaterialHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    return-void
.end method

.method public setMaterialWith(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    return-void
.end method

.method public setOfflineAdExpireTime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    return-void
.end method

.method public setOfflineAdLaunchDateStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    return-void
.end method

.method public setOfflineAdStartDateLong(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    return-void
.end method

.method public setOmSdkVerifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setOmSdkVerifications(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setOptimizeTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    return-void
.end method

.method public setPreloadStatus(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return-void
.end method

.method public setPslinkAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    return-void
.end method

.method public setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    return-void
.end method

.method public setRealLandUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    return-void
.end method

.method public setRecordClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isRecordClick:Z

    return-void
.end method

.method public setRequestPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    return-void
.end method

.method public setRetentionEndCardRatio(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    return-void
.end method

.method public setReturnPsTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    return-void
.end method

.method public setShowArea(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    return-void
.end method

.method public setShowDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    return-void
.end method

.method public setShowNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    return-void
.end method

.method public setShowReportTimeType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    return-void
.end method

.method public setShowSourceSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    return-void
.end method

.method public setSplashCountTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    return-void
.end method

.method public setTableId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    return-void
.end method

.method public setTemplateCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateCode:Ljava/lang/String;

    return-void
.end method

.method public setTemplateHtmlFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlFilePath:Ljava/lang/String;

    return-void
.end method

.method public setTemplateHtmlUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlUrl:Ljava/lang/String;

    return-void
.end method

.method public setTrackUserClickArea(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTriggerShowSpend(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    return-void
.end method

.method public setUpdateClickUrl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVastDownloadSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    return-void
.end method

.method public setVastTypeAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    return-void
.end method

.method public setVideoInfo(Lcom/cloud/hisavana/sdk/common/bean/VastData;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdsDTO{impBeanRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adCreativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fill_ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", splashCountTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isACReady="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageIsDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deepLinkUrlFirst=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", actualShowRate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showArea=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isEffectiveShow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", showReportTimeType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adPsType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calledUrlType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pslinkAppName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requestPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", returnPsTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", impressionUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrlTs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", adSeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", viewJsonData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tableId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", source="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdStartDateLong="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offlineAdLaunchDateStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", offlineAdExpireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adRequestVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMatchVulgarBrand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromJs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoRetentionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShowSourceSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", templateHtmlUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateHtmlFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", templateCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHideCloseView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHideCloseView:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    const/4 v3, 0x2

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v1

    :cond_5
    :goto_3
    int-to-byte v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    if-nez v0, :cond_7

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    if-nez v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    if-nez v0, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    if-nez v0, :cond_b

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_9

    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    if-nez v0, :cond_c

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_a

    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    if-nez v0, :cond_d

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_b

    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_b
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showPsFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateHtmlFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->templateCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->layoutDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHideCloseView:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
