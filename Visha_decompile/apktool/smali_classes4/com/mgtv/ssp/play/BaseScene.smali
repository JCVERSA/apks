.class public abstract Lcom/mgtv/ssp/play/BaseScene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/ssp/play/IScene;


# instance fields
.field protected mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

.field protected playData:Lcom/mgtv/ssp/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToViewGroup(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAuthData()Lcom/mgtv/ssp/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    return-object p0
.end method

.method public getPlayerAuthData()Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/a/a;->h:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAuthData(Lcom/mgtv/ssp/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/BaseScene;->playData:Lcom/mgtv/ssp/a/a;

    invoke-virtual {p0}, Lcom/mgtv/ssp/play/BaseScene;->getPlayerAuthData()Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/play/BaseScene;->mSceneData:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

    return-void
.end method
