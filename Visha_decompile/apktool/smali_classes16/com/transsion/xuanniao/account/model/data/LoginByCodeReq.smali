.class public Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientId:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private extraInfo:I

.field public otherAppId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private verificationCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->extraInfo:I

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraInfo()I
    .locals 0

    iget p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->extraInfo:I

    return p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public getVerificationCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->verificationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->email:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->extraInfo:I

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->phone:Ljava/lang/String;

    return-void
.end method

.method public setVerificationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginByCodeReq;->verificationCode:Ljava/lang/String;

    return-void
.end method
