.class public Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public apiType:I

.field public application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

.field public applicationId:Ljava/lang/String;

.field public ascribeEnable:Z

.field public cachedAdCount:I

.field public codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

.field public customKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public defaultAd:Z

.field public device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

.field public offlineAd:Z

.field public requestId:Ljava/lang/String;

.field public testRequest:Ljava/lang/Boolean;

.field public turnOffPerAds:I

.field public user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static copy(Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;
    .locals 3

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 12
    .line 13
    :goto_0
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->application:Lcom/cloud/hisavana/sdk/data/bean/request/ApplicationDTO;

    .line 14
    .line 15
    if-nez p0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 19
    .line 20
    :goto_1
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->device:Lcom/cloud/hisavana/sdk/data/bean/request/DeviceDTO;

    .line 21
    .line 22
    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->setVideo(Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;)V

    .line 33
    .line 34
    .line 35
    iput-object p0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->codeSeat:Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;

    .line 36
    .line 37
    new-instance p0, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p0, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxRequestBody;->user:Lcom/cloud/hisavana/sdk/data/bean/request/UserDTO;

    .line 43
    .line 44
    return-object v0
.end method
