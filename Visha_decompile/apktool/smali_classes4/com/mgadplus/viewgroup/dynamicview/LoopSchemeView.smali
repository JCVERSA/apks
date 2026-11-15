.class public Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;,
        Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/animation/Animation;

.field public e:Landroid/view/animation/Animation;

.field public f:Landroid/view/ViewGroup$MarginLayoutParams;

.field public g:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/mgmi/model/e;

.field public n:Z

.field public o:Lcom/mgmi/e/a/a;

.field public p:I

.field public q:Ljava/util/List;

.field public r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    .line 3
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    .line 4
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 5
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    .line 8
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    .line 9
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 10
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    .line 13
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    .line 14
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 15
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    .line 18
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    .line 19
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 20
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/model/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    return-object p0
.end method

.method private b(I)V
    .locals 5

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/d;

    invoke-virtual {v1}, Lcom/mgmi/model/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/d;

    invoke-virtual {v1}, Lcom/mgmi/model/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/d;

    invoke-virtual {v1}, Lcom/mgmi/model/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->l:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v0}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v0}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    invoke-virtual {v0}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    invoke-virtual {v2}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v3}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/d;

    invoke-virtual {v3}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Llbd;->E:Llbd;

    invoke-static {v3, v4}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Llbd$b;->n(I)Llbd$b;

    move-result-object v3

    invoke-virtual {v3}, Llbd$b;->t()Llbd;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_3
    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    if-eq p1, v0, :cond_4

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->a(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Ll4d;->a(Landroid/view/View;F)V

    :cond_4
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->a(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ll4d;->a(Landroid/view/View;F)V

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-static {v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->e(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-static {v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->d(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;Z)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o:Lcom/mgmi/e/a/a;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    invoke-virtual {v0, v2}, Lcom/mgmi/e/a/a;->c(Lcom/mgmi/model/d;)V

    :cond_5
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-static {p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->g(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->j:Landroid/widget/ImageView;

    sget p1, Lcom/mgmi/R$drawable;->dianzan_nor:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-void
.end method

.method public static synthetic d(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b(I)V

    return-void
.end method

.method public static synthetic e(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/e/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o:Lcom/mgmi/e/a/a;

    return-object p0
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    new-instance v0, Lcom/mgmi/e/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgmi/e/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o:Lcom/mgmi/e/a/a;

    return-void
.end method

.method public static synthetic g(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method

.method private h()V
    .locals 7

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    sget-object v1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Right:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/high16 v4, 0x41a00000    # 20.0f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    sget v1, Lcom/mgmi/R$id;->convenientBanner:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    mul-double/2addr v5, v2

    double-to-int v0, v5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v0, Lcom/mgmi/R$id;->small_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/mgmi/R$id;->contentLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Left:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    sget v1, Lcom/mgmi/R$id;->largeimage:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    mul-double/2addr v5, v2

    double-to-int v0, v5

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v0, Lcom/mgmi/R$id;->small_icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/mgmi/R$id;->contentLayout:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->disappear(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m()V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o:Lcom/mgmi/e/a/a;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/d;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/a;->b(Lcom/mgmi/model/d;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->f(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v1, Lcom/mgmi/R$drawable;->dianzan_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->j:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic l(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->k()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->disappear(Z)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->o:Lcom/mgmi/e/a/a;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/d;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/a;->a(Lcom/mgmi/model/d;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    invoke-virtual {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a(I)V

    :cond_0
    return-void
.end method

.method public static synthetic n(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->i()V

    return-void
.end method

.method public static synthetic o(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mgmi/model/e;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->isVisiblity()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->p:I

    .line 4
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0, v3}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->appear(Z)V

    .line 6
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->h()V

    .line 7
    sget v4, Lcom/mgmi/R$id;->convenientBanner:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    .line 8
    invoke-virtual {v4, v3}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->setCanLoop(Z)V

    .line 9
    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    invoke-virtual {v4, v3}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->setManualPageable(Z)V

    .line 10
    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$b;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    iget-object v6, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    .line 11
    invoke-virtual {v6}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v6

    .line 12
    invoke-virtual {v4, v5, v6}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(Lcom/mgmi/ViewGroup/convenientbanner/b/a;Ljava/util/List;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    .line 13
    sget v4, Lcom/mgmi/R$id;->tvAdDetail:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->h:Landroid/widget/TextView;

    .line 14
    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$c;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget v4, Lcom/mgmi/R$id;->dianzanButton:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->j:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 16
    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$d;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$d;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_1
    sget v4, Lcom/mgmi/R$id;->schemeClose:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 18
    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$e;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$e;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_2
    sget v4, Lcom/mgmi/R$id;->title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->i:Landroid/widget/TextView;

    .line 20
    sget v4, Lcom/mgmi/R$id;->content:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->k:Landroid/widget/TextView;

    .line 21
    sget v4, Lcom/mgmi/R$id;->small_icon:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->l:Landroid/widget/ImageView;

    .line 22
    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    new-instance v5, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$f;

    invoke-direct {v5, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$f;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    invoke-virtual {v4, v5}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    .line 23
    sget v4, Lcom/mgmi/R$id;->logbar:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 25
    invoke-virtual {p0, v4, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V

    .line 26
    invoke-virtual {p0, v4, v3}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V

    .line 27
    invoke-virtual {p0, v4, v2}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p0, v4, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V

    .line 29
    invoke-virtual {p0, v4, v3}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c(Landroid/view/ViewGroup;I)V

    .line 30
    :goto_0
    invoke-direct {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b(I)V

    .line 31
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->startTurning()V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a()Z

    move-result p0

    return p0
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->d:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->startTurning()V

    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/e;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->a(Lcom/mgmi/model/e;)V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;I)V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {v2}, Lcom/mgmi/model/e;->b()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_0
    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Ll4d;->a(Landroid/view/View;F)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->q:Ljava/util/List;

    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    invoke-direct {v1}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->c(Z)Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;->b(Landroid/widget/ImageView;)Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$h;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;

    invoke-direct {p1, p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$g;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/d;

    invoke-virtual {p1}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/d;

    invoke-virtual {p1}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->m:Lcom/mgmi/model/e;

    invoke-virtual {p0}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/d;

    invoke-virtual {p0}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Llbd;->E:Llbd;

    invoke-static {p0, p2}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Llbd$b;->M(Z)Llbd$b;

    move-result-object p0

    invoke-virtual {p0, v3}, Llbd$b;->n(I)Llbd$b;

    move-result-object p0

    invoke-virtual {p0}, Llbd$b;->t()Llbd;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {v0, p1, p0, p2}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :cond_1
    return-void
.end method

.method public disappear(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->stopTurning()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->e:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->e:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getStyle()Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->n:Z

    return p0
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->c:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->f:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->g:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->d:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->e:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public setStyle(Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->r:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-void
.end method

.method public startTurning()V
    .locals 2

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->a(J)Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    :cond_0
    return-void
.end method

.method public stopTurning()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/LoopSchemeView;->b:Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ViewGroup/convenientbanner/ConvenientBanner;->b()V

    :cond_0
    return-void
.end method
