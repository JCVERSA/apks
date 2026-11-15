.class public Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private adCount:I

.field private adPriority:I

.field private extInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private gameName:Ljava/lang/String;

.field private gameScene:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private offlineAdEnable:Z

.field public omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

.field private type:I

.field private video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

.field private webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

.field private width:I


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


# virtual methods
.method public getAdCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getAdPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adPriority:I

    .line 2
    .line 3
    return v0
.end method

.method public getExtInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->extInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGameScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameScene:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOmSdk()Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideo()Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWebPageInfo()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public isOfflineAdEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->offlineAdEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setAdPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->adPriority:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->extInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setGameScene(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->gameScene:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->height:I

    .line 2
    .line 3
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOfflineAdEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->offlineAdEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOmSdk(Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->omSdk:Lcom/cloud/hisavana/sdk/data/bean/request/OmSdk;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideo(Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->video:Lcom/cloud/hisavana/sdk/data/bean/request/SdkVideo;

    .line 2
    .line 3
    return-void
.end method

.method public setWebPageInfo(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->webPageInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    .line 2
    .line 3
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/data/bean/request/CodeSeatDTO;->width:I

    .line 2
    .line 3
    return-void
.end method
