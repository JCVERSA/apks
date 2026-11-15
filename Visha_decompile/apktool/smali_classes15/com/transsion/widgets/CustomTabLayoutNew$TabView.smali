.class public final Lcom/transsion/widgets/CustomTabLayoutNew$TabView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomTabLayoutNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# static fields
.field private static final EXPAND_ANIMATION_DURATION:I = 0x15e


# instance fields
.field private badgeAnchorView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private badgeView:Lcom/transsion/widgets/BadgeView;

.field private baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customIconView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customTabItem:Landroid/view/ViewGroup;

.field private customTextView:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private customView:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultMaxLines:I

.field private expandAnimator:Landroid/animation/ValueAnimator;

.field private iconView:Landroid/widget/ImageView;

.field private isInitialized:Z

.field private mCollapsedWidth:I

.field private mExpandedWidth:I

.field private mTextMaxWidth:I

.field private showBadgeView:Z

.field private tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/widgets/CustomTabLayoutNew;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomTabLayoutNew;Landroid/content/Context;)V
    .locals 4
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->defaultMaxLines:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    invoke-direct {p0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateBackgroundDrawable(Landroid/content/Context;)V

    iget v1, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingStart:I

    iget v2, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingTop:I

    iget v3, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingEnd:I

    iget p1, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabPaddingBottom:I

    invoke-static {p0, v1, v2, v3, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0, p2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method private addOnLayoutChangeListener(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$5;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private animateTabWidth(Z)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->measureTabWidths()V

    :cond_2
    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mExpandedWidth:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mCollapsedWidth:I

    if-lez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz p1, :cond_4

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mExpandedWidth:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mCollapsedWidth:I

    :goto_0
    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextVisibility(ZZ)V

    filled-new-array {v0, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Ls53;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v2, v3}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$3;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$4;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    :goto_1
    return-void
.end method

.method private applyStableTextDirection(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTextDirection()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextDirection(I)V

    :cond_1
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0
    .param p1    # Landroid/text/Layout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p0, p3

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private checkRaw(I)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->h(Lcom/transsion/widgets/CustomTabLayoutNew;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->getBadge()Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->getContentWidth()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->hasBadgeDrawable()Z

    move-result p0

    return p0
.end method

.method private getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method private getContentWidth()I
    .locals 8

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    move p0, v4

    move v1, p0

    move v5, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v3, v4

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_2
    move v5, v0

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    sub-int/2addr p0, v1

    return p0
.end method

.method private getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eq p1, p0, :cond_0

    return-object v1

    :cond_0
    sget-boolean p0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_1
    return-object v1
.end method

.method private getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    :cond_0
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryUpdateBadgeAnchor()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create badge"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->removeBadge()V

    return-void
.end method

.method private hasBadgeDrawable()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    return-void
.end method

.method private inflateAndAddDefaultIconView()V
    .locals 4

    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/transsion/common/R$layout;->design_layout_tab_icon:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    sget p0, Lcom/transsion/common/R$drawable;->os_press_primary_bg:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private inflateAndAddDefaultTextView()V
    .locals 4

    sget-boolean v0, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->createPreApi18BadgeAnchorRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/common/R$layout;->custom_tab_textview:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    sget p0, Lcom/transsion/common/R$drawable;->os_press_primary_bg:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-boolean v0, v0, Lcom/transsion/widgets/CustomTabLayoutNew;->redPoint:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/common/R$layout;->custom_tab_view_point_new:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/common/R$layout;->custom_tab_view_new:I

    :goto_0
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/transsion/common/R$id;->custom_tab_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    sget v0, Lcom/transsion/common/R$id;->custom_tab_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/common/R$id;->custom_tab_badgeview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BadgeView;

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    sget v0, Lcom/transsion/common/R$id;->custom_tab_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTabItem:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTabItem:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->b(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTabItem:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTabItem:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->a(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->e(Lcom/transsion/widgets/CustomTabLayoutNew;)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew;->e(Lcom/transsion/widgets/CustomTabLayoutNew;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    new-instance p1, Lvo1;

    invoke-direct {p1, p0}, Lvo1;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private measureTabWidths()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    move v1, v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mCollapsedWidth:I

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mExpandedWidth:I

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mExpandedWidth:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private removeBadge()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryRemoveBadgeFromAnchor()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    return-void
.end method

.method private tryAttachBadgeToAnchor(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private tryRemoveBadgeFromAnchor()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    return-void
.end method

.method private tryUpdateBadgeAnchor()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryRemoveBadgeFromAnchor()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryRemoveBadgeFromAnchor()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getTabLabelVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryRemoveBadgeFromAnchor()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryAttachBadgeToAnchor(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryRemoveBadgeFromAnchor()V

    :goto_0
    return-void
.end method

.method private tryUpdateBadgeDrawableBounds(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->hasBadgeDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeAnchorView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->getCustomParentForBadge(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/google/android/material/badge/BadgeUtils;->setBadgeDrawableBounds(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private updateBackgroundDrawable(Landroid/content/Context;)V
    .locals 5

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget p1, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabBackgroundResId:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget v1, v1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabBackgroundResId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object v1, v1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v2, 0x42fc0000    # 126.0f

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object v2, v2, Lcom/transsion/widgets/CustomTabLayoutNew;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-boolean v4, v4, Lcom/transsion/widgets/CustomTabLayoutNew;->unboundedRipple:Z

    if-eqz v4, :cond_2

    move-object p1, v0

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-direct {v3, v2, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v3

    :cond_4
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIconDrawableColor(ZLandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->c(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->c(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->f(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p0}, Lcom/transsion/widgets/CustomTabLayoutNew;->f(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateIconSize(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->d(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->d(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->g(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew;->g(Lcom/transsion/widgets/CustomTabLayoutNew;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 5
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {v1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    const/16 v4, 0x8

    if-eqz p2, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    if-nez v1, :cond_7

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-static {p2}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->b(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_5

    :cond_9
    move-object p1, v2

    :goto_5
    if-nez v1, :cond_a

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    return-void
.end method

.method private updateTextVisibility(ZZ)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_2
    const-wide/16 v7, 0xfa

    if-eqz p1, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Ls53;

    invoke-direct {p1, v3, v6, v2, v5}, Ls53;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Ls53;

    invoke-direct {p2, v3, v6, v2, v5}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$1;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    if-eqz v0, :cond_9

    const v7, 0x1020014

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    if-nez p2, :cond_7

    if-eqz p1, :cond_5

    move v1, v4

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Ls53;

    invoke-direct {p1, v3, v6, v2, v5}, Ls53;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v7, 0xaf

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Ls53;

    invoke-direct {p2, v3, v6, v2, v5}, Ls53;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$2;

    invoke-direct {p2, p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView$2;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->baseBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public getTab()Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    return-object p0
.end method

.method public isDarkMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Luo1;

    invoke-direct {v0, p0}, Luo1;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->expandAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getPosition()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    :cond_1
    const-string p0, "Tab"

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRoleDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->measureTabWidths()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    invoke-virtual {v2}, Lcom/transsion/widgets/CustomTabLayoutNew;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget p1, p1, Lcom/transsion/widgets/CustomTabLayoutNew;->tabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget v0, v0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextSize:F

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->defaultMaxLines:I

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget v0, v0, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextMultiLineSize:F

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v3

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    if-ltz v3, :cond_5

    if-eq v1, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->select()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setSelected(Z)V

    return-void
.end method

.method public setBadgeViewNum(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/widgets/BadgeView;->setNum(I)Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->isInitialized:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->animateTabWidth(Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextVisibility(ZZ)V

    :goto_1
    return-void
.end method

.method public setShowBadgeView(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->showBadgeView:Z

    .line 3
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setShowBadgeView(ZI)V
    .locals 1

    .line 5
    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->showBadgeView:Z

    .line 7
    iget-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {p0, p2}, Lcom/transsion/widgets/BadgeView;->setRedPointType(I)V

    :cond_1
    return-void
.end method

.method public setTab(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)V
    .locals 1
    .param p1    # Lcom/transsion/widgets/CustomTabLayoutNew$Tab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->update()V

    :cond_0
    return-void
.end method

.method public setTextMaxWidth()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->showBadgeView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->badgeView:Lcom/transsion/widgets/BadgeView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x10

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mTextMaxWidth:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mTextMaxWidth:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextMaxWidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomTabLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setupInitialState()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->measureTabWidths()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mExpandedWidth:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->mCollapsedWidth:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextVisibility(ZZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Luo1;

    invoke-direct {v0, p0}, Luo1;-><init>(Lcom/transsion/widgets/CustomTabLayoutNew$TabView;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final update()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tab:Lcom/transsion/widgets/CustomTabLayoutNew$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iput-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v1, 0x1020014

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroidx/core/widget/TextViewCompat;->getMaxLines(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->defaultMaxLines:I

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    :cond_5
    const v1, 0x1020006

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    :cond_7
    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    :goto_1
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customView:Landroid/view/View;

    if-nez v1, :cond_a

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->this$0:Lcom/transsion/widgets/CustomTabLayoutNew;

    iget-object v2, v2, Lcom/transsion/widgets/CustomTabLayoutNew;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->applyStableTextDirection(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-direct {p0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->tryUpdateBadgeAnchor()V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->addOnLayoutChangeListener(Landroid/view/View;)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v1, :cond_b

    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_c
    :goto_2
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->a(Lcom/transsion/widgets/CustomTabLayoutNew$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/widgets/CustomTabLayoutNew$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    :cond_e
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->setSelected(Z)V

    return-void
.end method

.method public final updateOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->iconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->customIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/transsion/widgets/CustomTabLayoutNew$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method
