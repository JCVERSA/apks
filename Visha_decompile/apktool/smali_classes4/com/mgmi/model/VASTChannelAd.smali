.class public Lcom/mgmi/model/VASTChannelAd;
.super Lcom/mgmi/model/VASTAd;
.source "SourceFile"


# static fields
.field public static final AD_DOUBLE_FEED314:Ljava/lang/String; = "9000314"

.field public static final AD_DOUBLE_FEED315:Ljava/lang/String; = "9000315"

.field public static final AD_DOUBLE_FEED316:Ljava/lang/String; = "9000316"

.field public static final AD_FENGCHE:Ljava/lang/String; = "200050"

.field public static final AD_HORIZONTAL:Ljava/lang/String; = "200048"

.field public static final AD_HUAXU:Ljava/lang/String; = "9000167"


# instance fields
.field private downLoadInfoStatus:Lcom/mgmi/model/f;

.field private id:Ljava/lang/String;

.field private mBgColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgmi/model/VASTAd;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/mgmi/model/VASTChannelAd;->mBgColor:I

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VASTChannelAd;->mBgColor:I

    return p0
.end method

.method public getDownLoadInfoStatus()Lcom/mgmi/model/f;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTChannelAd;->downLoadInfoStatus:Lcom/mgmi/model/f;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/VASTChannelAd;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getTrackingEventFb()Ljava/util/List;
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
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTChannelAd;->getTrackingEventFb(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackingEventFb(Ljava/lang/String;)Ljava/util/List;
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
    const-string v0, "fb"

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
    invoke-virtual {p0, v0}, Lcom/mgmi/model/VASTChannelAd;->getTrackingEventView(Ljava/lang/String;)Ljava/util/List;

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

.method public setBgColor(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VASTChannelAd;->mBgColor:I

    return-void
.end method

.method public setDownLoadInfoStatus(Lcom/mgmi/model/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTChannelAd;->downLoadInfoStatus:Lcom/mgmi/model/f;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/VASTChannelAd;->id:Ljava/lang/String;

    return-void
.end method
