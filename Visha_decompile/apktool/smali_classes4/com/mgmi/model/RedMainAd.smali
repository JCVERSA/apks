.class public Lcom/mgmi/model/RedMainAd;
.super Lcom/mgmi/model/VASTAd;
.source "SourceFile"


# instance fields
.field private channelId:Ljava/lang/String;

.field private countDownId:Ljava/lang/String;

.field private nt:I

.field private rainId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/RedMainAd;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public getCountDownId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/RedMainAd;->countDownId:Ljava/lang/String;

    return-object p0
.end method

.method public getNt()J
    .locals 2

    iget p0, p0, Lcom/mgmi/model/RedMainAd;->nt:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public getRainId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/RedMainAd;->rainId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/RedMainAd;->channelId:Ljava/lang/String;

    return-void
.end method

.method public setCountDownId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/RedMainAd;->countDownId:Ljava/lang/String;

    return-void
.end method

.method public setNt(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/RedMainAd;->nt:I

    return-void
.end method

.method public setRainId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/RedMainAd;->rainId:Ljava/lang/String;

    return-void
.end method
