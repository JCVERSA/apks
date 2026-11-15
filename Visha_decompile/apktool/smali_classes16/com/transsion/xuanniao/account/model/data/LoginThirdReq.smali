.class public Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FACEBOOK_TYPE:I = 0x1

.field public static final GOOGLE_TYPE:I = 0x2

.field public static final INFINIX_TYPE:I = 0x5

.field public static final ITEL_TYPE:I = 0x6

.field public static final LINE_TYPE:I = 0x7

.field public static final TECNO_TYPE:I = 0x4

.field public static final TWITTER_TYPE:I = 0x3

.field public static final VK_TYPE:I = 0x8


# instance fields
.field private authTicket:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field private extraInfo:I

.field public otherAppId:Ljava/lang/String;

.field private thirdToken:Ljava/lang/String;

.field private thirdType:I

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->extraInfo:I

    return-void
.end method


# virtual methods
.method public getAuthTicket()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->authTicket:Ljava/lang/String;

    return-object p0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraInfo()I
    .locals 0

    iget p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->extraInfo:I

    return p0
.end method

.method public getThirdToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->thirdToken:Ljava/lang/String;

    return-object p0
.end method

.method public getThirdType()I
    .locals 0

    iget p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->thirdType:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->userId:I

    return p0
.end method

.method public setAuthTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->authTicket:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->extraInfo:I

    return-void
.end method

.method public setThirdToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->thirdToken:Ljava/lang/String;

    return-void
.end method

.method public setThirdType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->thirdType:I

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginThirdReq;->userId:I

    return-void
.end method
