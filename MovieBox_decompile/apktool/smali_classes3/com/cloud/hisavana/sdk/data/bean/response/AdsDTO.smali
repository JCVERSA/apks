.class public Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
.super Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;
.source "source.java"

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

.field private isJumpToHalfscreen:Z

.field private isMatchVulgarBrand:Z

.field private isOptimizeTracking:Z

.field private isShowSourceSize:Z

.field private isUpdateClickUrl:Z

.field private isVastDownloadSuccess:Z

.field private isVastTypeAd:Z

.field private jsCodeSeatId:Ljava/lang/String;

.field private jsMediaId:Ljava/lang/String;

.field private jsRequestId:Ljava/lang/String;

.field private jsTriggerId:Ljava/lang/String;

.field private materialHeight:I

.field private materialWith:I

.field offlineAdExpireTime:Ljava/lang/Long;

.field offlineAdLaunchDateStr:Ljava/lang/String;

.field offlineAdStartDateLong:Ljava/lang/Long;

.field private preloadStatus:I

.field private pslinkAppName:Ljava/lang/String;

.field private pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

.field private realLandUrl:Ljava/lang/String;

.field private requestPsTs:J

.field private retentionEndCardRatio:I

.field private returnPsTs:J

.field private showArea:Ljava/lang/String;

.field private showDate:J

.field private showNum:Ljava/lang/Integer;

.field private showPsFlag:Z

.field private showReportTimeType:Ljava/lang/Integer;

.field private source:I

.field private splashCountTime:Ljava/lang/Integer;

.field private tableId:I

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

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
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

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 21
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x4

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 24
    const-string v2, "0*0"

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    const/4 v2, 0x1

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    const/4 v3, 0x3

    .line 26
    iput v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 27
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 28
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 29
    iput v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 30
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 31
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 32
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    const-wide/16 v3, 0x0

    .line 33
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    .line 35
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 36
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 37
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 38
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 39
    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 40
    iput v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 41
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 43
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_1

    .line 47
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 49
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

    .line 50
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 51
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

    .line 52
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_6

    .line 55
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    goto :goto_6

    .line 56
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 57
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_7

    .line 58
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    goto :goto_7

    .line 59
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 60
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_8

    .line 62
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    goto :goto_8

    .line 63
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 64
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_9

    .line 65
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    goto :goto_9

    .line 66
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 67
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_a

    .line 68
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    goto :goto_a

    .line 69
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 70
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 78
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_b

    .line 84
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    goto :goto_b

    .line 85
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 86
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_c

    .line 87
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    goto :goto_c

    .line 88
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 89
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_d

    .line 91
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    goto :goto_d

    .line 92
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 93
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

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    .line 95
    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    move v1, v0

    :goto_f
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    move v1, v0

    :goto_10
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 98
    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    move v1, v0

    :goto_11
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    move v1, v0

    :goto_12
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    move v1, v0

    :goto_13
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    move v1, v0

    :goto_14
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    move v1, v0

    :goto_16
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    move v1, v0

    :goto_17
    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_18

    move v0, v2

    :cond_18
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clone()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getACReady()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getActualShowRate()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

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

.method public getActualShowTime()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdPsType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdRequestVer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

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
    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 8
    .line 9
    :goto_0
    return v0
.end method

.method public getAutoRetentionTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getBannerStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public getCalledUrlType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 2
    .line 3
    return v0
.end method

.method public getCampaignname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickUrlTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getClick_link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getClickid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseDelayTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    return-object v0
.end method

.method public getCodeSeatType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getDeepLinkUrlFirst()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getDefaultAdSupportNetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultMaterialType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 2
    .line 3
    return v0
.end method

.method public getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/g1;->o()Lcom/cloud/hisavana/sdk/g1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/g1;->s()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->UNIVERSAL:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    .line 34
    .line 35
    return-object v0
.end method

.method public getDownloadArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 2
    .line 3
    return v0
.end method

.method public getEndCardType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 2
    .line 3
    return v0
.end method

