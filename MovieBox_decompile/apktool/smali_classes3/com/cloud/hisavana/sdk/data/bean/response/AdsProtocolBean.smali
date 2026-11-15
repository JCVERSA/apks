.class public Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;,
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;,
        Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$RUComplianceData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation
.end field

.field adChoiceClickUrl:Ljava/lang/String;

.field adChoiceImageUrl:Ljava/lang/String;

.field adChoiceLegalText:Ljava/lang/String;

.field adCreativeId:Ljava/lang/String;

.field adGroupId:Ljava/lang/String;

.field adLaunchTypes:Ljava/lang/Integer;

.field adm:Ljava/lang/String;

.field advSeatType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field advertiserId:Ljava/lang/String;

.field advrId:Ljava/lang/String;

.field protected appInfo:Ljava/lang/String;

.field applicationTitle:Ljava/lang/String;

.field auctionSecondPrice:Ljava/lang/Double;

.field bidPrice:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cacheTime:Ljava/lang/Integer;

.field clickTrackingUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clickUrl:Ljava/lang/String;

.field commissionRatio:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field cost:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field creativeId:Ljava/lang/String;

.field deepLinkUrl:Ljava/lang/String;

.field dspType:Ljava/lang/Integer;

.field protected ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

.field extInfo:Ljava/lang/String;

.field firstPrice:Ljava/lang/Double;

.field fullScreenFlag:Ljava/lang/Integer;

.field groupId:Ljava/lang/String;

.field id:Ljava/lang/Integer;

.field imageHeight:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field imageWidth:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field industryId:Ljava/lang/String;

.field isAdxAscribeRetryEnable:Ljava/lang/Boolean;

.field isInteractiveAd:Z

.field materialStyle:Ljava/lang/String;

.field materialType:Ljava/lang/Integer;

.field nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

.field offlineAdLaunchDate:Ljava/lang/Long;

.field offlineAdStartDate:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field planId:Ljava/lang/String;

.field planIdStr:Ljava/lang/String;

.field planType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field preloadEnable:Ljava/lang/Boolean;

.field psApplicationTitle:Ljava/lang/String;

.field psClickTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field psLink:Ljava/lang/String;

.field psPackageName:Ljava/lang/String;

.field protected pullNewestLive:Ljava/lang/Integer;

.field rewardDuration:Ljava/lang/Integer;

.field rtbAdm:Ljava/lang/String;

.field scale:Ljava/lang/String;

.field scales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field secondPrice:Ljava/lang/Double;

.field settlementRatio:Ljava/lang/String;

.field showTime:Ljava/lang/Integer;

.field showTrackingSecretKey:Ljava/lang/String;

.field showTrackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field storeDeeplink:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clickUrls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field testResponse:Ljava/lang/Boolean;

.field trackType:Ljava/lang/Integer;

