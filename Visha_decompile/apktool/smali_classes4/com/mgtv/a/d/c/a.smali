.class public Lcom/mgtv/a/d/c/a;
.super Lcom/mgtv/a/d/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/b<",
        "Lcom/mgmi/net/bean/BootAdBean;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/d/b/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 8
    invoke-static {p1}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    iget p1, p0, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    div-int v0, p1, p0

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3ffe147ae147ae14L    # 1.88

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 10
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const-wide v2, 0x3ffab851eb851eb8L    # 1.67

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 12
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 14
    :cond_2
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit16 p0, p0, 0x660

    int-to-double p0, p0

    const-wide v0, 0x4090e00000000000L    # 1080.0

    div-double/2addr p0, v0

    double-to-int p0, p0

    .line 15
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/a/d/c/a;->c()V

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/a/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    invoke-static {p1, p0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->layout_boot_playview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/c/a;->b:Landroid/view/View;

    .line 5
    sget v0, Lcom/mgmi/R$id;->playview_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    .line 6
    iget-object p1, p0, Lcom/mgtv/a/d/c/a;->b:Landroid/view/View;

    sget v0, Lcom/mgmi/R$id;->largeLog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/c/a;->s:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/b;->a(I)V

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    .line 19
    div-int/lit16 p1, p1, 0x3e8

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v0, v0, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    if-le p1, v0, :cond_1

    .line 20
    const-string p1, "BootRender1 onComplete  "

    invoke-static {p1}, Lcom/mgtv/ads/AdLog;->i(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Lcom/mgtv/a/c/c;->l()V

    .line 23
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of v0, p1, Lcom/mgtv/a/c/a;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lcom/mgtv/a/c/a;

    invoke-virtual {p1}, Lcom/mgtv/a/c/a;->f()V

    .line 25
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    invoke-virtual {p1}, Lcom/mgtv/a/c/a;->e()V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_1

    .line 27
    invoke-interface {p0}, Lcom/mgtv/a/c/e;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/c/a;->d(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/c/a;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, p1, Lcom/mgtv/a/d/c/a/a;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Lcom/mgtv/a/d/c/a/a;

    invoke-virtual {p1, v0}, Lcom/mgtv/a/d/c/a/a;->a(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/mgtv/a/d/c/a;->a:Landroid/view/View;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {v2, p1, v1, v0}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/net/bean/BootDataItem;)Lcom/mgtv/a/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p1, :cond_1

    .line 3
    instance-of v0, p1, Lcom/mgtv/a/c/h;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/mgtv/a/c/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mgtv/a/c/h;->c(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    invoke-interface {p1, v0}, Lcom/mgtv/a/c/c;->a(Lcom/mgtv/a/c/e;)V

    .line 6
    const-string p1, "BootRender1 rendPlayView  "

    invoke-static {p1}, Lcom/mgtv/ads/AdLog;->i(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget p0, p0, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    invoke-virtual {p1, p0}, Lcom/mgtv/a/c/a;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/a/d/c/a;->t:Landroid/view/View;

    return-void
.end method

.method public c()V
    .locals 1

    .line 15
    new-instance v0, Lcom/mgtv/a/d/c/a/a;

    invoke-direct {v0}, Lcom/mgtv/a/d/c/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    .line 16
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {v0, p0}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v1, v1, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v1, v1, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput v2, v0, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/c/a;->e(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a;->b(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/c/a;->a(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/c/a;->b:Landroid/view/View;

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/c/a;->b:Landroid/view/View;

    invoke-static {v0, v1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget v0, v0, Lcom/mgmi/net/bean/BootDataItem;->duration:I

    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/b/b;->b(I)V

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/c/a;->t:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/a/d/c/a;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    instance-of v1, v1, Lcom/mgtv/a/c/f;

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/mgtv/a/d/c/a;->a(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/mgtv/a/d/c/a;->s:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/c/a;->t:Landroid/view/View;

    invoke-static {p1, v0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lcom/mgtv/a/d/c/a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->o:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_0

    const/16 v0, -0x6e

    .line 4
    const-string v1, "\u6e32\u67d3\u5931\u8d25"

    const-string v2, ""

    invoke-interface {p0, v2, v0, v1}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v0, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    check-cast v1, Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mgtv/a/c/c;->a(Ljava/lang/String;)Z

    .line 7
    :cond_2
    const-string v0, "BootRender1 start  "

    invoke-static {v0}, Lcom/mgtv/ads/AdLog;->i(Ljava/lang/String;)V

    .line 8
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->d()V

    :cond_3
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->e()V

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    instance-of v0, p0, Lcom/mgtv/a/d/c/a/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/mgtv/a/d/c/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/c/a/a;->d()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgtv/a/d/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "BaseRender release  "

    invoke-static {v0}, Lcom/mgtv/ads/AdLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/a/d/b/e;->b()V

    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    :cond_1
    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->n:Lcom/mgtv/a/d/b/a;

    iput-object v1, p0, Lcom/mgtv/a/d/b/b;->m:Lcom/mgtv/a/c/c;

    return-void
.end method