.method public getExpiredDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFill_ts()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getHalfScreenType()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const-string v2, "HalfScreenType"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    const-string v3, "palmplay"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v3, "getHalfScreenType error : "

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 105
    .line 106
    return-object v0

    .line 107
    :cond_4
    :goto_2
    const-string v0, ""

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 111
    .line 112
    return-object v0
.end method

.method public getImageIsDownload()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImpressionUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndexLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIsEffectiveShow()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

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

.method public getJsCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsCodeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getJsMediaId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsMediaId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getJsRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsRequestId:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getJsTriggerId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaterialHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaterialWith()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxShowCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public getOfflineAdExpireTime()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getOfflineAdLaunchDateStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfflineAdStartDateLong()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getOfflineH5Url()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;->getUrl()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_3
    return-object v0

    .line 84
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

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getOmSdkVerifications()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getPreloadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getPslinkAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPslinkInfoStatus()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isHalfScreenAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/h0;->e(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public getRealLandUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestPsTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRequestType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    return v0
.end method

.method public getRetentionEndCardRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 2
    .line 3
    return v0
.end method

.method public getReturnPsTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    return-object v0
.end method

.method public getRuData()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getRuCompliance()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShowArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getShowNum()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

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

.method public getShowReportTimeType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

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

.method public getShowSourceSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 2
    .line 3
    return v0
.end method

.method public getSplashCountTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

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

.method public getTableId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTrackUserClickArea()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 2
    .line 3
    return v0
.end method

.method public getTriggerId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v1, v0

    .line 13
    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTriggerShowSpend()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    :try_start_0
    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "ssp"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 33
    .line 34
    return-object v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public isAdmNormalClick()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return v1

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    return v1

    .line 47
    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    :cond_5
    const/4 v1, 0x1

    .line 58
    :cond_6
    return v1
.end method

.method public isAllowTrackingADClick()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 8
    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v0, v2, v4

    .line 12
    .line 13
    const-string v2, "ssp"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v3, "click data error, allow tracking"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 32
    .line 33
    sub-long/2addr v3, v5

    .line 34
    const-wide/16 v5, 0x2710

    .line 35
    .line 36
    cmp-long v0, v3, v5

    .line 37
    .line 38
    if-lez v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v3, "click the timestamp for more than 10 seconds, allow tracking"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    return v0
.end method

.method public isDownloadAd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    xor-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public isFromJs()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFromLocal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5Zip()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogType()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getDialogJson()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$DialogJson;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getRes()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getZipRes()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    move v1, v3

    .line 73
    :cond_3
    :goto_0
    return v1
.end method

.method public isHalfScreenAd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public isJumpToHalfscreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isMatchVulgarBrand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOptimizeTracking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPsAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    return v1
.end method

.method public isUpdateClickUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVastDownloadSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVastTypeAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public judgeOptimizeTracking()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x2

    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 32
    .line 33
    return v0
.end method

.method public setACReady(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setActualShowRate(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setActualShowTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setAdClickTracking(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setAdPsType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setAdRequestVer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAutoRetentionTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setBannerStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->bannerStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public setCalledUrlType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 2
    .line 3
    return-void
.end method

.method public setCampaignname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClickUrlTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 2
    .line 3
    return-void
.end method

.method public setClick_link(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setClickid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCloseDelayTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setDeepLinkUrlFirst(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultAdSupportNetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultMaterialType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownloadArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 2
    .line 3
    return-void
.end method

.method public setEndCardType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 2
    .line 3
    return-void
.end method

.method public setExpiredDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFill_ts(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setFromJs(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFromLocal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 2
    .line 3
    return-void
.end method

.method public setImageIsDownload(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    return-void
.end method

.method public setImpressionUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIndexLocation(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setIsEffectiveShow(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setJsTriggerId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJumpToHalfscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMatchVulgarBrand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialWith(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdExpireTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdLaunchDateStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdStartDateLong(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 2
    .line 3
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

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->setOmSdkVerifications(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setOptimizeTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPreloadStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public setPslinkAppName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setRealLandUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRequestPsTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 2
    .line 3
    return-void
.end method

.method public setRetentionEndCardRatio(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 2
    .line 3
    return-void
.end method

.method public setReturnPsTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 2
    .line 3
    return-void
.end method

.method public setShowArea(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowDate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 2
    .line 3
    return-void
.end method

.method public setShowNum(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowReportTimeType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowSourceSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 2
    .line 3
    return-void
.end method

.method public setSplashCountTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setTableId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 2
    .line 3
    return-void
.end method

.method public setTrackUserClickArea(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 2
    .line 3
    return-void
.end method

.method public setTriggerId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setTriggerShowSpend(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    .line 2
    .line 3
    return-void
.end method

.method public setUpdateClickUrl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVastDownloadSuccess(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVastTypeAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoInfo(Lcom/cloud/hisavana/sdk/common/bean/VastData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 2
    .line 3
    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setViewWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AdsDTO{impBeanRequest="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adCreativeId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", fill_ts="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", uuid=\'"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x27

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", splashCountTime="

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", isACReady="

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", imageIsDownload="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", deepLinkUrlFirst=\'"

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ", actualShowTime="

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", actualShowRate="

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", showArea=\'"

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v2, ", isEffectiveShow="

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ", showReportTimeType="

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, ", adPsType="

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ", calledUrlType="

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v2, ", pslinkAppName=\'"

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, ", packageName=\'"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, ", clickid=\'"

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, ", requestPsTs="

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 212
    .line 213
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, ", returnPsTs="

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 222
    .line 223
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v2, ", impressionUrl=\'"

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v2, ", clickUrlTs="

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 245
    .line 246
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v2, ", adSeatType=\'"

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v2, ", viewJsonData="

    .line 263
    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v2, ", filePath=\'"

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v2, ", showDate=\'"

    .line 286
    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 291
    .line 292
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v2, ", tableId="

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v2, ", source="

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, ", showNum="

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ", offlineAdStartDateLong="

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 334
    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v2, ", offlineAdLaunchDateStr=\'"

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v1, ", offlineAdExpireTime="

    .line 352
    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v1, ", viewJson="

    .line 362
    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v1, ", adRequestVer="

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v1, ", videoWidth="

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v1, ", videoHeight="

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v1, ", isMatchVulgarBrand="

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v1, ", isFromJs="

    .line 412
    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v1, ", autoRetentionTime="

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v1, ", downloadArea="

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 437
    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    const-string v1, ", isShowSourceSize="

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const/16 v1, 0x7d

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impBeanRequest:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 5
    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->fill_ts:Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->uuid:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->splashCountTime:Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isACReady:Ljava/lang/Boolean;

    .line 57
    .line 58
    const/4 v3, 0x2

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    move v0, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    move v0, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move v0, v3

    .line 72
    :goto_2
    int-to-byte v0, v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->imageIsDownload:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    move v3, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    move v3, v1

    .line 89
    :cond_5
    :goto_3
    int-to-byte v0, v3

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->deepLinkUrlFirst:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 99
    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowTime:Ljava/lang/Long;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    .line 117
    .line 118
    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 119
    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 123
    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->actualShowRate:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    .line 137
    .line 138
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showArea:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 144
    .line 145
    if-nez v0, :cond_8

    .line 146
    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 148
    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isEffectiveShow:Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    .line 162
    .line 163
    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 164
    .line 165
    if-nez v0, :cond_9

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showReportTimeType:Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 184
    .line 185
    if-nez v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 188
    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adPsType:Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    :goto_8
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->calledUrlType:I

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    .line 207
    .line 208
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkAppName:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickid:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->requestPsTs:J

    .line 219
    .line 220
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    .line 222
    .line 223
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->returnPsTs:J

    .line 224
    .line 225
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->impressionUrl:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->clickUrlTs:J

    .line 234
    .line 235
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adSeatType:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewJsonData:Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    .line 244
    .line 245
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->filePath:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showDate:J

    .line 254
    .line 255
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 256
    .line 257
    .line 258
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->tableId:I

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    .line 262
    .line 263
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->source:I

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 269
    .line 270
    if-nez v0, :cond_b

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 273
    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showNum:Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    .line 287
    .line 288
    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 289
    .line 290
    if-nez v0, :cond_c

    .line 291
    .line 292
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 293
    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 297
    .line 298
    .line 299
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdStartDateLong:Ljava/lang/Long;

    .line 300
    .line 301
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 306
    .line 307
    .line 308
    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdLaunchDateStr:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 314
    .line 315
    if-nez v0, :cond_d

    .line 316
    .line 317
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 318
    .line 319
    .line 320
    goto :goto_b

    .line 321
    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 322
    .line 323
    .line 324
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->offlineAdExpireTime:Ljava/lang/Long;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 327
    .line 328
    .line 329
    move-result-wide v0

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    .line 332
    .line 333
    :goto_b
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->showPsFlag:Z

    .line 334
    .line 335
    int-to-byte v0, v0

    .line 336
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->click_link:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->pslinkInfo:Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 345
    .line 346
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 347
    .line 348
    .line 349
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isJumpToHalfscreen:Z

    .line 350
    .line 351
    int-to-byte v0, v0

    .line 352
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 353
    .line 354
    .line 355
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isUpdateClickUrl:Z

    .line 356
    .line 357
    int-to-byte v0, v0

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->videoInfo:Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 362
    .line 363
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 364
    .line 365
    .line 366
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd:Z

    .line 367
    .line 368
    int-to-byte p2, p2

    .line 369
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 370
    .line 371
    .line 372
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewHeight:I

    .line 373
    .line 374
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    .line 376
    .line 377
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->viewWidth:I

    .line 378
    .line 379
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    .line 381
    .line 382
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isOptimizeTracking:Z

    .line 383
    .line 384
    int-to-byte p2, p2

    .line 385
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    .line 387
    .line 388
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->indexLocation:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->jsTriggerId:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->halfScreenType:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastDownloadSuccess:Z

    .line 404
    .line 405
    int-to-byte p2, p2

    .line 406
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 407
    .line 408
    .line 409
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adRequestVer:I

    .line 410
    .line 411
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    .line 413
    .line 414
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->expiredDate:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->campaignname:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultMaterialType:I

    .line 425
    .line 426
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    .line 428
    .line 429
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal:Z

    .line 430
    .line 431
    int-to-byte p2, p2

    .line 432
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 433
    .line 434
    .line 435
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialWith:I

    .line 436
    .line 437
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    .line 439
    .line 440
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->materialHeight:I

    .line 441
    .line 442
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    .line 444
    .line 445
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand:Z

    .line 446
    .line 447
    int-to-byte p2, p2

    .line 448
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 449
    .line 450
    .line 451
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->triggerShowSpend:J

    .line 452
    .line 453
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    .line 455
    .line 456
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromJs:Z

    .line 457
    .line 458
    int-to-byte p2, p2

    .line 459
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 460
    .line 461
    .line 462
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->defaultAdSupportNetType:I

    .line 463
    .line 464
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    .line 466
    .line 467
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->closeDelayTime:I

    .line 468
    .line 469
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    .line 471
    .line 472
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->retentionEndCardRatio:I

    .line 473
    .line 474
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    .line 476
    .line 477
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->endCardType:I

    .line 478
    .line 479
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    .line 481
    .line 482
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAdClickTracking:Z

    .line 483
    .line 484
    int-to-byte p2, p2

    .line 485
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 486
    .line 487
    .line 488
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->adclickTimeStamp:J

    .line 489
    .line 490
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 491
    .line 492
    .line 493
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->autoRetentionTime:I

    .line 494
    .line 495
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    .line 497
    .line 498
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->downloadArea:I

    .line 499
    .line 500
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    .line 502
    .line 503
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->trackUserClickArea:I

    .line 504
    .line 505
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    .line 507
    .line 508
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isShowSourceSize:Z

    .line 509
    .line 510
    int-to-byte p2, p2

    .line 511
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 512
    .line 513
    .line 514
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->realLandUrl:Ljava/lang/String;

    .line 515
    .line 516
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->preloadStatus:I

    .line 520
    .line 521
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    .line 523
    .line 524
    return-void
.end method
