.class Lcom/mgtv/a/b/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/d/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/b/a/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/b/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(II)Landroid/graphics/Bitmap;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->getSnapshot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_6

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    const-string v1, ""

    if-ne p1, v0, :cond_2

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_1

    .line 3
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_COUNT_CLICK:Lcom/mgmi/ads/api/a$a;

    .line 4
    new-instance p2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p2, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_3

    .line 6
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_PAUSEAD_REPLAYER:Lcom/mgmi/ads/api/a$a;

    .line 7
    new-instance p2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    invoke-direct {p2, v1}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_3
    return-void

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_5

    .line 9
    invoke-interface {p0, p1, p2}, Lcom/mgtv/a/b/a/b;->a(ILjava/lang/Object;)V

    :cond_5
    return-void

    .line 10
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-nez v0, :cond_7

    return-void

    .line 11
    :cond_7
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    .line 12
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mgtv/a/d/b/b;->a(Z)V

    .line 13
    :cond_8
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v2, v0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    if-eqz v2, :cond_9

    if-eq p1, v1, :cond_9

    .line 14
    iget-object p1, v0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/mgtv/a/a/a;->a(Ljava/lang/Object;)V

    .line 15
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgtv/a/a/a;->b(Z)V

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 21
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->l:Lcom/mgtv/a/a/a;

    const-string v0, ""

    const v1, 0x927c0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/mgtv/a/a/a;->a(ILjava/lang/String;)V

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->m:Lcom/mgtv/a/b/a/b;

    if-eqz p0, :cond_1

    .line 24
    invoke-interface {p0, v1, v0}, Lcom/mgtv/a/b/a/b;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Ldkd;)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v1, v0, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v1, :cond_0

    .line 17
    new-instance v2, Lcom/mgtv/a/a/b;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v3, v3, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v3}, Lcom/mgtv/a/d/b/b;->q()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/mgtv/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, v0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    invoke-virtual {v2, v0}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/ads/api/a;)V

    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/mgtv/a/a/b;->a(Landroid/view/View;Ldkd;)V

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->h()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 32
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, p1, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/mgtv/a/a/b;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v2, v2, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v2}, Lcom/mgtv/a/d/b/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/mgtv/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    invoke-virtual {v1, p1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/ads/api/a;)V

    .line 35
    invoke-virtual {v1}, Lcom/mgtv/a/a/b;->c()V

    .line 36
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {p1}, Lcom/mgtv/a/d/b/b;->s()V

    .line 37
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->j()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 25
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v0, p1, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Lcom/mgtv/a/a/b;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/b;->p()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object v2, v2, Lcom/mgtv/a/b/a/a;->k:Lcom/mgtv/a/d/b/b;

    invoke-virtual {v2}, Lcom/mgtv/a/d/b/b;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/mgtv/a/a/b;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p1, p1, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    invoke-virtual {v1, p1}, Lcom/mgtv/a/a/b;->a(Lcom/mgmi/ads/api/a;)V

    .line 28
    invoke-virtual {v1}, Lcom/mgtv/a/a/b;->b()V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_1

    .line 30
    sget-object p1, Lcom/mgmi/ads/api/a$a;->FULLSCREEN_REQUESTED:Lcom/mgmi/ads/api/a$a;

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    iget-object p0, p0, Lcom/mgtv/a/b/a/a;->n:Lcom/mgmi/ads/api/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/b/a/a$2;->a:Lcom/mgtv/a/b/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->e()V

    return-void
.end method
