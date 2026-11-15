.class public Lcom/mgmi/model/VASTBarrageAd;
.super Lcom/mgmi/model/VASTAd;
.source "SourceFile"


# instance fields
.field private interact:Z

.field private mBgColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/mgmi/model/VASTBarrageAd;->mBgColor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/model/VASTBarrageAd;->interact:Z

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTBarrageAd;->mBgColor:I

    return p0
.end method

.method public getInteract()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/model/VASTBarrageAd;->interact:Z

    return p0
.end method

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTBarrageAd;->mBgColor:I

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

    iput-boolean p1, p0, Lcom/mgmi/model/VASTBarrageAd;->interact:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgmi/model/VASTBarrageAd;->interact:Z

    :goto_0
    return-void
.end method
