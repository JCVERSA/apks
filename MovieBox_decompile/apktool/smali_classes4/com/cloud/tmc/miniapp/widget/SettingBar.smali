.class public final Lcom/cloud/tmc/miniapp/widget/SettingBar;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Landroid/widget/LinearLayout;

.field public final OooO0O0:Landroid/widget/TextView;

.field public final OooO0OO:Landroid/widget/TextView;

.field public final OooO0Oo:Landroid/view/View;

.field public OooO0o:I

.field public OooO0o0:I

.field public OooO0oO:I

.field public OooO0oo:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o:Landroid/widget/LinearLayout;

    .line 7
    new-instance p4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    .line 8
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 9
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 10
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    invoke-direct {v2, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v7, 0x3f800000    # 1.0f

    .line 13
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14
    invoke-virtual {p4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x800013

    .line 20
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setGravity(I)V

    const v2, 0x800015

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 23
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 24
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 27
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 28
    invoke-virtual {p4, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 30
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v3

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 36
    invoke-virtual {p4, v2, v3, v4, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_15:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_12:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 41
    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v2, "getContext().obtainStyle\u2026tyleable.Mini_SettingBar)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 45
    :cond_0
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 47
    :cond_1
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 49
    :cond_2
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextHint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 51
    :cond_3
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableSize:I

    .line 53
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 54
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 55
    :cond_4
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableSize:I

    .line 57
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 59
    :cond_5
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawableTint:I

    .line 61
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 62
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 63
    :cond_6
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableTint:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 64
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawableTint:I

    .line 65
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 66
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 67
    :cond_7
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawablePadding:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 68
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawablePadding:I

    .line 69
    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_0

    .line 70
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 71
    :goto_0
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 72
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawablePadding:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 73
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawablePadding:I

    invoke-virtual {p2, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_1

    .line 74
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$dimen;->mini_dp_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 75
    :goto_1
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 76
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 77
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 78
    :cond_a
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 79
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 80
    :cond_b
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextColor:I

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_title_text:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 82
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 83
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 84
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextColor:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_666666:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 86
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 87
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooOO0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 88
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_leftTextSize:I

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_sp_14:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 90
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 91
    invoke-virtual {p0, v6, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 92
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_rightTextSize:I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$dimen;->mini_sp_14:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 94
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 95
    invoke-virtual {p0, v6, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 96
    sget v2, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineDrawable:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    goto :goto_2

    .line 98
    :cond_c
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 99
    sget v3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_divider_01:I

    .line 100
    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 101
    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 103
    :goto_2
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineVisible:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 104
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineVisible:I

    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o(Z)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 105
    :cond_d
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineSize:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 106
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineSize:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 107
    :cond_e
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineMargin:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 108
    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_SettingBar_bar_lineMargin:I

    .line 109
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 111
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_10

    .line 112
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_surface_01:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 113
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 115
    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 116
    :cond_10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-static {p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p0, p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 120
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/SettingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final OooO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method public final OooO00o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-object p0
.end method

.method public final OooO00o(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public final OooO00o(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 4
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    .line 5
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO00o(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO00o(Z)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public final OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 3

    .line 2
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oO:I

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p0
.end method

.method public final OooO0O0(IF)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object p0
.end method

.method public final OooO0O0(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public final OooO0O0(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    .line 9
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o0:I

    .line 10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getLeftDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 12
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO0OO(Landroid/graphics/drawable/Drawable;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo:I

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;

    .line 4
    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    .line 5
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0o:I

    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-object p0
.end method

.method public final OooO0OO(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0Oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public final OooO0Oo(Ljava/lang/CharSequence;)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final OooO0o(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final OooO0o0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 19
    .line 20
    :goto_0
    if-nez v0, :cond_2

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 24
    .line 25
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final OooO0oO(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final OooO0oo(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 3

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0oo:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/SettingBar;->getRightDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-lez p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v0, v1, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object p0
.end method

.method public final OooOO0(I)Lcom/cloud/tmc/miniapp/widget/SettingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    return-object v0
.end method

.method public final getLeftText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getLeftView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0O0:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLineView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0Oo:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO00o:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    aget-object v0, v0, v1

    .line 9
    .line 10
    return-object v0
.end method

.method public final getRightText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getRightView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/SettingBar;->OooO0OO:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method
