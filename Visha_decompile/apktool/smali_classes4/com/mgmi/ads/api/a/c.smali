.class public Lcom/mgmi/ads/api/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/d;


# instance fields
.field private A:Z

.field private B:Landroid/widget/RelativeLayout$LayoutParams;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/mgmi/g/a;

.field private d:I

.field private e:Lcom/mgmi/platform/d;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mgmi/platform/d;

.field private h:Lcom/mgmi/ads/api/a;

.field private i:Lcom/mgmi/platform/view/a;

.field private j:Z

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:I

.field private s:J

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->b:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/mgmi/ads/api/a/c;->m:I

    const/4 v2, -0x2

    iput v2, p0, Lcom/mgmi/ads/api/a/c;->n:I

    iput v1, p0, Lcom/mgmi/ads/api/a/c;->o:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/c;->p:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/mgmi/ads/api/a/c;->s:J

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/c;->t:Z

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->v:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/c;->w:Z

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/c;->x:Z

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/c;->y:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/c;->z:Z

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/c;->A:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .line 16
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 17
    :cond_0
    iget p0, p0, Lcom/mgmi/ads/api/a/c;->o:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    return p0

    .line 18
    :cond_1
    invoke-static {p1}, Lcom/mgmi/f/f;->h(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public a()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->k:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public a(Lcom/mgmi/ads/api/a;)Lcom/mgmi/ads/api/a/c;
    .locals 1

    .line 7
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->h:Lcom/mgmi/ads/api/a;

    if-nez p1, :cond_0

    .line 8
    const-string p1, "mgmiad"

    const-string v0, "AdsRequest.setAdsListener is null"

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/c;
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->c:Lcom/mgmi/g/a;

    if-nez p1, :cond_0

    .line 10
    const-string p1, "mgmiad"

    const-string v0, "AdsRequest.setAdParam is null"

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public a(Lcom/mgmi/platform/view/a;)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->i:Lcom/mgmi/platform/view/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->j:Z

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/mgmi/ads/api/a/c;->m:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->k:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->f:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    .line 14
    const-string p0, "mgmiad"

    const-string p1, "AdsRequest.setViewParent1 is null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->B:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public a(Lcom/mgmi/platform/d;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->e:Lcom/mgmi/platform/d;

    if-nez p1, :cond_0

    .line 12
    const-string p0, "mgmiad"

    const-string p1, "AdsRequest.setPlayer is null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/mgmi/ads/api/a/c;->m:I

    return p0
.end method

.method public synthetic b(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/c;->a(Lcom/mgmi/g/a;)Lcom/mgmi/ads/api/a/c;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/mgmi/ads/api/a/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->b:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    const-string p1, "mgmiad"

    const-string v0, "AdsRequest.setAdsType is null"

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public b(Z)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->w:Z

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/ads/api/a/c;->n:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b(Lcom/mgmi/platform/d;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgmi/ads/api/a/c;->g:Lcom/mgmi/platform/d;

    if-nez p1, :cond_0

    .line 9
    const-string p0, "mgmiad"

    const-string p1, "AdsRequest.setDoublePlayer is null"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/ads/api/a/c;->n:I

    return p0
.end method

.method public c(Z)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->x:Z

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/ads/api/a/c;->d:I

    return-void
.end method

.method public d()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/ads/api/a/c;->d:I

    return p0
.end method

.method public d(Z)Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->y:Z

    return-object p0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgmi/ads/api/a/c;->o:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->z:Z

    return-void
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/c;->q:Z

    return p0
.end method

.method public f()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgmi/ads/api/a/c;->r:I

    return p0
.end method

.method public f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/c;->A:Z

    return-void
.end method

.method public g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->l:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public h()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->h:Lcom/mgmi/ads/api/a;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public k()Lcom/mgmi/g/a;
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/c;->c:Lcom/mgmi/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgmi/g/a;

    invoke-direct {v0}, Lcom/mgmi/g/a;-><init>()V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/c;->c:Lcom/mgmi/g/a;

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->c:Lcom/mgmi/g/a;

    return-object p0
.end method

.method public l()Lcom/mgmi/platform/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->e:Lcom/mgmi/platform/d;

    return-object p0
.end method

.method public m()Lcom/mgmi/platform/d;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->g:Lcom/mgmi/platform/d;

    return-object p0
.end method

.method public n()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public o()Lcom/mgmi/platform/view/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->i:Lcom/mgmi/platform/view/a;

    return-object p0
.end method

.method public p()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/c;->p:Z

    return p0
.end method

.method public q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/c;->v:Ljava/lang/String;

    return-object p0
.end method

.method public r()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/c;->w:Z

    return p0
.end method

.method public s()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/c;->z:Z

    return p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/c;->A:Z

    return p0
.end method
