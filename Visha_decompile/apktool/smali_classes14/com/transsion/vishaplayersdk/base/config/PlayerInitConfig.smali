.class public Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    }
.end annotation


# instance fields
.field protected context:Landroid/app/Application;

.field protected mClientIP:Ljava/lang/String;

.field protected mCountryCode:Ljava/lang/String;

.field protected mGAID:Ljava/lang/String;

.field protected mIsLogin:Z

.field protected mLanguageCode:Ljava/lang/String;

.field protected mOpenid:Ljava/lang/String;

.field protected mPalmToken:Ljava/lang/String;

.field private mPlayerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mTokenType:Ljava/lang/String;

.field protected mUserToken:Ljava/lang/String;

.field protected mVAID:Ljava/lang/String;

.field protected mbVIP:Z

.field protected playerExtras:Ljava/lang/Object;

.field protected playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mbVIP:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public IsLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mIsLogin:Z

    return p0
.end method

.method public getClientIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mClientIP:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mClientIP:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mClientIP:Ljava/lang/String;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->context:Landroid/app/Application;

    return-object p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mCountryCode:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public getGAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mGAID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mGAID:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mGAID:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mLanguageCode:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mLanguageCode:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    return-object p0
.end method

.method public getPalmToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mPalmToken:Ljava/lang/String;

    return-object p0
.end method

.method public getPlayerActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayerExtras()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerExtras:Ljava/lang/Object;

    return-object p0
.end method

.method public getPlayerType()Lcom/transsion/vishaplayersdk/base/config/PlayerType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    return-object p0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mTokenType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mTokenType:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    return-object p0
.end method

.method public getVAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mVAID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mVAID:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mVAID:Ljava/lang/String;

    return-object p0
.end method

.method public isVIP()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mbVIP:Z

    return p0
.end method

.method public isValidConfig()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setClientIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mClientIP:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method public setGAID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mGAID:Ljava/lang/String;

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public setLoginState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mIsLogin:Z

    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    return-void
.end method

.method public setPalmToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mPalmToken:Ljava/lang/String;

    return-void
.end method

.method public setTokenType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mTokenType:Ljava/lang/String;

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    return-void
.end method

.method public setVAID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mVAID:Ljava/lang/String;

    return-void
.end method

.method public setVIP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mbVIP:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayerInitConfig{context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->context:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerExtras:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLogin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mIsLogin:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
