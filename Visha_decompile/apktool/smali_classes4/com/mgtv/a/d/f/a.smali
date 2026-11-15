.class public Lcom/mgtv/a/d/f/a;
.super Lcom/mgtv/a/d/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/a/d/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mgtv/a/d/b/b<",
        "Lcom/mgmi/model/VASTAd;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Landroid/view/ViewGroup;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/ImageView;

.field private F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

.field private G:Landroid/widget/FrameLayout$LayoutParams;

.field private H:Lcom/mgmi/ads/api/render/b;

.field protected a:Landroid/view/ViewGroup;

.field private b:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/mgmi/model/VASTAd;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgtv/a/d/b/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgtv/a/d/f/a;->b:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/mgtv/a/d/f/a;->r:I

    iput-boolean p1, p0, Lcom/mgtv/a/d/f/a;->s:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mgtv/a/d/f/a;->t:Z

    iput-boolean p1, p0, Lcom/mgtv/a/d/f/a;->v:Z

    return-void
.end method

.method public static synthetic A(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private A()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    const-string v1, ""

    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v2

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/mgmi/platform/e;->d()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-static {}, Lcom/mgmi/platform/e;->e()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 5
    iget-object v4, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v5, v5

    .line 6
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v3, v3

    .line 7
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v2

    .line 10
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v7

    .line 11
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v5, v5

    .line 12
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    int-to-float v4, v4

    sub-float/2addr v7, v4

    move v11, v2

    move v9, v3

    move v13, v5

    move v14, v7

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v2, v4

    div-float/2addr v7, v5

    mul-float/2addr v3, v7

    mul-float/2addr v5, v3

    div-float/2addr v5, v4

    .line 14
    iget-object v4, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v5, v5

    .line 15
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v3, v3

    .line 16
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float/2addr v3, v2

    .line 19
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    div-float/2addr v2, v7

    .line 20
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v5, v5

    .line 21
    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v6, v6

    sub-float/2addr v7, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :goto_1
    const/4 v2, 0x3

    .line 22
    :try_start_0
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 23
    :cond_1
    new-instance v3, Lw1d;

    invoke-direct {v3}, Lw1d;-><init>()V

    iget-object v4, v0, Lcom/mgtv/a/d/f/a;->A:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Lw1d;->e(Landroid/view/View;)Lw1d;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lw1d;->c(I)Lw1d;

    move-result-object v3

    new-instance v4, Lcom/mgtv/a/d/f/a$2;

    invoke-direct {v4, v0}, Lcom/mgtv/a/d/f/a$2;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v3, v4}, Lw1d;->d(Landroid/animation/Animator$AnimatorListener;)Lw1d;

    move-result-object v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    .line 24
    invoke-virtual/range {v8 .. v16}, Lw1d;->g(FFFFFFFF)Lw1d;

    move-result-object v3

    invoke-virtual {v3}, Lw1d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    .line 25
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/f/a;->y()V

    .line 26
    iget-object v0, v0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_3

    .line 27
    invoke-interface {v0, v2, v1}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    return-void

    .line 28
    :catchall_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/f/a;->y()V

    .line 29
    iget-object v0, v0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_4

    .line 30
    invoke-interface {v0, v2, v1}, Lcom/mgtv/a/d/b/d;->a(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic B(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private B()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic C(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method private C()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method

.method public static synthetic D(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method private D()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->s()V

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->y()V

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->w:Lcom/mgmi/model/VASTAd;

    invoke-interface {v0, p0}, Lcom/mgtv/a/d/b/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic E(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic F(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic G(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic H(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic I(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic J(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic K(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic L(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic M(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic N(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic O(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic P(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic Q(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic R(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic S(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic T(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic U(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic V(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic W(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic X(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic Y(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic Z(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a;Lcom/mgmi/model/VASTAd;)Lcom/mgmi/model/VASTAd;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->w:Lcom/mgmi/model/VASTAd;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a;Lcom/mgtv/a/d/b/e;)Lcom/mgtv/a/d/b/e;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Lcom/mgmi/model/VASTAd;Z)V
    .locals 2

    .line 11
    iget-boolean v0, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getStaticResources()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTStaticResource;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_9

    :cond_3
    if-nez p1, :cond_4

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x11

    .line 17
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Lcom/mgtv/a/d/b/d;->b()I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_7

    .line 20
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    invoke-static {}, Lcom/mgmi/platform/e;->d()I

    move-result p1

    goto :goto_2

    .line 22
    :cond_6
    invoke-static {}, Lcom/mgmi/platform/e;->f()I

    move-result p1

    :cond_7
    :goto_2
    int-to-float p1, p1

    const p2, 0x3ef0a3d7    # 0.47f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result p2

    mul-int/2addr p2, p1

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v0

    div-int/2addr p2, v0

    goto :goto_3

    :cond_8
    int-to-float p2, p1

    const/high16 v0, 0x3f100000    # 0.5625f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 24
    :goto_3
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 25
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_9
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mgtv/a/d/f/a;->D()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/d/f/a;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/a/d/f/a;->u:Z

    return p1
.end method

.method public static synthetic aa(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ab(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ac(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ad(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ae(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic af(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ag(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ah(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ai(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic aj(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ak(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic al(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic am(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic an(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ao(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ap(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic aq(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic ar(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    return-object p0
.end method

.method public static synthetic at(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic au(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/c/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->q:Lcom/mgtv/a/c/d;

    return-object p0
.end method

.method public static synthetic av(Lcom/mgtv/a/d/f/a;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/a/d/b/b;->c:I

    return p0
.end method

.method public static synthetic b(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private b(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->isMediaVast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentMediaFile()Lcom/mgmi/model/VASTMediaFile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTMediaFile;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgmi/model/Clicks;->getClickText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->C:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/a/d/f/a;Lcom/mgmi/model/VASTAd;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/f/a;->b(Lcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/a/d/f/a;)Lcom/mgmi/model/VASTAd;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->w:Lcom/mgmi/model/VASTAd;

    return-object p0
.end method

.method private d(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lcom/mgtv/a/d/f/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/mgmi/R$layout;->mgmi_super_pauseview_layout_new:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    .line 6
    invoke-direct {p0}, Lcom/mgtv/a/d/f/a;->z()V

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/mgmi/R$layout;->mgmi_pauseview_layout_new:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    .line 8
    :goto_0
    iget-boolean p1, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v0, Lcom/mgmi/R$id;->close_ad:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/mgtv/a/d/f/a$1;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/f/a$1;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v0, Lcom/mgmi/R$id;->contentcontainer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 12
    new-instance v0, Lcom/mgtv/a/d/f/a$4;

    invoke-direct {v0, p0}, Lcom/mgtv/a/d/f/a$4;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {p1, v0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(La6d;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 13
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/d/f/a;->A()V

    return-void
.end method

.method public static synthetic f(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic g(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic j(Lcom/mgtv/a/d/f/a;)I
    .locals 0

    iget p0, p0, Lcom/mgtv/a/d/f/a;->b:I

    return p0
.end method

.method public static synthetic k(Lcom/mgtv/a/d/f/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Lcom/mgtv/a/d/f/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic m(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic n(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic o(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/a/d/f/a;->B()V

    return-void
.end method

.method public static synthetic p(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic q(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic r(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic s(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic t(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic u(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic v(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    return-object p0
.end method

.method public static synthetic w(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    return-object p0
.end method

.method public static synthetic x(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->l:Lcom/mgtv/a/d/b/e;

    return-object p0
.end method

.method public static synthetic y(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method public static synthetic z(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    return-object p0
.end method

.method private z()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/mgmi/R$id;->small_screen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->A:Landroid/view/ViewGroup;

    .line 3
    new-instance v1, Lcom/mgtv/a/d/f/a$5;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/f/a$5;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->A:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->small_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 7
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->shot_bg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->z:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->small_control:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    .line 10
    new-instance v2, Lcom/mgtv/a/d/f/a$6;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/f/a$6;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->detailayout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 12
    new-instance v2, Lcom/mgtv/a/d/f/a$7;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/f/a$7;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->tvAdDetail:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->C:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->ivAdLarge:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->D:Landroid/widget/ImageView;

    .line 15
    new-instance v2, Lcom/mgtv/a/d/f/a$8;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/f/a$8;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    sget v2, Lcom/mgmi/R$id;->mgmi_back_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mgtv/a/d/f/a;->E:Landroid/widget/ImageView;

    .line 17
    new-instance v2, Lcom/mgtv/a/d/f/a$9;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/f/a$9;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->E:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 20
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->D:Landroid/widget/ImageView;

    invoke-static {p0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->E:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Ll4d;->f(Landroid/view/View;I)Z

    .line 22
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->D:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    if-eqz p0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->f()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 26
    :cond_0
    iget p1, p1, Lcom/mgmi/model/VASTAd;->clk_area:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)Z"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/mgtv/a/d/f/a;->b:I

    if-lez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->j:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a;->c(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public b()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->g()V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/a/d/f/a;->d(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->i()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/a/d/f/a;->s:Z

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a;->b(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a;->a(Landroid/content/Context;)V

    .line 7
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-direct {p0, p1, v2}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgmi/model/VASTAd;Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 10
    iget-boolean p1, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 12
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1, p1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    :goto_1
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->w()V

    .line 16
    iput-boolean v2, p0, Lcom/mgtv/a/d/b/b;->e:Z

    return v2
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/a/d/b/b;->e:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-super {p0, p1}, Lcom/mgtv/a/d/b/b;->d(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->w:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    .line 18
    :goto_0
    invoke-direct {p0, v1}, Lcom/mgtv/a/d/f/a;->b(Lcom/mgmi/model/VASTAd;)V

    .line 19
    iget-boolean p1, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 20
    invoke-direct {p0, v1, p1}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgmi/model/VASTAd;Z)V

    .line 21
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :cond_1
    iget-boolean p1, p0, Lcom/mgtv/a/d/f/a;->s:Z

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->w()V

    .line 25
    invoke-virtual {p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->E:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Ll4d;->f(Landroid/view/View;I)Z

    .line 27
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->D:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Ll4d;->f(Landroid/view/View;I)Z

    goto :goto_1

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/f/a;->E:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 29
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->D:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public h()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdRollTime()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTAd;

    iput-object v2, p0, Lcom/mgtv/a/d/f/a;->w:Lcom/mgmi/model/VASTAd;

    .line 4
    iput-object v2, p0, Lcom/mgtv/a/d/b/b;->g:Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v2}, Lcom/mgtv/a/d/f/a;->b(Lcom/mgmi/model/VASTAd;)V

    .line 6
    iget-object v2, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {v1, v3}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->setCanLoop(Z)V

    .line 8
    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {v1, v3}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(Z)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 9
    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(J)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 10
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {v0, v3}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->setManualPageable(Z)V

    .line 11
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    sget-object v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->CENTER_HORIZONTAL:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 12
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    new-instance v1, Lcom/mgtv/a/d/f/a$10;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/f/a$10;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    goto :goto_2

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->setCanLoop(Z)V

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(Z)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 15
    iget-object p0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->setManualPageable(Z)V

    :goto_2
    return-void
.end method

.method public i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/mgtv/a/d/f/a$11;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/f/a$11;-><init>(Lcom/mgtv/a/d/f/a;)V

    iget-object v2, p0, Lcom/mgtv/a/d/f/a;->x:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a(Lk2d;Ljava/util/List;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object v0

    sget v1, Lcom/mgmi/R$drawable;->shape_circle_3:I

    sget v2, Lcom/mgmi/R$drawable;->shape_circle_3_y:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->a([I)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    .line 5
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->h()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/d/f/a;->y()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/d/b/b;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgtv/a/d/f/a;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 4
    invoke-super {p0}, Lcom/mgtv/a/d/b/b;->s()V

    return-void
.end method

.method public w()V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/mgtv/a/d/f/a;->s:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/mgtv/a/d/f/a;->y:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/mgtv/a/d/b/b;->p:Lcom/mgtv/a/d/b/d;

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    .line 4
    invoke-interface {v1, v2, v2}, Lcom/mgtv/a/d/b/d;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/mgtv/a/d/f/a;->y:Landroid/graphics/Bitmap;

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/b/b;->r()Z

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x41100000    # 9.0f

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/mgmi/platform/e;->d()I

    move-result v1

    int-to-float v1, v1

    .line 7
    invoke-static {}, Lcom/mgmi/platform/e;->e()I

    move-result v7

    int-to-float v7, v7

    .line 8
    iget-object v8, v0, Lcom/mgtv/a/d/f/a;->y:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    .line 9
    invoke-static {v8, v1, v7}, Lgjd;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_2
    mul-float/2addr v2, v7

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 10
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v4, v4

    .line 11
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v2, v2

    .line 12
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    .line 15
    iget-object v1, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v7

    .line 16
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v4, v4

    .line 17
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v5, v5

    sub-float/2addr v7, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    int-to-float v3, v3

    sub-float/2addr v7, v3

    move v12, v1

    move v10, v2

    move v13, v4

    move v14, v7

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v1, v3

    div-float/2addr v7, v4

    mul-float/2addr v2, v7

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 19
    iget-object v3, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v4, v4

    .line 20
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int v2, v2

    .line 21
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->y:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 24
    invoke-static {v2, v1, v7}, Lgjd;->a(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 25
    :cond_4
    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    div-float/2addr v2, v1

    .line 26
    iget-object v1, v0, Lcom/mgtv/a/d/f/a;->B:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v7

    .line 27
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v4, v4

    .line 28
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v5, v5

    sub-float/2addr v7, v5

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_5

    .line 29
    iget-object v1, v0, Lcom/mgtv/a/d/f/a;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/a/d/f/a;->C()V

    .line 31
    new-instance v1, Lw1d;

    invoke-direct {v1}, Lw1d;-><init>()V

    iget-object v2, v0, Lcom/mgtv/a/d/f/a;->A:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lw1d;->e(Landroid/view/View;)Lw1d;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lw1d;->c(I)Lw1d;

    move-result-object v1

    new-instance v2, Lcom/mgtv/a/d/f/a$3;

    invoke-direct {v2, v0}, Lcom/mgtv/a/d/f/a$3;-><init>(Lcom/mgtv/a/d/f/a;)V

    invoke-virtual {v1, v2}, Lw1d;->d(Landroid/animation/Animator$AnimatorListener;)Lw1d;

    move-result-object v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 32
    invoke-virtual/range {v8 .. v16}, Lw1d;->b(FFFFFFFF)Lw1d;

    move-result-object v0

    invoke-virtual {v0}, Lw1d;->h()V

    return-void
.end method

.method public x()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public y()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->H:Lcom/mgmi/ads/api/render/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mgmi/ads/api/render/b;->a()V

    .line 4
    iput-object v1, p0, Lcom/mgtv/a/d/f/a;->H:Lcom/mgmi/ads/api/render/b;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a;->F:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->e()V

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/mgtv/a/d/f/a;->G:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method
