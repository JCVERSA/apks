.class public final Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adButtonName:Ljava/lang/String;

.field public adDuration:I

.field public adTag:Ljava/lang/String;

.field public adVideoHeight:I

.field public adVideoWidth:I

.field public canPause:Z

.field public isTrueViewAd:Z

.field public trueViewDuration:I

.field public url:Ljava/lang/String;

.field private vipText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->vipText:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdButtonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adButtonName:Ljava/lang/String;

    return-object p0
.end method

.method public getAdDuration()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adDuration:I

    return p0
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adTag:Ljava/lang/String;

    return-object p0
.end method

.method public getAdVideoHeight()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoHeight:I

    return p0
.end method

.method public getAdVideoWidth()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoWidth:I

    return p0
.end method

.method public getTrueViewDuration()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->trueViewDuration:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getVipText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->vipText:Ljava/lang/String;

    return-object p0
.end method

.method public isCanPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->canPause:Z

    return p0
.end method

.method public isTrueViewAd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->isTrueViewAd:Z

    return p0
.end method

.method public setAdButtonName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adButtonName:Ljava/lang/String;

    return-void
.end method

.method public setAdDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adDuration:I

    return-void
.end method

.method public setAdTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adTag:Ljava/lang/String;

    return-void
.end method

.method public setAdVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoHeight:I

    return-void
.end method

.method public setAdVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->adVideoWidth:I

    return-void
.end method

.method public setCanPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->canPause:Z

    return-void
.end method

.method public setTrueViewAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->isTrueViewAd:Z

    return-void
.end method

.method public setTrueViewDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->trueViewDuration:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public setVipText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/playsdk/PlayerAdInfo;->vipText:Ljava/lang/String;

    return-void
.end method