.field viewJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 10
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    .line 15
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_2

    .line 16
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 18
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_4

    :cond_3
    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v0

    .line 19
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_5

    .line 21
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    goto :goto_5

    .line 22
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    .line 23
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_6

    .line 24
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    goto :goto_6

    .line 25
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 26
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_7

    .line 28
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    goto :goto_7

    .line 29
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    .line 30
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_8

    .line 31
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    goto :goto_8

    .line 32
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 33
    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_9

    .line 34
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    goto :goto_9

    .line 35
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 36
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_a

    .line 37
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    goto :goto_a

    .line 38
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 39
    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_b

    .line 40
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    goto :goto_b

    .line 41
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    .line 42
    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_c

    .line 43
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    goto :goto_c

    .line 44
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    .line 45
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_d

    .line 47
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    goto :goto_d

    .line 48
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    .line 49
    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    .line 50
    sget-object v2, Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_e

    .line 61
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    goto :goto_e

    .line 62
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    .line 63
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_f

    .line 64
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    goto :goto_f

    .line 65
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    .line 66
    :goto_f
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_10

    .line 72
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    goto :goto_10

    .line 73
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 74
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_11

    .line 75
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    goto :goto_11

    .line 76
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 77
    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_12

    .line 78
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    goto :goto_12

    .line 79
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 80
    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_13

    .line 81
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    goto :goto_13

    .line 82
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    .line 83
    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_14

    .line 85
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    goto :goto_14

    .line 86
    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    .line 87
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_15

    .line 91
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    goto :goto_15

    .line 92
    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 93
    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_16

    move-object v2, v3

    goto :goto_17

    :cond_16
    if-ne v2, v1, :cond_17

    move v2, v1

    goto :goto_16

    :cond_17
    move v2, v0

    .line 95
    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_17
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_18

    .line 97
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    goto :goto_18

    .line 98
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    .line 99
    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_19

    .line 100
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    goto :goto_19

    .line 101
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    .line 102
    :goto_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1a

    .line 103
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    goto :goto_1a

    .line 104
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 105
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1b

    .line 112
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    goto :goto_1b

    .line 113
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    .line 114
    :goto_1b
    const-class v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    move v2, v0

    :goto_1c
    iput-boolean v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1d

    .line 118
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    goto :goto_1d

    .line 119
    :cond_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    .line 120
    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1e

    .line 121
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    goto :goto_1e

    .line 122
    :cond_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    .line 123
    :goto_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-nez v2, :cond_1f

    .line 124
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    goto :goto_1f

    .line 125
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    .line 126
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_20

    goto :goto_20

    :cond_20
    if-ne p1, v1, :cond_21

    move v0, v1

    .line 127
    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_20
    iput-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getAbTest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdChoiceClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

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

.method public getAdChoiceImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

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

.method public getAdChoiceLegalText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

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

.method public getAdCreativeId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    return-object v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_1
    return-object v1
.end method

.method public getAdGroupId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    return-object v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_1
    return-object v1
.end method

.method public getAdImageHeight()Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-lez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getHeight()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_0
    return-object v1
.end method

.method public getAdImageWidth()Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getWidth()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_0
    return-object v1
.end method

.method public getAdImgUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

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
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v0, ""

    .line 63
    .line 64
    :goto_0
    return-object v0
.end method

.method public getAdLaunchTypes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

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

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvSeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvertiserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    return-object v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_1
    return-object v1
.end method

.method public getAdxAscribeRetryEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

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
    return v0
.end method

.method public getAppInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApplicationTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuctionSecondPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

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
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getCacheTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x3c

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

.method public getClickTrackingUrls()Ljava/util/List;
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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-object v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

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

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDspType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

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

.method public getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

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

.method public getFirstPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

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
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getFullScreenFlag()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

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

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

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

.method public getImageHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

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

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

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

.method public getImageWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

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

.method public getIndustryId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

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

.method public getInstallApk()I
    .locals 5

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
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    return v0

    .line 19
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, -0x1

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const/4 v0, 0x3

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/h0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/h0;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return v0

    .line 54
    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 55
    return v0

    .line 56
    :catch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v3, 0x1e

    .line 59
    .line 60
    if-lt v2, v3, :cond_4

    .line 61
    .line 62
    return v1

    .line 63
    :cond_4
    return v0
.end method

.method public getInteractiveUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_0
    const-string v0, ""

    .line 60
    .line 61
    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getMaterialStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

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

.method public getMaterialType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

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

.method public getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewPrice()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "&"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "_first_price="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "_second_price="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "_ratio="

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "ssp_second_price"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "*----> AdsDTO getNewPrice() = "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x2

    .line 83
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "AdsDTO getNewPrice() error = "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, ""

    .line 118
    .line 119
    return-object v0
.end method

.method public getNewPrice_Click()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "&"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "p1="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "p2="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "t="

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v2, "ssp_second_price"

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "*----> AdsDTO getNewPrice_Click() = "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v0

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
    const-string v3, "AdsDTO getNewPrice_Click() error = "

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
    const-string v0, ""

    .line 105
    .line 106
    return-object v0
