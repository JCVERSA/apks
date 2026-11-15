.class public Lcom/mgmi/model/VASTFloatAd;
.super Lcom/mgmi/model/VASTAd;
.source "SourceFile"


# instance fields
.field private adOptionMessage:Lcom/mgmi/model/a;

.field private adStyle:I

.field private aiFollow:Lcom/mgmi/model/b;

.field public autoOpen:Z

.field private bottom:F

.field bubbleEntryListentry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation
.end field

.field private caption:Lcom/mgmi/model/c;

.field private close:I

.field private delayRandTime:I

.field private entry:Lcom/mgmi/platform/view/a;

.field private fixed:I

.field private hasRender:Z

.field public hasReportClick:Z

.field private innerFeed:Lcom/mgmi/model/g;

.field private innerVideo:Lcom/mgmi/model/h;

.field private interact:Z

.field private isWaitRollDuration:Z

.field private joinMethod:I

.field public landPageHasClicked:Z

.field private left:F

.field private mBgColor:I

.field private mECommerce:Le9d;

.field private mVoteMessage:Lcom/mgmi/model/t;

.field private menuItemTotal:I

.field private mqtData:Lcom/mgmi/model/MqtData;

.field private multiChooses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/k;",
            ">;"
        }
    .end annotation
.end field

.field private playerUse:I

.field private right:F

.field private rolltime:I

.field private top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->left:F

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->right:F

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->bottom:F

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->top:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->menuItemTotal:I

    iput-boolean v0, p0, Lcom/mgmi/model/VASTFloatAd;->interact:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->joinMethod:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/mgmi/model/VASTFloatAd;->mBgColor:I

    return-void
.end method


