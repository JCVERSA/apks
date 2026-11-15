.class public Lcom/mgmi/ssp/BidInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BID_FAIL_ERROR:I = 0x3

.field public static final BID_FAIL_FILTER:I = 0x1

.field public static final BID_FAIL_TIMEOUT:I = 0x2

.field public static final BID_SUCCESS:I


# instance fields
.field private bidType:Ljava/lang/String;

.field private bidWinner:Ljava/lang/String;

.field private eCPM:I

.field private result:I

.field private secondECPM:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/ssp/BidInfo;->result:I

    return-void
.end method


# virtual methods
.method public getBidType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/BidInfo;->bidType:Ljava/lang/String;

    return-object p0
.end method

.method public getBidWinner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/BidInfo;->bidWinner:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/BidInfo;->result:I

    return p0
.end method

.method public getSecondECPM()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/BidInfo;->secondECPM:I

    return p0
.end method

.method public getWinECPM()I
    .locals 0

    iget p0, p0, Lcom/mgmi/ssp/BidInfo;->eCPM:I

    return p0
.end method

.method public setBidType(Ljava/lang/String;)Lcom/mgmi/ssp/BidInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/BidInfo;->bidType:Ljava/lang/String;

    return-object p0
.end method

.method public setBidWinner(Ljava/lang/String;)Lcom/mgmi/ssp/BidInfo;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ssp/BidInfo;->bidWinner:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(I)Lcom/mgmi/ssp/BidInfo;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/BidInfo;->result:I

    return-object p0
.end method

.method public setSecondECPM(I)Lcom/mgmi/ssp/BidInfo;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/BidInfo;->secondECPM:I

    return-object p0
.end method

.method public setWinECMP(I)Lcom/mgmi/ssp/BidInfo;
    .locals 0

    iput p1, p0, Lcom/mgmi/ssp/BidInfo;->eCPM:I

    return-object p0
.end method
