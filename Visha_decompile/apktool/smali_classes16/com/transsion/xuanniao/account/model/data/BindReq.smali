.class public Lcom/transsion/xuanniao/account/model/data/BindReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private verificationCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->email:Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public getVerificationCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->verificationCode:Ljava/lang/String;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->email:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->phone:Ljava/lang/String;

    return-void
.end method

.method public setVerificationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/BindReq;->verificationCode:Ljava/lang/String;

    return-void
.end method
