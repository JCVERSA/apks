.class public Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;
    }
.end annotation


# static fields
.field public static OppOOO0:I


# instance fields
.field public OppO:Landroid/widget/FrameLayout$LayoutParams;

.field public OppO00p:I

.field public OppO0O0:I

.field public OppO0OO:I

.field public OppO0Op:I

.field public OppO0p:Landroid/widget/TextView;

.field public OppO0p0:Landroid/widget/TextView;

.field public OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

.field public OppO0pp:Ljava/lang/CharSequence;

.field public OppOO0:I

.field public OppOO0O:I

.field public OppOO0p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    .line 3
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p()V

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    sget-object p1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    .line 6
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p()V

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    sget-object p1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    .line 9
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final OppO00p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxj1;->b(Landroid/content/Context;)V

    const/high16 v0, 0x42480000    # 50.0f

    .line 2
    invoke-static {v0}, Lc39;->a(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sput v1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOOO0:I

    .line 3
    invoke-static {}, Lc39;->f()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p:I

    .line 4
    invoke-static {v0}, Lc39;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0:I

    .line 5
    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    const/high16 v1, 0x40e00000    # 7.0f

    .line 6
    invoke-static {v1}, Lc39;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0Op:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 7
    invoke-static {v1}, Lc39;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0:I

    .line 8
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    .line 10
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object v2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-static {v0}, Lc39;->a(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 12
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 13
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 14
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 15
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 17
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 19
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    new-instance v3, Lh39;

    invoke-direct {v3, p0}, Lh39;-><init>(Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO:Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_font_base_color_t40:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->setTextColor(I)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_base_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->setMoreTextColor(I)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method public final OppO00p(I)V
    .locals 3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 32
    iget v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0Op:I

    div-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final OppO0O0()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/lit8 v4, v3, 0x2

    iput v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0:I

    mul-int v4, v1, v3

    iput v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    if-gt v1, v4, :cond_1

    iget-object v5, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v5, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    sget-object v6, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_3

    iget v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0:I

    iput v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    iget v6, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v6, v9

    int-to-float v6, v6

    sub-float/2addr v1, v6

    cmpl-float v6, v1, v7

    if-lez v6, :cond_2

    div-float/2addr v1, v5

    float-to-int v1, v1

    if-le v4, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    sub-int/2addr v4, v1

    invoke-interface {v3, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->setTextAndRefresh(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v3

    iget v3, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const-string v1, "\u5c55\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_icon_more:I

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p(I)V

    goto/16 :goto_0

    :cond_3
    iget v5, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    sget v6, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOOO0:I

    if-le v5, v6, :cond_4

    iput v6, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    :cond_4
    sub-int/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    iget-object v6, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v5, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->setTextAndRefresh(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const-string v5, "\u6536\u8d77"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/transsion/xuanniao/account/R$drawable;->xn_icon_question:I

    invoke-virtual {p0, v4}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p(I)V

    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v1

    float-to-int v1, v1

    iget v5, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0:I

    add-int/2addr v1, v5

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lc39;->a(F)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final synthetic b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    sget-object v0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->COLLAPSE:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;->EXPAND:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pO:Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView$State;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0O:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0p:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget v2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0O:I

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0p:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0O:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppOO0p:I

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0()V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0O0()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    iget p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO00p:I

    iget p2, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0OO:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMoreTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0pp:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->setTextAndRefresh(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAndRefresh(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/ScrollExpandTextView;->OppO0p0:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
