.class public Lcom/transsion/xuanniao/account/model/data/AccountRes;
.super Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;
.source "SourceFile"


# instance fields
.field public avatarUrl:Ljava/lang/String;

.field public base64Avatar:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public existPassword:Z

.field public fullName:Ljava/lang/String;

.field private gender:Ljava/lang/Integer;

.field public haveAddress:Z

.field public nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "nickName"
        }
        value = "nickname"
    .end annotation
.end field

.field public openId:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public profession:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public states:Z

.field public uniqueId:Ljava/lang/String;

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "userName"
        }
        value = "username"
    .end annotation
.end field

.field public usernameModifyRemainTimes:I

.field public xuanniaoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getGender()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->gender:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->gender:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->gender:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOlderGender()I
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/model/data/AccountRes;->getGender()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public havePhoneOrEmail()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setGender(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->gender:Ljava/lang/Integer;

    return-void
.end method