# virtual methods
.method public addBubbleEntry(Ll2d;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addMultiChooseEntry(Lcom/mgmi/model/k;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTFloatAd;->multiChooses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/VASTFloatAd;->multiChooses:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->multiChooses:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOptionMenu(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/model/VASTFloatAd;->adOptionMessage:Lcom/mgmi/model/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mgmi/model/a;->a(Ljava/lang/String;)V

    :cond_0
    iget p1, p0, Lcom/mgmi/model/VASTFloatAd;->menuItemTotal:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->menuItemTotal:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->adOptionMessage:Lcom/mgmi/model/a;

    invoke-virtual {p0}, Lcom/mgmi/model/a;->c()Ll2d;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getAdOptionMessage()Lcom/mgmi/model/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->adOptionMessage:Lcom/mgmi/model/a;

    return-object p0
.end method

.method public getAdStyle()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->adStyle:I

    return p0
.end method

.method public getAiFollow()Lcom/mgmi/model/b;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->aiFollow:Lcom/mgmi/model/b;

    return-object p0
.end method

.method public getBgColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->mBgColor:I

    return p0
.end method

.method public getBottom()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->bottom:F

    return p0
.end method

.method public getBubbleEntryListentry()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll2d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    return-object p0
.end method

.method public getCaption()Lcom/mgmi/model/c;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->caption:Lcom/mgmi/model/c;

    return-object p0
.end method

.method public getClose()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->close:I

    return p0
.end method

.method public getCornerType()Lcom/mgmi/ads/api/f;
    .locals 1

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->playerUse:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/mgmi/ads/api/f;->FIX_RIGHT_BOTTOM:Lcom/mgmi/ads/api/f;

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/mgmi/ads/api/f;->FIX_LEFT_BOTTOM:Lcom/mgmi/ads/api/f;

    return-object p0

    :cond_1
    sget-object p0, Lcom/mgmi/ads/api/f;->COMMON:Lcom/mgmi/ads/api/f;

    return-object p0
.end method

.method public getDelayRandTime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->delayRandTime:I

    return p0
.end method

.method public getECommerce()Le9d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->mECommerce:Le9d;

    return-object p0
.end method

.method public getEntry()Lcom/mgmi/platform/view/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->entry:Lcom/mgmi/platform/view/a;

    return-object p0
.end method

.method public getInnerFeed()Lcom/mgmi/model/g;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->innerFeed:Lcom/mgmi/model/g;

    return-object p0
.end method

.method public getInnerVideo()Lcom/mgmi/model/h;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->innerVideo:Lcom/mgmi/model/h;

    return-object p0
.end method

.method public getInteract()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTFloatAd;->interact:Z

    return p0
.end method

.method public getJoinMethod()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->joinMethod:I

    return p0
.end method

.method public getLeft()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->left:F

    return p0
.end method

.method public getLoopStyle()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->fixed:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public getMqtData()Lcom/mgmi/model/MqtData;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->mqtData:Lcom/mgmi/model/MqtData;

    return-object p0
.end method

.method public getMultiChooses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/k;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->multiChooses:Ljava/util/List;

    return-object p0
.end method

.method public getRight()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->right:F

    return p0
.end method

.method public getRolltime()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->rolltime:I

    return p0
.end method

.method public getTop()F
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTFloatAd;->top:F

    return p0
.end method

.method public getTrackingEventClose()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTFloatAd;->getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventClose(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTFloatAd;->getTrackingEventView(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventView(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "view"

    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVoteMessage()Lcom/mgmi/model/t;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->mVoteMessage:Lcom/mgmi/model/t;

    return-object p0
.end method

.method public isHasRender()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTFloatAd;->hasRender:Z

    return p0
.end method

.method public isPlayerUse()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mgmi/model/VASTFloatAd;->getCornerType()Lcom/mgmi/ads/api/f;

    move-result-object p0

    sget-object v0, Lcom/mgmi/ads/api/f;->COMMON:Lcom/mgmi/ads/api/f;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWaitRollDuration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTFloatAd;->isWaitRollDuration:Z

    return p0
.end method

.method public setAdOptionMessage(Lcom/mgmi/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->adOptionMessage:Lcom/mgmi/model/a;

    return-void
.end method

.method public setAdStyle(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->adStyle:I

    return-void
.end method

.method public setAiFollow(Lcom/mgmi/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->aiFollow:Lcom/mgmi/model/b;

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->mBgColor:I

    return-void
.end method

.method public setBottom(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->bottom:F

    return-void
.end method

.method public setCaption(Lcom/mgmi/model/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->caption:Lcom/mgmi/model/c;

    return-void
.end method

.method public setClose(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->close:I

    return-void
.end method

.method public setDelayRandTime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->delayRandTime:I

    return-void
.end method

.method public setECommerce(Le9d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->mECommerce:Le9d;

    return-void
.end method

.method public setEntry(Lcom/mgmi/platform/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->entry:Lcom/mgmi/platform/view/a;

    return-void
.end method

.method public setFixed(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->fixed:I

    return-void
.end method

.method public setHasRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTFloatAd;->hasRender:Z

    return-void
.end method

.method public setInnerFeed(Lcom/mgmi/model/g;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->innerFeed:Lcom/mgmi/model/g;

    return-void
.end method

.method public setInnerVideo(Lcom/mgmi/model/h;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->innerVideo:Lcom/mgmi/model/h;

    return-void
.end method

.method public setInteract(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgmi/model/VASTFloatAd;->interact:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTFloatAd;->interact:Z

    :goto_0
    return-void
.end method

.method public setJoinMethod(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->joinMethod:I

    return-void
.end method

.method public setLeft(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->left:F

    return-void
.end method

.method public setMqtData(Lcom/mgmi/model/MqtData;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->mqtData:Lcom/mgmi/model/MqtData;

    return-void
.end method

.method public setPlayerUse(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->playerUse:I

    return-void
.end method

.method public setRight(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->right:F

    return-void
.end method

.method public setRolltime(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->rolltime:I

    return-void
.end method

.method public setTop(F)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTFloatAd;->top:F

    return-void
.end method

.method public setVoteMessage(Lcom/mgmi/model/t;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTFloatAd;->mVoteMessage:Lcom/mgmi/model/t;

    return-void
.end method

.method public setWaitRollDuration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTFloatAd;->isWaitRollDuration:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VASTFloatAd{hasRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->hasRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rolltime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->rolltime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->close:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", aiFollow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->aiFollow:Lcom/mgmi/model/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mqtData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->mqtData:Lcom/mgmi/model/MqtData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWaitRollDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->isWaitRollDuration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", landPageHasClicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->landPageHasClicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->autoOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasReportClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->hasReportClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", multiChooses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->multiChooses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", entry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->entry:Lcom/mgmi/platform/view/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bubbleEntryListentry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->bubbleEntryListentry:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playerUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->playerUse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", menuItemTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->menuItemTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adOptionMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->adOptionMessage:Lcom/mgmi/model/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mECommerce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->mECommerce:Le9d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delayRandTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->delayRandTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVoteMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->mVoteMessage:Lcom/mgmi/model/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->fixed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->adStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mgmi/model/VASTFloatAd;->interact:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", joinMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->joinMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBgColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgmi/model/VASTFloatAd;->mBgColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", innerVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->innerVideo:Lcom/mgmi/model/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgmi/model/VASTFloatAd;->caption:Lcom/mgmi/model/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", innerFeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgmi/model/VASTFloatAd;->innerFeed:Lcom/mgmi/model/g;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
