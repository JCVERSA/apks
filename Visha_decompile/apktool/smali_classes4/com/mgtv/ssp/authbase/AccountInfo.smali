.class public Lcom/mgtv/ssp/authbase/AccountInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static defaultVipUrl:Ljava/lang/String; = "https://club.mgtv.com/act/content_union_cashier.html?is_app_url=1&isHideNavBar=1&isFullScreen=1"


# instance fields
.field private isLogin:Z

.field private openId:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private vipurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->phone:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->openId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->isLogin:Z

    return-void
.end method


# virtual methods
.method public getOpenId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->token:Ljava/lang/String;

    return-object p0
.end method

.method public getVipurl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->vipurl:Ljava/lang/String;

    return-object p0
.end method

.method public isLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->isLogin:Z

    return p0
.end method

.method public setLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->isLogin:Z

    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->openId:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public setVipurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/authbase/AccountInfo;->vipurl:Ljava/lang/String;

    return-void
.end method
