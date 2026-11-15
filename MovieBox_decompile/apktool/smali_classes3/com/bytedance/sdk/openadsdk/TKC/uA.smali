.class public Lcom/bytedance/sdk/openadsdk/TKC/uA;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;


# instance fields
.field private Dq:Landroid/view/View;

.field private final EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field private Fmk:I

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Jcg:Lcom/bytedance/sdk/openadsdk/TKC/Ym;

.field Sj:Lcom/bytedance/sdk/openadsdk/TKC/vS;

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private TKC:I

.field private Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private aa:I

.field private sP:I

.field private sef:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private uA:Landroid/view/View;

.field private vS:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/TKC/TEQ;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    .line 4
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$TKC;)V

    .line 5
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;)V

    .line 6
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$EjP;)V

    .line 7
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$Sj;)V

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC()V

    .line 9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Sj(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private EjP(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v2

    if-nez v2, :cond_0

    const/high16 v2, 0x43480000    # 200.0f

    .line 7
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43b30000    # 358.0f

    .line 8
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 9
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v3, "tt_select_reason"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x17

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    int-to-float v3, v3

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 16
    const-string v3, "#161823"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, 0x41c00000    # 24.0f

    goto :goto_2

    :cond_2
    const/high16 v6, 0x40800000    # 4.0f

    :goto_2
    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 20
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v2, Lcom/bytedance/sdk/openadsdk/TKC/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/TKC/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/vS;

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->xhi()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 25
    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->rN:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 26
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP:I

    goto :goto_3

    :cond_3
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    :goto_3
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x11

    .line 28
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 29
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 31
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v5, "tt_add_bad_reason"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v5, "#57000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 33
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/16 v5, 0x18

    const/16 v6, 0x23

    const/16 v7, 0x16

    invoke-static {v7, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const v6, 0x800007

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 36
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setPadding(IIII)V

    .line 38
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 39
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 40
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/TKC/uA$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA$5;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/uA;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/Ym;

    const/16 v2, 0x80

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/Ym;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    const/16 p1, 0x8

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method private EjP()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Fmk:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/uA;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;)V
    .locals 9

    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP:I

    const/high16 v0, 0x42600000    # 56.0f

    .line 4
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 5
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    .line 6
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP:I

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 9
    :goto_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42c40000    # 98.0f

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 11
    const-string v4, "tt_ad_bg_header_gradient"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 16
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC:I

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 21
    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    .line 22
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x0

    .line 23
    invoke-virtual {v6, v7, v2, v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const v8, 0x800035

    .line 24
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    const-string v8, "tt_titlebar_close_seletor"

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {p0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v6, Lcom/bytedance/sdk/openadsdk/TKC/uA$1;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/uA;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 29
    new-instance v6, Lcom/bytedance/sdk/openadsdk/TKC/uA$2;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/uA;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 31
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    invoke-virtual {v1, v2, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const v4, 0x800033

    .line 33
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    const-string v4, "tt_leftbackicon_selector"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x1

    .line 35
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 36
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 41
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Dq:Landroid/view/View;

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->uA:Landroid/view/View;

    .line 46
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 48
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private TKC(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    const-string v5, "tt_like_this_ad"

    invoke-static {p1, v5}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x17

    goto :goto_0

    :cond_0
    const/16 v5, 0x10

    :goto_0
    int-to-float v5, v5

    .line 12
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    const-string v5, "#161823"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v6, "tt_feel_hint"

    invoke-static {p1, v6}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v6

    const/16 v7, 0xe

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    const/16 v6, 0xa

    :goto_1
    int-to-float v6, v6

    .line 21
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v6, 0x3f000000    # 0.5f

    .line 22
    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    .line 23
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v5, 0x11

    .line 24
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x40800000    # 4.0f

    .line 28
    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 29
    :cond_2
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 31
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41800000    # 16.0f

    .line 33
    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41400000    # 12.0f

    .line 34
    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41000000    # 8.0f

    .line 35
    invoke-static {p1, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v10

    .line 36
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 37
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 39
    :cond_3
    iput v9, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    :goto_2
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v6, Lcom/bytedance/sdk/openadsdk/TKC/HiB;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v6, p1, v1, v11}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;-><init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/HiB;

    const/4 v6, 0x2

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v1, p1, v6, v11}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;-><init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 45
    instance-of v11, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v11, :cond_4

    .line 46
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x3f800000    # 1.0f

    .line 47
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    :cond_4
    move-object v11, v6

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 50
    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/HiB;

    const/4 v6, 0x3

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v1, p1, v6, v11}, Lcom/bytedance/sdk/openadsdk/TKC/HiB;-><init>(Landroid/content/Context;ILcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/Ym;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/TKC/Ym;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/Ym;

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    .line 55
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v8, v10

    :goto_3
    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    invoke-virtual {v2, v9, v10, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 59
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v3, v10

    .line 60
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 61
    const-string v3, "#F8F8F8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 62
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    const-string v3, "tt_report_this_ad"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    const/16 v7, 0xc

    .line 65
    :goto_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    int-to-float v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    const-string v2, "tt_report_ad_arrow"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v5, v5, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/TKC/uA$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA$4;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/uA;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private TKC()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Fmk:I

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(II)V

    return-void
.end method

.method private sP(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    :goto_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x50

    .line 4
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 6
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v4, 0x2c

    const/16 v5, 0x55

    const/16 v6, 0xfe

    .line 7
    invoke-static {v6, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 8
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v5, 0x66

    .line 9
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 10
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 11
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 13
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v6, 0x101009e

    .line 14
    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    .line 15
    new-array v6, v5, [I

    invoke-virtual {v4, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 16
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC:I

    invoke-virtual {v0, v5, v2, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setPadding(IIII)V

    const/16 v2, 0x11

    .line 17
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    const-string v2, "tt_suggestion_commit"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    new-instance p1, Lcom/bytedance/sdk/openadsdk/TKC/uA$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA$3;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/uA;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private sP(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/vS;->Sj(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->uA:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Dq:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP()Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sef:Lcom/bytedance/sdk/openadsdk/FilterWord;

    :cond_3
    return-void
.end method

.method public Sj(I)V
    .locals 1

    .line 66
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sef:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 68
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->sP:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/Ym;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/HiB;->TKC:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 64
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->vS:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/Ym;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz p1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public Sj(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sP(Ljava/util/List;)V

    return-void
.end method

.method public sP()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->uA:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Dq:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_4

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->sef:Lcom/bytedance/sdk/openadsdk/FilterWord;

    if-eqz v1, :cond_3

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    goto :goto_0

    .line 35
    :cond_3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->EjP:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/uA;->TKC()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->aa:I

    .line 14
    .line 15
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/uA;->Fmk:I

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/high16 v2, 0x41800000    # 16.0f

    .line 26
    .line 27
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    mul-int/lit8 v1, v1, 0x2

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    .line 36
    :cond_1
    return-void
.end method