.end method

.method public getOfflineAdLaunchDate()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfflineAdStartDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

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

.method public getPlanId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, v0

    .line 17
    :goto_0
    return-object v1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    move-object v1, v0

    .line 24
    :goto_1
    return-object v1
.end method

.method public getPlanType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

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

.method public getPreloadEnable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

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

.method public getPsApplicationTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsClickTrackingUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPsPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPullNewestLive()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

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

.method public getRewardDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x5

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

.method public getRtbAdm()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rtbAdm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScales()Ljava/util/List;
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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSecondPrice()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

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
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getSettlementRatio()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShowTime()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 20
    .line 21
    return-object v0
.end method

.method public getShowTrackingSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

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

.method public getShowTrackingUrls()Ljava/util/List;
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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStoreDeeplink()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTestResponse()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

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

.method public getTrackType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

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

.method public getViewJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isInteractiveAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOfflineAd()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdLaunchTypes()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public setAbTest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AbTestDTO;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdChoiceLegalText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdLaunchTypes(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setAdm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdvSeatType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdvrId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAdxAscribeRetryEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setApplicationTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAuctionSecondPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setCacheTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setClickTrackingUrls(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setExt(Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method

.method public setFullScreenFlag(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setImageHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImageWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setIndustryId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInteractiveAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getInteractiveUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public setMaterialStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMaterialType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeObject(Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdLaunchDate(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdStartDate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlanId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlanIdStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlanType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPsApplicationTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPsClickTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setPsLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPsPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPullNewestLive(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRewardDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setRtbAdm(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rtbAdm:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScale(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setScales(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSecondPrice(D)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "new secondPrice"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "old secondPrice"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "ssp_second_price"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    cmpl-double v0, p1, v0

    .line 46
    .line 47
    if-lez v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    cmpg-double v0, p1, v0

    .line 58
    .line 59
    if-gtz v0, :cond_0

    .line 60
    .line 61
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 66
    .line 67
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 p2, 0x2

    .line 82
    if-ne p1, p2, :cond_0

    .line 83
    .line 84
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 87
    .line 88
    .line 89
    move-result-wide p1

    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 91
    .line 92
    add-double/2addr p1, v0

    .line 93
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 98
    .line 99
    :cond_0
    return-void
.end method

.method public setSettlementRatio(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTrackingUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setStoreDeeplink(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setTestResponse(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setTrackType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setViewJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->id:Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advertiserId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advrId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isAdxAscribeRetryEnable:Ljava/lang/Boolean;

    .line 56
    .line 57
    const/4 v3, 0x2

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    move v0, v2

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    move v0, v1

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v0, v3

    .line 71
    :goto_3
    int-to-byte v0, v0

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 92
    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planIdStr:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->planType:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    .line 113
    .line 114
    if-nez v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 117
    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adGroupId:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 129
    .line 130
    if-nez v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->groupId:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 145
    .line 146
    if-nez v0, :cond_9

    .line 147
    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 149
    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adCreativeId:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 161
    .line 162
    if-nez v0, :cond_a

    .line 163
    .line 164
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->creativeId:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    .line 177
    .line 178
    if-nez v0, :cond_b

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    .line 182
    .line 183
    goto :goto_a

    .line 184
    :cond_b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cost:Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    .line 195
    .line 196
    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    .line 197
    .line 198
    if-nez v0, :cond_c

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    .line 202
    .line 203
    goto :goto_b

    .line 204
    :cond_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->bidPrice:Ljava/lang/Double;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 210
    .line 211
    .line 212
    move-result-wide v4

    .line 213
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 214
    .line 215
    .line 216
    :goto_b
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    .line 222
    .line 223
    if-nez v0, :cond_d

    .line 224
    .line 225
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->cacheTime:Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    .line 240
    .line 241
    :goto_c
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickUrl:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->abTest:Ljava/util/List;

    .line 247
    .line 248
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 249
    .line 250
    .line 251
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->deepLinkUrl:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->storeDeeplink:Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingUrls:Ljava/util/ArrayList;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 264
    .line 265
    .line 266
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTrackingSecretKey:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->clickTrackingUrls:Ljava/util/List;

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceImageUrl:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceClickUrl:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adChoiceLegalText:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageUrl:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    .line 297
    .line 298
    if-nez v0, :cond_e

    .line 299
    .line 300
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 301
    .line 302
    .line 303
    goto :goto_d

    .line 304
    :cond_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageWidth:Ljava/lang/Integer;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    .line 315
    .line 316
    :goto_d
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    .line 317
    .line 318
    if-nez v0, :cond_f

    .line 319
    .line 320
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 321
    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->imageHeight:Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    .line 335
    .line 336
    :goto_e
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->nativeObject:Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    .line 337
    .line 338
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 339
    .line 340
    .line 341
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->extInfo:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scale:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->advSeatType:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialStyle:Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 362
    .line 363
    if-nez v0, :cond_10

    .line 364
    .line 365
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 366
    .line 367
    .line 368
    goto :goto_f

    .line 369
    :cond_10
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->firstPrice:Ljava/lang/Double;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 375
    .line 376
    .line 377
    move-result-wide v4

    .line 378
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 379
    .line 380
    .line 381
    :goto_f
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 382
    .line 383
    if-nez v0, :cond_11

    .line 384
    .line 385
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    .line 387
    .line 388
    goto :goto_10

    .line 389
    :cond_11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->secondPrice:Ljava/lang/Double;

    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 395
    .line 396
    .line 397
    move-result-wide v4

    .line 398
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 399
    .line 400
    .line 401
    :goto_10
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 402
    .line 403
    if-nez v0, :cond_12

    .line 404
    .line 405
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 406
    .line 407
    .line 408
    goto :goto_11

    .line 409
    :cond_12
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    .line 411
    .line 412
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->auctionSecondPrice:Ljava/lang/Double;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 415
    .line 416
    .line 417
    move-result-wide v4

    .line 418
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 419
    .line 420
    .line 421
    :goto_11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    .line 422
    .line 423
    if-nez v0, :cond_13

    .line 424
    .line 425
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    .line 427
    .line 428
    goto :goto_12

    .line 429
    :cond_13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->commissionRatio:Ljava/lang/Integer;

    .line 433
    .line 434
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    .line 440
    .line 441
    :goto_12
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->settlementRatio:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    .line 447
    .line 448
    if-nez v0, :cond_14

    .line 449
    .line 450
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 451
    .line 452
    .line 453
    goto :goto_13

    .line 454
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 455
    .line 456
    .line 457
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->dspType:Ljava/lang/Integer;

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 460
    .line 461
    .line 462
    move-result v0

    .line 463
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    .line 465
    .line 466
    :goto_13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adm:Ljava/lang/String;

    .line 467
    .line 468
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->scales:Ljava/util/List;

    .line 472
    .line 473
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->applicationTitle:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 482
    .line 483
    if-nez v0, :cond_15

    .line 484
    .line 485
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 486
    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdLaunchDate:Ljava/lang/Long;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 495
    .line 496
    .line 497
    move-result-wide v4

    .line 498
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 499
    .line 500
    .line 501
    :goto_14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->offlineAdStartDate:Ljava/lang/String;

    .line 502
    .line 503
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->testResponse:Ljava/lang/Boolean;

    .line 507
    .line 508
    if-nez v0, :cond_16

    .line 509
    .line 510
    move v0, v2

    .line 511
    goto :goto_15

    .line 512
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    if-eqz v0, :cond_17

    .line 517
    .line 518
    move v0, v1

    .line 519
    goto :goto_15

    .line 520
    :cond_17
    move v0, v3

    .line 521
    :goto_15
    int-to-byte v0, v0

    .line 522
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 523
    .line 524
    .line 525
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    .line 526
    .line 527
    if-nez v0, :cond_18

    .line 528
    .line 529
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 530
    .line 531
    .line 532
    goto :goto_16

    .line 533
    :cond_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 534
    .line 535
    .line 536
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->materialType:Ljava/lang/Integer;

    .line 537
    .line 538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    .line 544
    .line 545
    :goto_16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    .line 546
    .line 547
    if-nez v0, :cond_19

    .line 548
    .line 549
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 550
    .line 551
    .line 552
    goto :goto_17

    .line 553
    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->fullScreenFlag:Ljava/lang/Integer;

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    .line 564
    .line 565
    :goto_17
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 566
    .line 567
    if-nez v0, :cond_1a

    .line 568
    .line 569
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 570
    .line 571
    .line 572
    goto :goto_18

    .line 573
    :cond_1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->showTime:Ljava/lang/Integer;

    .line 577
    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    .line 584
    .line 585
    :goto_18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->viewJson:Ljava/lang/String;

    .line 586
    .line 587
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->industryId:Ljava/lang/String;

    .line 591
    .line 592
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psLink:Ljava/lang/String;

    .line 596
    .line 597
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psApplicationTitle:Ljava/lang/String;

    .line 601
    .line 602
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psPackageName:Ljava/lang/String;

    .line 606
    .line 607
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->appInfo:Ljava/lang/String;

    .line 611
    .line 612
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    .line 616
    .line 617
    if-nez v0, :cond_1b

    .line 618
    .line 619
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 620
    .line 621
    .line 622
    goto :goto_19

    .line 623
    :cond_1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 624
    .line 625
    .line 626
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->pullNewestLive:Ljava/lang/Integer;

    .line 627
    .line 628
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    .line 634
    .line 635
    :goto_19
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->ext:Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 636
    .line 637
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 638
    .line 639
    .line 640
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd:Z

    .line 641
    .line 642
    int-to-byte p2, p2

    .line 643
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 644
    .line 645
    .line 646
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->psClickTrackingUrls:Ljava/util/ArrayList;

    .line 647
    .line 648
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 649
    .line 650
    .line 651
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    .line 652
    .line 653
    if-nez p2, :cond_1c

    .line 654
    .line 655
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 656
    .line 657
    .line 658
    goto :goto_1a

    .line 659
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 660
    .line 661
    .line 662
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->trackType:Ljava/lang/Integer;

    .line 663
    .line 664
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 665
    .line 666
    .line 667
    move-result p2

    .line 668
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    .line 670
    .line 671
    :goto_1a
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    .line 672
    .line 673
    if-nez p2, :cond_1d

    .line 674
    .line 675
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 676
    .line 677
    .line 678
    goto :goto_1b

    .line 679
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 680
    .line 681
    .line 682
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->adLaunchTypes:Ljava/lang/Integer;

    .line 683
    .line 684
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 685
    .line 686
    .line 687
    move-result p2

    .line 688
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    .line 690
    .line 691
    :goto_1b
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    .line 692
    .line 693
    if-nez p2, :cond_1e

    .line 694
    .line 695
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 696
    .line 697
    .line 698
    goto :goto_1c

    .line 699
    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 700
    .line 701
    .line 702
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->rewardDuration:Ljava/lang/Integer;

    .line 703
    .line 704
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 705
    .line 706
    .line 707
    move-result p2

    .line 708
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    .line 710
    .line 711
    :goto_1c
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->preloadEnable:Ljava/lang/Boolean;

    .line 712
    .line 713
    if-nez p2, :cond_1f

    .line 714
    .line 715
    move v1, v2

    .line 716
    goto :goto_1d

    .line 717
    :cond_1f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 718
    .line 719
    .line 720
    move-result p2

    .line 721
    if-eqz p2, :cond_20

    .line 722
    .line 723
    goto :goto_1d

    .line 724
    :cond_20
    move v1, v3

    .line 725
    :goto_1d
    int-to-byte p2, v1

    .line 726
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 727
    .line 728
    .line 729
    return-void
.end method
