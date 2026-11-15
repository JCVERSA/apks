.class public final Lcom/yandex/mobile/ads/impl/fl0;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o10;

.field private final b:Lcom/yandex/mobile/ads/impl/om;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o10;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionConverter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fl0;->a:Lcom/yandex/mobile/ads/impl/o10;

    new-instance v0, Lcom/yandex/mobile/ads/impl/om;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/om;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o10;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/fl0;->b:Lcom/yandex/mobile/ads/impl/om;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    new-instance p2, Ldfd;

    invoke-direct {p2, p0}, Ldfd;-><init>(Lcom/yandex/mobile/ads/impl/fl0;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fl0;->d:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fl0;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p1, v1}, Lcom/yandex/mobile/ads/impl/o10;->a(Landroid/content/Context;F)I

    move-result v1

    .line 7
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->b:Lcom/yandex/mobile/ads/impl/om;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fl0;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->b:Lcom/yandex/mobile/ads/impl/om;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x40400000    # 3.0f

    .line 12
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ls86;->c(F)I

    move-result v2

    .line 13
    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 14
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fl0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v4, 0x40000000    # 2.0f

    .line 17
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-static {v2}, Ls86;->c(F)I

    move-result v2

    .line 18
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v6, -0x1

    .line 19
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v6, -0x10000

    .line 20
    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 21
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fl0;->a:Lcom/yandex/mobile/ads/impl/o10;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 26
    invoke-static {v3, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-static {p1}, Ls86;->c(F)I

    move-result p1

    .line 27
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    invoke-virtual {v1, p1, v0, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 29
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/fl0;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fl0;->b:Lcom/yandex/mobile/ads/impl/om;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fl0;->b:Lcom/yandex/mobile/ads/impl/om;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/impl/om;->setSelected(Z)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/fl0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/fl0;->a(Lcom/yandex/mobile/ads/impl/fl0;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fl0;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
