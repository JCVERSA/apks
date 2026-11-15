.class public Lcom/mgmi/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BIDFAIL_ERROR:I = 0x3

.field public static final BIDFAIL_FILTER:I = 0x1

.field public static final BIDFAIL_TIMEOUT:I = 0x2

.field public static final BIDSUCCESS:I


# instance fields
.field private bidType:Ljava/lang/String;

.field private bidWinner:Ljava/lang/String;

.field private eCPM:Ljava/lang/String;

.field private result:I

.field private secondECPM:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgmi/e/a;->result:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/e/a;->eCPM:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/e/a;->secondECPM:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/e/a;->bidType:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/e/a;->bidWinner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBidType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a;->bidType:Ljava/lang/String;

    return-object p0
.end method

.method public getBidWinner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a;->bidWinner:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/mgmi/e/a;->result:I

    return p0
.end method

.method public getSecondECPM()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a;->secondECPM:Ljava/lang/String;

    return-object p0
.end method

.method public getWinECPM()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/e/a;->eCPM:Ljava/lang/String;

    return-object p0
.end method

.method public setBidType(Ljava/lang/String;)Lcom/mgmi/e/a;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/a;->bidType:Ljava/lang/String;

    return-object p0
.end method

.method public setBidWinner(Ljava/lang/String;)Lcom/mgmi/e/a;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/a;->bidWinner:Ljava/lang/String;

    return-object p0
.end method

.method public setResult(I)Lcom/mgmi/e/a;
    .locals 0

    iput p1, p0, Lcom/mgmi/e/a;->result:I

    return-object p0
.end method

.method public setSecondECPM(Ljava/lang/String;)Lcom/mgmi/e/a;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/a;->secondECPM:Ljava/lang/String;

    return-object p0
.end method

.method public setWinECPM(Ljava/lang/String;)Lcom/mgmi/e/a;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/e/a;->eCPM:Ljava/lang/String;

    return-object p0
.end method
