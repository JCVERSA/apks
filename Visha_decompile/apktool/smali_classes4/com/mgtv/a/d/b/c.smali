.class public abstract Lcom/mgtv/a/d/b/c;
.super Lcom/mgtv/a/d/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/a<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/d/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVoice_btn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/b/a;->d(I)V

    iget-object v0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAd_timer()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setCountDownVisible(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/a;->p:Lcom/mgmi/ViewGroup/MgmiAdTopBar;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/mgmi/ViewGroup/MgmiAdTopBar;->setCountDownVisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    iget p1, p1, Lcom/mgmi/model/VASTAd;->clk_area:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/a/d/b/a;->j:Z

    return-void
.end method

.method public c(Lcom/mgmi/model/VASTAd;)V
    .locals 3

    :try_start_0
    new-instance v0, Lm5d;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lm5d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mgmi/model/VASTAd;)V

    invoke-virtual {v0, p1}, Lm5d;->d(Lcom/mgmi/model/VASTAd;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/a/d/b/a;->k:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mgtv/a/d/b/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/c;->a(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/c;->b(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/b/c;->c(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method
