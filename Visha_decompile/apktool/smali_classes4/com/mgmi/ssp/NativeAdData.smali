.class public Lcom/mgmi/ssp/NativeAdData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ssp/NativeADDataRef;


# instance fields
.field private hasExpose:Z

.field private mBaseAdView:Lcom/mgtv/a/b/a/a;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/b/a/a;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ssp/NativeAdData;->hasExpose:Z

    iput-object p1, p0, Lcom/mgmi/ssp/NativeAdData;->mBaseAdView:Lcom/mgtv/a/b/a/a;

    iput-object p2, p0, Lcom/mgmi/ssp/NativeAdData;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAdData;->mBaseAdView:Lcom/mgtv/a/b/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAdData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeAdData;->mBaseAdView:Lcom/mgtv/a/b/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onClicked(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mgmi/ssp/NativeAdData;->mBaseAdView:Lcom/mgtv/a/b/a/a;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/mgmi/ssp/NativeAdData;->hasExpose:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->z()V

    :cond_0
    return-void
.end method

.method public onExposured(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mgmi/ssp/NativeAdData;->mBaseAdView:Lcom/mgtv/a/b/a/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ssp/NativeAdData;->hasExpose:Z

    invoke-virtual {p1}, Lcom/mgtv/a/b/a/a;->y()V

    :cond_0
    return-void
.end method
