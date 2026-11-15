.class public Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/BreadcrumbsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public final synthetic e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d:I

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->a(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$id;->tabs_holder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;ZZ)V
    .locals 8

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$color;->navigation_text_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$dimen;->navigationbutton_maxsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v5}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-static {}, Lav3;->z()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    :goto_0
    iget-object v4, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$drawable;->breadcrumbs_right_arrow:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v4}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v2, p3, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p3}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_2

    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    goto :goto_1

    :cond_2
    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    :goto_1
    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    sget v5, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, p3, v7, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_3
    if-nez p2, :cond_5

    if-eqz p3, :cond_4

    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    goto :goto_2

    :cond_4
    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    :goto_2
    iget-object v4, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$drawable;->breadcrumbs_left_arrow:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v6, v6, v4, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v4}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v2, v7, v7, p3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p3}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->g(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_5
    if-eqz p3, :cond_6

    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    goto :goto_3

    :cond_6
    sget p3, Lcom/transsion/playercommon/R$dimen;->tab_margin_left:I

    :goto_3
    iget-object v5, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v5}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->b(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/playercommon/R$dimen;->tab_item_padding_start:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {v2, v5, v7, p3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x11

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    if-nez p2, :cond_7

    sget p2, Lcom/transsion/playercommon/R$string;->file_title:I

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lnk0;

    invoke-direct {p2, p0}, Lnk0;-><init>(Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    :goto_5
    iget-object p2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d:I

    return-void
.end method

.method public final synthetic c(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->g(I)Z

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->l(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/playercommon/R$string;->file_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v2

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-object v3, p1, v1

    array-length v4, p1

    sub-int/2addr v4, v0

    if-ne v1, v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-virtual {p0, v3, v4, v2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b(Ljava/lang/String;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lav3;->r()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->f()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lav3;->r()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;->startHorizontalScroll(II)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/playercommon/R$string;->file_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b(Ljava/lang/String;ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->c:Z

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    if-lt v1, v0, :cond_0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object v2

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->e(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/transsion/playercommon/widgets/SlowHorizontalScrollView;->startHorizontalScroll(II)V

    :cond_0
    return-void
.end method

.method public g(I)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->a:Landroid/widget/LinearLayout;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v3}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v4}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->f(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->d(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    :goto_1
    if-gt v4, p1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, -0x2

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    :goto_2
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->c(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->e:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->c(Lcom/transsion/playercommon/widgets/BreadcrumbsView;)Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;->a(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView$b;->d(Ljava/lang/String;)V

    return v1

    :cond_4
    return v2
.end method
