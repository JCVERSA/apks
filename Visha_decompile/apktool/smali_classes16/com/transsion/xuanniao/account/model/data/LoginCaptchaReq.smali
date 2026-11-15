.class public Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public captchaCode:Ljava/lang/String;

.field public captchaTicket:Ljava/lang/String;

.field public captchaV2:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public extraInfo:I

.field public otherAppId:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/xuanniao/account/model/data/LoginCaptchaReq;->extraInfo:I

    return-void
.end method
