.class public abstract Lcom/mgtv/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgtv/a/c/c<",
        "Lcom/mgmi/model/m;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Z

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lcom/mgmi/model/m;

.field protected p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

.field protected q:Lcom/mgtv/a/c/e;

.field protected r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13ec

    iput v0, p0, Lcom/mgtv/a/c/a;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/mgtv/a/c/a;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgtv/a/c/a;->i:Z

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->l:Z

    new-instance v0, Lcom/mgtv/a/c/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mgtv/a/c/a$1;-><init>(Lcom/mgtv/a/c/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/mgtv/a/c/a;->b:I

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->f()V

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/model/m;)V
    .locals 0

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Lcom/mgmi/model/m;

    invoke-direct {p1}, Lcom/mgmi/model/m;-><init>()V

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    return-void
.end method

.method public a(Lcom/mgtv/a/c/e;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(ZZI)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/mgtv/a/c/a;->j:Z

    .line 9
    iput-boolean p2, p0, Lcom/mgtv/a/c/a;->k:Z

    .line 10
    iput p3, p0, Lcom/mgtv/a/c/a;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/a/c/a;->h:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->g:Z

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->a()V

    :cond_0
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public b(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/mgtv/a/c/a;->f:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/a/c/a;->i:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/c/a;->c:I

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->d()V

    return-void
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->e()V

    iget-object v0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    iget p0, p0, Lcom/mgtv/a/c/a;->a:I

    int-to-long v1, p0

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/a/c/a;->r:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->n()V

    return-void
.end method

.method public k()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->o()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->h:Z

    return-void
.end method

.method public m()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/a/c/a;->h:Z

    return p0
.end method

.method public n()V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->f()V

    return-void
.end method

.method public o()V
    .locals 2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    return-void
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/a/c/a;->g:Z

    return p0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/c/a;->l:Z

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->e()V

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->f()V

    return-void
.end method

.method public r()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverImage loadCover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCoverImage loadCover loadUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iget-object v1, p0, Lcom/mgtv/a/c/a;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Llbd;->E:Llbd;

    new-instance v3, Lcom/mgtv/a/c/a$2;

    invoke-direct {v3, p0}, Lcom/mgtv/a/c/a$2;-><init>(Lcom/mgtv/a/c/a;)V

    invoke-static {v0, v1, v2, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_0
    return-void
.end method
