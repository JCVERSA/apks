.class public Lcom/mgtv/a/b/a;
.super Lcom/mgtv/a/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/b/a/a<",
        "Lcom/mgmi/model/VASTChannelAd;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "banner"

    invoke-direct {p0, v0}, Lcom/mgtv/a/b/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lg4d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/a/b/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->t()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/mgmi/model/VASTChannelAd;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/b/a;->a(Lcom/mgmi/model/VASTChannelAd;)V

    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->j()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTChannelAd;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->hasFireImpressions()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    instance-of v0, p0, Lcom/mgtv/a/d/a/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a;->i()V

    :cond_0
    return-void
.end method

.method public d_()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    instance-of v0, p0, Lcom/mgtv/a/d/a/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/a/a;->h()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->f()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/a/b/a/a;->g()V

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/a/b/a/b;->r()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/a/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setValuesTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    sget-object v1, Lcom/mgmi/ads/api/a$a;->JUMP_SCHEMA:Lcom/mgmi/ads/api/a$a;

    invoke-virtual {p0, v1, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j()V
    .locals 3

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->CLOSE_AD:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method
