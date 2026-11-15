.class public abstract Lcom/mgmi/ads/api/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/render/a;
.implements Lcom/mgtv/a/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/g$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/mgmi/model/VASTChannelAd;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field protected e:Lcom/mgtv/a/b/a;

.field protected f:Z

.field protected g:Lcom/mgmi/ads/api/a/g$a;

.field protected h:Z

.field protected i:Z

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgtv/a/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgmi/model/VASTChannelAd;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->f:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->l:Z

    const-string v1, "BaseAdView_CommonPlusVastLoader"

    iput-object v1, p0, Lcom/mgmi/ads/api/a/g;->n:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->h:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->i:Z

    iput-object p2, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    iput-object p3, p0, Lcom/mgmi/ads/api/a/g;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/g;->k:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/mgmi/ads/api/a/g$a;->a_()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/ads/api/a/g;->m:I

    return-void
.end method

.method public abstract a(Landroid/view/ViewGroup;)V
.end method

.method public a(Lcom/mgmi/ads/api/a/g$a;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTChannelAd;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/mgmi/ads/api/render/c;

    invoke-direct {p1, p0, p3}, Lcom/mgmi/ads/api/render/c;-><init>(Lcom/mgmi/ads/api/render/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mgmi/ads/api/render/c;->a()V

    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/g;->f:Z

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/mgmi/ads/api/a/g$a;->a(ZI)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)I
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/g;->k:Z

    return p1
.end method

.method public abstract b()V
.end method

.method public b(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/g;->f:Z

    .line 4
    invoke-interface {v0, p1}, Lcom/mgmi/ads/api/a/g$a;->a(I)V

    :cond_0
    return-void
.end method

.method public abstract c()V
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->k:Z

    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->f_()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->k:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->d:Z

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/a/a;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    :cond_0
    return-void
.end method

.method public h()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public i()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/g$a;->d()Lcom/mgmi/ads/api/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()Lcom/mgmi/ads/api/a/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->g:Lcom/mgmi/ads/api/a/g$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/g$a;->e()Lcom/mgmi/ads/api/a/d;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object v0

    const-string v1, "2"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v1, "1"

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-virtual {p0, v1}, Lcom/mgtv/a/b/a/a;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
