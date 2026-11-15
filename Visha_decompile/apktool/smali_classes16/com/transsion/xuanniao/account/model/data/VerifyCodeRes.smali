.class public Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;
.super Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;

.field public ticket:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->ticket:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->code:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/VerifyCodeRes;->type:Ljava/lang/String;

    return-void
.end method
