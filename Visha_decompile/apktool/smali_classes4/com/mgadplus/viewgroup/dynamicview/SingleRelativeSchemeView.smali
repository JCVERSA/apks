.class public Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;"
    }
.end annotation


# instance fields
.field public b:Landroid/view/ViewGroup;

.field public c:Z

.field public d:Lcom/mgadplus/viewgroup/dynamicview/a$a;

.field public e:Lcom/mgmi/model/e;

.field public f:Landroid/view/animation/Animation;

.field public g:Landroid/view/animation/Animation;

.field public h:Lcom/mgmi/e/a/a;

.field public i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

.field public j:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    .line 3
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 4
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    .line 7
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 8
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    .line 11
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 12
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    .line 15
    sget-object p1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Center:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    .line 16
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)Lcom/mgmi/model/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    return-object p0
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/mgmi/e/a/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgmi/e/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    return-void
.end method

.method public static synthetic c(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)Lcom/mgmi/e/a/a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    return-object p0
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->disappear(Z)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    invoke-virtual {v1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    invoke-virtual {v2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    invoke-virtual {v1, v2}, Lcom/mgmi/e/a/a;->a(Lcom/mgmi/model/d;)V

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->d:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/a$a;->a(I)V

    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)Lcom/mgadplus/viewgroup/dynamicview/a$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->d:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-object p0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    invoke-virtual {p0}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/d;

    invoke-virtual {v0, p0}, Lcom/mgmi/e/a/a;->b(Lcom/mgmi/model/d;)V

    return-void
.end method

.method public static synthetic g(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->disappear(Z)V

    return-void
.end method

.method private i()V
    .locals 9

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    sget-object v1, Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;->Right:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    const-wide v2, 0x3ff6b851eb851eb8L    # 1.42

    const-wide v4, 0x3fde147ae147ae14L    # 0.47

    const/high16 v6, 0x41c80000    # 25.0f

    if-ne v0, v1, :cond_0

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

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v7, v0

    mul-double/2addr v7, v4

    double-to-int v0, v7

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int v0, v4

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

    invoke-static {v3, v6}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/mgmi/R$id;->contentFrame:I

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

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-double v7, v0

    mul-double/2addr v7, v4

    double-to-int v0, v7

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int v0, v4

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

    invoke-static {v3, v6}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v0, Lcom/mgmi/R$id;->contentFrame:I

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

.method public static synthetic j(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->d()V

    return-void
.end method

.method public static synthetic k(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->f()V

    return-void
.end method

.method public static synthetic l(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/e;)V
    .locals 7

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->e:Lcom/mgmi/model/e;

    .line 4
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->isVisiblity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->appear(Z)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i()V

    .line 7
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->h:Lcom/mgmi/e/a/a;

    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    invoke-virtual {v0, v2}, Lcom/mgmi/e/a/a;->c(Lcom/mgmi/model/d;)V

    .line 8
    invoke-virtual {p1}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/d;

    .line 9
    invoke-virtual {v0}, Lcom/mgmi/model/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    sget v2, Lcom/mgmi/R$id;->title:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 11
    invoke-virtual {v0}, Lcom/mgmi/model/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/mgmi/model/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    sget v2, Lcom/mgmi/R$id;->contentText:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Lcom/mgmi/model/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    sget v2, Lcom/mgmi/R$id;->contentFrame:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 16
    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$b;

    invoke-direct {v3, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$b;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget v2, Lcom/mgmi/R$id;->congtentView:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 18
    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$c;

    invoke-direct {v3, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$c;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_3
    sget v2, Lcom/mgmi/R$id;->dianzanButton:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 20
    new-instance v3, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;

    invoke-direct {v3, p0, v2}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$d;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    sget v3, Lcom/mgmi/R$id;->tvAdDetail:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0}, Lcom/mgmi/model/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/mgmi/model/d;->g()Z

    move-result v4

    if-nez v4, :cond_4

    .line 23
    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 24
    invoke-virtual {v0}, Lcom/mgmi/model/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v1, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$e;

    invoke-direct {v1, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$e;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    .line 26
    invoke-static {v3, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 27
    invoke-static {v2, v1}, Ll4d;->f(Landroid/view/View;I)Z

    .line 28
    :goto_0
    sget v1, Lcom/mgmi/R$id;->schemeClose:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 29
    new-instance v2, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$f;

    invoke-direct {v2, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$f;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :cond_5
    sget v1, Lcom/mgmi/R$id;->largeimage:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_8

    .line 32
    invoke-virtual {v0}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v5, "gif"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "GIF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    .line 34
    :cond_6
    invoke-virtual {v0}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v2, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Llbd$b;->n(I)Llbd$b;

    move-result-object v2

    sget v6, Lcom/mgmi/R$drawable;->mgmi_shape_placeholder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Llbd$b;->r(Ljava/lang/Integer;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    invoke-static {v1, v5, v2, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    goto :goto_2

    .line 35
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Llbd;->E:Llbd;

    invoke-static {v2, v6}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Llbd$b;->n(I)Llbd$b;

    move-result-object v2

    invoke-virtual {v2, v4}, Llbd$b;->s(Z)Llbd$b;

    move-result-object v2

    sget v6, Lcom/mgmi/R$drawable;->mgmi_shape_placeholder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Llbd$b;->r(Ljava/lang/Integer;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    invoke-static {v1, v5, v2, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    .line 36
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/mgmi/model/e;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/mgmi/model/e;->b()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    .line 37
    :cond_9
    invoke-virtual {v0}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 38
    sget p1, Lcom/mgmi/R$id;->small_icon:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    .line 39
    invoke-virtual {v0}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mgmi/model/d;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Llbd;->E:Llbd;

    invoke-static {v0, v2}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Llbd$b;->M(Z)Llbd$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Llbd$b;->n(I)Llbd$b;

    move-result-object v0

    invoke-virtual {v0}, Llbd$b;->t()Llbd;

    move-result-object v0

    invoke-static {p1, v1, v0, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    .line 40
    :cond_a
    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->f:Landroid/view/animation/Animation;

    if-eqz p1, :cond_b

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_b
    return-void
.end method

.method public appear(Z)V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->j:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0, p0, v1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->f:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public synthetic bindData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/mgmi/model/e;

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->a(Lcom/mgmi/model/e;)V

    return-void
.end method

.method public disappear(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->g:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$a;

    invoke-direct {v0, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$a;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->g:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$2;

    invoke-direct {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView$2;-><init>(Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;)V

    invoke-static {p1}, Lj4d;->b(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public bridge synthetic getSchemeView()Landroid/view/View;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;

    move-result-object p0

    return-object p0
.end method

.method public getSchemeView()Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyle()Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-object p0
.end method

.method public isVisiblity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->c:Z

    return p0
.end method

.method public prepareContainer(Landroid/view/ViewGroup;Landroid/view/ViewGroup$MarginLayoutParams;)Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->j:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public setEventListener(Lcom/mgadplus/viewgroup/dynamicview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->d:Lcom/mgadplus/viewgroup/dynamicview/a$a;

    return-void
.end method

.method public setInterectAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)Lcom/mgadplus/viewgroup/dynamicview/a;
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->f:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->g:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public setStyle(Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/SingleRelativeSchemeView;->i:Lcom/mgadplus/viewgroup/dynamicview/CornerSchemeView$a;

    return-void
.end method

.method public startTurning()V
    .locals 0

    return-void
.end method

.method public stopTurning()V
    .locals 0

    return-void
.end method
