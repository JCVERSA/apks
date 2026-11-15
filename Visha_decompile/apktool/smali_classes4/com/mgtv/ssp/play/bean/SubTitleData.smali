.class public Lcom/mgtv/ssp/play/bean/SubTitleData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field private captionCountrySimpleName:Ljava/lang/String;

.field private captionSimpleName:Ljava/lang/String;

.field private language:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->name:Ljava/lang/String;

    iput p2, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->language:I

    iput-object p3, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionCountrySimpleName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionSimpleName:Ljava/lang/String;

    return-void
.end method

.method public getAreaCode()I
    .locals 2

    iget p0, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->language:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x12

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    const/16 p0, 0x17

    return p0

    :cond_5
    const/16 p0, 0x13

    return p0

    :cond_6
    const/16 p0, 0xa

    return p0
.end method

.method public getCaptionCountrySimpleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionCountrySimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public getCaptionSimpleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionSimpleName:Ljava/lang/String;

    return-object p0
.end method

.method public getLanguage()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->language:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setCaptionCountrySimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionCountrySimpleName:Ljava/lang/String;

    return-void
.end method

.method public setCaptionSimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->captionSimpleName:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->language:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/bean/SubTitleData;->name:Ljava/lang/String;

    return-void
.end method
