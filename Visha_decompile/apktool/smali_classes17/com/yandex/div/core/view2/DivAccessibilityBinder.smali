.class public Lcom/yandex/div/core/view2/DivAccessibilityBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;,
        Lcom/yandex/div/core/view2/DivAccessibilityBinder$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lb5;


# direct methods
.method public constructor <init>(ZLb5;)V
    .locals 1

    const-string v0, "accessibilityStateProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->a:Z

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->b:Lb5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/DivAccessibilityBinder;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->e(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;Lcom/yandex/div/core/view2/Div2View;Z)V
    .locals 4

    sget-object v0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    instance-of p0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    if-nez p4, :cond_2

    instance-of p0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->k(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    instance-of p0, p1, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_4
    :goto_0
    invoke-virtual {p3, p1, p2}, Lcom/yandex/div/core/view2/Div2View;->setPropagatedAccessibilityMode$div_release(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;)V

    return-void
.end method

.method public c(Landroid/view/View;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivAccessibility$Mode;Log2;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBase"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/yandex/div/core/view2/Div2View;->getPropagatedAccessibilityMode$div_release(Landroid/view/View;)Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object v2

    :cond_2
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    if-nez p3, :cond_3

    invoke-virtual {p0, p4}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->g(Log2;)Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object p3

    :cond_3
    invoke-virtual {p0, v2, p3}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->i(Lcom/yandex/div2/DivAccessibility$Mode;Lcom/yandex/div2/DivAccessibility$Mode;)Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object p3

    if-ne v2, p3, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->b(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;Lcom/yandex/div/core/view2/Div2View;Z)V

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {p0, p4}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->g(Log2;)Lcom/yandex/div2/DivAccessibility$Mode;

    move-result-object p3

    :cond_6
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->b(Landroid/view/View;Lcom/yandex/div2/DivAccessibility$Mode;Lcom/yandex/div/core/view2/Div2View;Z)V

    :goto_1
    return-void
.end method

.method public d(Landroid/view/View;Log2;Lcom/yandex/div2/DivAccessibility$Type;Loj3;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBase"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->b:Lb5;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb5;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegate(Landroid/view/View;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v2

    invoke-virtual {p0, p3, p2, p4}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->l(Lcom/yandex/div2/DivAccessibility$Type;Log2;Loj3;)Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    move-result-object p2

    sget-object p3, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->LIST:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    if-ne p2, p3, :cond_1

    instance-of p3, p1, Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    if-eqz p3, :cond_1

    new-instance v2, Lcom/yandex/div/core/view2/AccessibilityListDelegate;

    move-object p0, p1

    check-cast p0, Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;

    invoke-direct {v2, p0}, Lcom/yandex/div/core/view2/AccessibilityListDelegate;-><init>(Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;)V

    goto :goto_0

    :cond_1
    instance-of p3, v2, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    if-eqz p3, :cond_2

    move-object p3, v2

    check-cast p3, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    new-instance p4, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$1$1;

    invoke-direct {p4, p0, p2}, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$1$1;-><init>(Lcom/yandex/div/core/view2/DivAccessibilityBinder;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V

    invoke-virtual {p3, p4}, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;->b(Ls74;)V

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;

    new-instance v3, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;

    invoke-direct {v3, p0, p2}, Lcom/yandex/div/core/view2/DivAccessibilityBinder$bindType$accessibilityDelegate$2;-><init>(Lcom/yandex/div/core/view2/DivAccessibilityBinder;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/AccessibilityDelegateWrapper;-><init>(Landroidx/core/view/AccessibilityDelegateCompat;Ls74;Ls74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, p3

    :goto_0
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public final e(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;)V
    .locals 2

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, ""

    const-string v1, "android.widget.TextView"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const-string v0, "android.widget.RadioButton"

    goto :goto_0

    :pswitch_1
    const-string v0, "android.widget.CheckBox"

    goto :goto_0

    :pswitch_2
    move-object v0, v1

    goto :goto_0

    :pswitch_3
    const-string v0, "android.widget.TabWidget"

    goto :goto_0

    :pswitch_4
    const-string v0, "android.widget.Spinner"

    goto :goto_0

    :pswitch_5
    const-string v0, "android.widget.SeekBar"

    goto :goto_0

    :pswitch_6
    const-string v0, "androidx.viewpager.widget.ViewPager"

    goto :goto_0

    :pswitch_7
    const-string v0, "android.widget.ImageView"

    goto :goto_0

    :pswitch_8
    const-string v0, "android.widget.EditText"

    goto :goto_0

    :pswitch_9
    const-string v0, "android.widget.Button"

    :goto_0
    :pswitch_a
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->HEADER:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHeading(Z)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->a:Z

    return p0
.end method

.method public final g(Log2;)Lcom/yandex/div2/DivAccessibility$Mode;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivImage;

    if-eqz p0, :cond_4

    invoke-interface {p1}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    if-nez p0, :cond_3

    check-cast p1, Lcom/yandex/div2/DivImage;

    iget-object p0, p1, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_0
    iget-object p0, p1, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    iget-object p0, p1, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    sget-object p0, Lcom/yandex/div2/DivAccessibility$Mode;->EXCLUDE:Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/yandex/div2/DivAccessibility$Mode;->DEFAULT:Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_4
    instance-of p0, p1, Lcom/yandex/div2/DivSeparator;

    if-eqz p0, :cond_9

    invoke-interface {p1}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    if-nez p0, :cond_8

    check-cast p1, Lcom/yandex/div2/DivSeparator;

    iget-object p0, p1, Lcom/yandex/div2/DivSeparator;->o:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_5
    iget-object p0, p1, Lcom/yandex/div2/DivSeparator;->d:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_6
    iget-object p0, p1, Lcom/yandex/div2/DivSeparator;->x:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    sget-object p0, Lcom/yandex/div2/DivAccessibility$Mode;->EXCLUDE:Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/yandex/div2/DivAccessibility$Mode;->DEFAULT:Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/yandex/div2/DivAccessibility$Mode;->DEFAULT:Lcom/yandex/div2/DivAccessibility$Mode;

    :goto_0
    return-object p0
.end method

.method public final h(Lcom/yandex/div2/DivAccessibility$Mode;)I
    .locals 1

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return p1
.end method

.method public final i(Lcom/yandex/div2/DivAccessibility$Mode;Lcom/yandex/div2/DivAccessibility$Mode;)Lcom/yandex/div2/DivAccessibility$Mode;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->h(Lcom/yandex/div2/DivAccessibility$Mode;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->h(Lcom/yandex/div2/DivAccessibility$Mode;)I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final j(Lcom/yandex/div2/DivImage;Loj3;)Z
    .locals 2

    iget-object p0, p1, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p0, p1, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    if-eqz p0, :cond_3

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivAction;

    iget-object v1, v1, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p0, p1, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    if-eqz p0, :cond_6

    if-eqz p0, :cond_6

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_4

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivAction;

    iget-object p1, p1, Lcom/yandex/div2/DivAction;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final k(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public final l(Lcom/yandex/div2/DivAccessibility$Type;Log2;Loj3;)Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;
    .locals 2

    sget-object v0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->CHECK_BOX:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_1
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->RADIO_BUTTON:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_2
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->TAB_WIDGET:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_3
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->SELECT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_4
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->LIST:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_5
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->HEADER:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_6
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->EDIT_TEXT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_7
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->TEXT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_8
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->IMAGE:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_9
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->BUTTON:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_a
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->NONE:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto/16 :goto_1

    :pswitch_b
    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivAccessibility;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivAccessibility$Mode;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget-object v1, Lcom/yandex/div2/DivAccessibility$Mode;->EXCLUDE:Lcom/yandex/div2/DivAccessibility$Mode;

    if-ne p1, v1, :cond_1

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->NONE:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_1
    instance-of p1, p2, Lcom/yandex/div2/DivInput;

    if-eqz p1, :cond_2

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->EDIT_TEXT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_2
    instance-of p1, p2, Lcom/yandex/div2/DivText;

    if-eqz p1, :cond_3

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->TEXT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_3
    instance-of p1, p2, Lcom/yandex/div2/DivTabs;

    if-eqz p1, :cond_4

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->TAB_WIDGET:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_4
    instance-of p1, p2, Lcom/yandex/div2/DivSelect;

    if-eqz p1, :cond_5

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->SELECT:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_5
    instance-of p1, p2, Lcom/yandex/div2/DivSlider;

    if-eqz p1, :cond_6

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->SLIDER:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_6
    instance-of p1, p2, Lcom/yandex/div2/DivImage;

    if-eqz p1, :cond_8

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p1

    if-nez p1, :cond_7

    move-object p1, p2

    check-cast p1, Lcom/yandex/div2/DivImage;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/DivAccessibilityBinder;->j(Lcom/yandex/div2/DivImage;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->IMAGE:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_8
    instance-of p0, p2, Lcom/yandex/div2/DivGallery;

    if-eqz p0, :cond_a

    invoke-interface {p2}, Log2;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object v0, p0, Lcom/yandex/div2/DivAccessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    :cond_9
    if-eqz v0, :cond_a

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->PAGER:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_a
    instance-of p0, p2, Landroid/widget/RadioButton;

    if-eqz p0, :cond_b

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->RADIO_BUTTON:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_b
    instance-of p0, p2, Landroid/widget/CheckBox;

    if-eqz p0, :cond_c

    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->CHECK_BOX:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    goto :goto_1

    :cond_c
    sget-object p0, Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;->NONE:Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
