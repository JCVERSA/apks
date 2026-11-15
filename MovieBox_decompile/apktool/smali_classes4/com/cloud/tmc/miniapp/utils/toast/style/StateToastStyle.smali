.class public Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;
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


# instance fields
.field private final textShow:Z

.field private final type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->textShow:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;-><init>(Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;Z)V

    return-void
.end method

.method private final getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_black70:I

    .line 7
    .line 8
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x1

    .line 24
    const/high16 v2, 0x41000000    # 8.0f

    .line 25
    .line 26
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method private final getTextSize(Landroid/content/Context;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    const/4 v0, 0x2

    .line 14
    const/high16 v1, 0x41400000    # 12.0f

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method


# virtual methods
.method public final createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const p1, 0x1020006

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    const/16 v1, 0x2c

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-static {v1}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-direct {p1, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public final createTextView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

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
    const/16 v1, 0x11

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 20
    .line 21
    .line 22
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_white:I

    .line 23
    .line 24
    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->getTextSize(Landroid/content/Context;)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x7

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 45
    .line 46
    .line 47
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    const/4 v2, -0x2

    .line 55
    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->textShow:Z

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const v1, 0x1020002

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 25
    .line 26
    const/16 v2, 0x78

    .line 27
    .line 28
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/16 v2, 0xc

    .line 40
    .line 41
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v4, 0x1a

    .line 46
    .line 47
    invoke-static {v4}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v2}, Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;->getDp2px(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->getBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createIconView(Landroid/content/Context;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->createTextView(Landroid/content/Context;)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
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

.method public getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;->type:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    .line 2
    .line 3
    return-object v0
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
