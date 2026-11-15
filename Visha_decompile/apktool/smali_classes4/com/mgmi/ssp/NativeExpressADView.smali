.class public Lcom/mgmi/ssp/NativeExpressADView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBaseAdView:Lcom/mgtv/a/b/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/mgtv/a/b/a;

    iput-object p1, p0, Lcom/mgmi/ssp/NativeExpressADView;->mBaseAdView:Lcom/mgtv/a/b/a;

    return-void
.end method


# virtual methods
.method public getECPM()I
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressADView;->mBaseAdView:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->A()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getValueTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressADView;->mBaseAdView:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressADView;->mBaseAdView:Lcom/mgtv/a/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isVideoType()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ssp/NativeExpressADView;->mBaseAdView:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
