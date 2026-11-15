.class public Lcom/mgtv/ssp/bean/VideoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# instance fields
.field private ad:Lcom/mgtv/ssp/bean/AdBean;

.field public isFirstVideo:Z

.field private type:I

.field private video:Lcom/mgtv/ssp/bean/VideoInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAd()Lcom/mgtv/ssp/bean/AdBean;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoBean;->ad:Lcom/mgtv/ssp/bean/AdBean;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/mgtv/ssp/bean/VideoBean;->type:I

    return p0
.end method

.method public getVideo()Lcom/mgtv/ssp/bean/VideoInfoBean;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/bean/VideoBean;->video:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-object p0
.end method

.method public setAd(Lcom/mgtv/ssp/bean/AdBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoBean;->ad:Lcom/mgtv/ssp/bean/AdBean;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/ssp/bean/VideoBean;->type:I

    return-void
.end method

.method public setVideo(Lcom/mgtv/ssp/bean/VideoInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/bean/VideoBean;->video:Lcom/mgtv/ssp/bean/VideoInfoBean;

    return-void
.end method
