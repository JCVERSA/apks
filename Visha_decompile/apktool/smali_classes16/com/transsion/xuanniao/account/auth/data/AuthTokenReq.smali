.class public Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clientId:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private grantType:Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public getCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getGrantType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->grantType:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->redirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->code:Ljava/lang/String;

    return-void
.end method

.method public setGrantType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->grantType:Ljava/lang/String;

    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->redirectUri:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/auth/data/AuthTokenReq;->scope:Ljava/lang/String;

    return-void
.end method
