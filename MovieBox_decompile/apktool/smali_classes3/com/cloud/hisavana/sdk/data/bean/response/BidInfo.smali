.class public Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private adCreativeId:Ljava/lang/String;

.field private biddingToken:Ljava/lang/String;

.field private codeSeatId:Ljava/lang/String;

.field private currency:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

.field private price:Ljava/lang/Double;


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
.method public getAdCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->adCreativeId:Ljava/lang/String;

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

.method public getBiddingToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->biddingToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeatId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrency()Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->currency:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->price:Ljava/lang/Double;

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
    return-wide v0
.end method

.method public setAdCreativeId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->adCreativeId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBiddingToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->biddingToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodeSeatId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrency(Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->currency:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

    .line 2
    .line 3
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->price:Ljava/lang/Double;

    .line 2
    .line 3
    return-void
.end method
