.class public Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;
.super Ljava/lang/Object;
.source "SourceFile"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adStatusStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adsDTOList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdStatusStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adStatusStr:Ljava/lang/String;

    return-object p0
.end method

.method public getAdsDTOList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/data/bean/inapp/CachedAdInfos;->adsDTOList:Ljava/util/List;

    return-object p0
.end method
