.class public Lcom/transsion/palmsdk/data/PalmAuthResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

.field private userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "user_info"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcom/transsion/palmsdk/data/PalmUserInfo;

    invoke-direct {v1, v0}, Lcom/transsion/palmsdk/data/PalmUserInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Lcom/transsion/palmsdk/data/PalmAccountInfo;

    invoke-direct {v1, v0}, Lcom/transsion/palmsdk/data/PalmAccountInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    .line 7
    :cond_2
    :goto_1
    const-string v0, "token_info"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    const-string v0, "auth_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    new-instance v0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    invoke-direct {v0, p1}, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    invoke-direct {v0, p1}, Lcom/transsion/palmsdk/data/PalmTokenInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    :cond_4
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/transsion/palmsdk/data/PalmAccountInfo;

    invoke-direct {v0, p2}, Lcom/transsion/palmsdk/data/PalmAccountInfo;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object p2, v0, Lcom/transsion/palmsdk/data/PalmAccountInfo;->openId:Ljava/lang/String;

    .line 16
    iget-object v1, v0, Lcom/transsion/palmsdk/data/PalmAccountInfo;->uniqueId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v1, p2

    .line 18
    :goto_0
    :try_start_0
    new-instance v0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "access_token"

    .line 19
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "open_id"

    .line 20
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "unique_id"

    .line 21
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/palmsdk/data/PalmTokenInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;->authCode:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmUserInfo;->avatarUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getExpiresIn()I
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    iget p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->expires_in:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmUserInfo;->nickName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;->openid:Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->openid:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->refresh_token:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    instance-of v0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->uniqueId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmUserInfo;->userName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    const-string v2, ";"

    if-eqz v1, :cond_0

    const-string v1, "userName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    iget-object v1, v1, Lcom/transsion/palmsdk/data/PalmUserInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nickName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->userInfo:Lcom/transsion/palmsdk/data/PalmUserInfo;

    iget-object v1, v1, Lcom/transsion/palmsdk/data/PalmUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthResult;->authInfo:Lcom/transsion/palmsdk/data/PalmAuthInfo;

    if-eqz p0, :cond_2

    instance-of v1, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;

    const-string v1, "auth_code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmAuthCodeInfo;->authCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;

    const-string v1, "access_token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/palmsdk/data/PalmTokenInfo;->access_token:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
