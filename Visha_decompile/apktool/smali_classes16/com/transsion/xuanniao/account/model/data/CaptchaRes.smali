.class public Lcom/transsion/xuanniao/account/model/data/CaptchaRes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private captchaBase64:Ljava/lang/String;

.field private captchaCode:Ljava/lang/String;

.field private captchaTicket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptchaBase64()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaBase64:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptchaCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaCode:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptchaTicket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaTicket:Ljava/lang/String;

    return-object p0
.end method

.method public setCaptchaBase64(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaBase64:Ljava/lang/String;

    return-void
.end method

.method public setCaptchaCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaCode:Ljava/lang/String;

    return-void
.end method

.method public setCaptchaTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->captchaTicket:Ljava/lang/String;

    return-void
.end method
