.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final adStatusStr:Ljava/lang/String;

.field private final adsDTOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adStatusStr:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adsDTOList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getAdStatusStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adStatusStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdsDTOList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adsDTOList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
