.class public Lcom/mgmi/net/bean/ExSplashAdBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private jumpConfirm:Z

.field public jump_type:Ljava/lang/String;

.field public jumpid:Ljava/lang/String;

.field public jumpkind:Ljava/lang/String;

.field private mAdCurrentPosition:J

.field private mErrorCode:I

.field private mErrorMsg:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field public transfer:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorCode:I

    .line 3
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorMsg:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpConfirm:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorCode:I

    .line 7
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorMsg:Ljava/lang/String;

    .line 8
    iput-boolean p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpConfirm:Z

    return-void
.end method


# virtual methods
.method public build(Lcom/mgmi/net/bean/CustomBootAdBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->pageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getAwayAppType()Lcom/mgmi/ads/api/d;

    move-result-object v0

    sget-object v1, Lcom/mgmi/ads/api/d;->AWAY_APP_TYPE_YES:Lcom/mgmi/ads/api/d;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpConfirm:Z

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getJump_type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jump_type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getAdOrigin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->origin:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorCode:I

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/CustomBootAdBean;->getTitleText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->title:Ljava/lang/String;

    return-void
.end method

.method public getAdDurationRemain()J
    .locals 2

    iget-wide v0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mAdCurrentPosition:J

    return-wide v0
.end method

.method public getAdOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorCode:I

    return p0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jump_type:Ljava/lang/String;

    return-object p0
.end method

.method public getJumpid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpid:Ljava/lang/String;

    return-object p0
.end method

.method public getJumpkind()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpkind:Ljava/lang/String;

    return-object p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->pageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTransfer()I
    .locals 0

    iget p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->transfer:I

    return p0
.end method

.method public needJumpConfirm()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpConfirm:Z

    return p0
.end method

.method public setAdCurrentPosition(J)Lcom/mgmi/net/bean/ExSplashAdBean;
    .locals 0

    iput-wide p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mAdCurrentPosition:J

    return-object p0
.end method

.method public setErrorCode(I)Lcom/mgmi/net/bean/ExSplashAdBean;
    .locals 0

    iput p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorCode:I

    return-object p0
.end method

.method public setErrorMsg(Ljava/lang/String;)Lcom/mgmi/net/bean/ExSplashAdBean;
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public setJumpConfirm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpConfirm:Z

    return-void
.end method

.method public setJump_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jump_type:Ljava/lang/String;

    return-void
.end method

.method public setJumpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpid:Ljava/lang/String;

    return-void
.end method

.method public setJumpkind(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->jumpkind:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->origin:Ljava/lang/String;

    return-void
.end method

.method public setPageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->pageUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTransfer(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/net/bean/ExSplashAdBean;->transfer:I

    return-void
.end method
