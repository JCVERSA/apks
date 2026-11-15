.class public final Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const v1, 0x102000b

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getTextGravity(Landroid/content/Context;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getTextColor(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getTextSize(Landroid/content/Context;)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x78

    .line 44
    .line 45
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getHorizontalPadding(Landroid/content/Context;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getVerticalPadding(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .line 70
    const/4 v2, -0x2

    .line 71
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 72
    .line 73
    .line 74
    const/16 v2, 0x24

    .line 75
    .line 76
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/BlackToastStyle;->getTranslationZ(Landroid/content/Context;)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/View;->setZ(F)V

    .line 105
    .line 106
    .line 107
    return-object v0
.end method

.method public final getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black70:I

    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x1

    .line 29
    const/high16 v2, 0x41000000    # 8.0f

    .line 30
    .line 31
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getGravity(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getHorizontalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getHorizontalPadding(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    const/high16 v1, 0x41400000    # 12.0f

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-int p1, p1

    .line 22
    return p1
.end method

.method public final getTextColor(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final getTextGravity(Landroid/content/Context;)I
    .locals 0

    .line 1
    const/16 p1, 0x11

    .line 2
    .line 3
    return p1
.end method

.method public final getTextSize(Landroid/content/Context;)F
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const/4 v0, 0x2

    .line 16
    const/high16 v1, 0x41600000    # 14.0f

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTranslationZ(Landroid/content/Context;)F
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    const/high16 v1, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getVerticalMargin(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final getVerticalPadding(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    const/high16 v1, 0x41000000    # 8.0f

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    float-to-int p1, p1

    .line 22
    return p1
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getXOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle$DefaultImpls;->getYOffset(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
