.class public final Lcom/yandex/div/internal/widget/tabs/TabView;
.super Lcom/yandex/div/internal/widget/SuperLineHeightTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/tabs/TabView$a;,
        Lcom/yandex/div/internal/widget/tabs/TabView$b;
    }
.end annotation


# instance fields
.field public e:Lbu2;

.field public f:La15;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Lcom/yandex/div/internal/widget/tabs/TabView$a;

.field public k:Lcom/yandex/div/internal/widget/tabs/TabView$b;

.field public l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

.field public m:Lcom/yandex/div/core/font/DivTypefaceType;

.field public n:Lcom/yandex/div/core/font/DivTypefaceType;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lgda;

    invoke-direct {p1}, Lgda;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->j:Lcom/yandex/div/internal/widget/tabs/TabView$a;

    const p1, 0x800013

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 9
    new-instance p1, Lhda;

    invoke-direct {p1}, Lhda;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    invoke-static {}, Lcom/yandex/div/internal/widget/tabs/TabView;->d()I

    move-result v0

    return v0
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method private static synthetic e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private getDefaultTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->e:Lbu2;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->o:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->n:Lcom/yandex/div/core/font/DivTypefaceType;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/font/DivTypefaceType;->getTypeface(Lbu2;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->m:Lcom/yandex/div/core/font/DivTypefaceType;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/font/DivTypefaceType;->getTypeface(Lbu2;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbu2;->getMedium()Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final c(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->h()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "..."

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v0, v1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v0, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->onMeasure(II)V

    :cond_6
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/internal/widget/tabs/TabView;->setSelected(Z)V

    return-void
.end method

.method public g(Lbu2;I)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->e:Lbu2;

    iput p2, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->g:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->h()V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->g:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->h()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->k:Lcom/yandex/div/internal/widget/tabs/TabView$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/yandex/div/internal/widget/tabs/TabView$b;->a(Lcom/yandex/div/internal/widget/tabs/TabView;)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p0, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->i:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->onMeasure(II)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->j:Lcom/yandex/div/internal/widget/tabs/TabView$a;

    invoke-interface {v2}, Lcom/yandex/div/internal/widget/tabs/TabView$a;->getMaxWidth()I

    move-result v2

    if-lez v2, :cond_3

    if-eqz v1, :cond_2

    if-le v0, v2, :cond_3

    :cond_2
    const/high16 p1, -0x80000000

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/tabs/TabView;->c(II)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->f:La15;

    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G(Landroid/view/View;La15;)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;->j()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public setActiveTypefaceType(Lcom/yandex/div/core/font/DivTypefaceType;)V
    .locals 0
    .param p1    # Lcom/yandex/div/core/font/DivTypefaceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->n:Lcom/yandex/div/core/font/DivTypefaceType;

    return-void
.end method

.method public setBoldTextOnSelection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->h:Z

    return-void
.end method

.method public setEllipsizeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->i:Z

    if-eqz p1, :cond_0

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p1, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setInactiveTypefaceType(Lcom/yandex/div/core/font/DivTypefaceType;)V
    .locals 0
    .param p1    # Lcom/yandex/div/core/font/DivTypefaceType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->m:Lcom/yandex/div/core/font/DivTypefaceType;

    return-void
.end method

.method public setInputFocusTracker(La15;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->f:La15;

    return-void
.end method

.method public setMaxWidthProvider(Lcom/yandex/div/internal/widget/tabs/TabView$a;)V
    .locals 0
    .param p1    # Lcom/yandex/div/internal/widget/tabs/TabView$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->j:Lcom/yandex/div/internal/widget/tabs/TabView$a;

    return-void
.end method

.method public setOnUpdateListener(Lcom/yandex/div/internal/widget/tabs/TabView$b;)V
    .locals 0
    .param p1    # Lcom/yandex/div/internal/widget/tabs/TabView$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->k:Lcom/yandex/div/internal/widget/tabs/TabView$b;

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/tabs/TabView;->setTypefaceType(Z)V

    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->h:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->h()V

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void
.end method

.method public setTab(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;)V
    .locals 1
    .param p1    # Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->l:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$e;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/tabs/TabView;->i()V

    :cond_0
    return-void
.end method

.method public setTabPadding(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public setTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTypefaceType(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->o:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yandex/div/internal/widget/tabs/TabView;->o:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
