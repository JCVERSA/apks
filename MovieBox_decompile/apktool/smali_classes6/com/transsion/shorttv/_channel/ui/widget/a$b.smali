.class public final Lcom/transsion/shorttv/_channel/ui/widget/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:I

.field private final d:I

.field final synthetic e:Lcom/transsion/shorttv/_channel/ui/widget/a;


# direct methods
.method public constructor <init>(Lcom/transsion/shorttv/_channel/ui/widget/a;Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "selectItems"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->d:I

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic g(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->j(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->k(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i(Ljava/lang/String;ZI)Landroid/view/View;
    .locals 5

    .line 1
    new-instance p3, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x11

    .line 13
    .line 14
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 24
    .line 25
    .line 26
    const/high16 v2, 0x42c80000    # 100.0f

    .line 27
    .line 28
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 34
    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    const/high16 v3, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_white_40:I

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_gray_light_40:I

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v0, p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    new-instance p2, Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    const/high16 p1, 0x41600000    # 14.0f

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    return-object p3
.end method

.method private static final j(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static final k(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 1

    .line 1
    const-string p4, "slider"

    .line 2
    .line 3
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const-string p4, "getValues(...)"

    .line 11
    .line 12
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    const/4 p5, 0x2

    .line 20
    if-lt p4, p5, :cond_0

    .line 21
    .line 22
    const/4 p4, 0x0

    .line 23
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    check-cast p4, Ljava/lang/Float;

    .line 28
    .line 29
    const/4 p5, 0x1

    .line 30
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Ljava/lang/Float;

    .line 35
    .line 36
    check-cast p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->h()Landroid/widget/TextView;

    .line 39
    .line 40
    .line 41
    move-result-object p5

    .line 42
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    float-to-int v0, v0

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->f()Landroid/widget/TextView;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    float-to-int p5, p5

    .line 63
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;->Companion:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;

    .line 77
    .line 78
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-virtual {p2, p4, p3}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;->a(FF)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->d:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->c:I

    .line 19
    .line 20
    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "holder"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    .line 15
    .line 16
    instance-of v3, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    check-cast p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->g()Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->f()Lcom/google/android/flexbox/FlexboxLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 56
    .line 57
    const/high16 v5, 0x42300000    # 44.0f

    .line 58
    .line 59
    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v3, v5

    .line 64
    div-int/2addr v3, v1

    .line 65
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Ljava/lang/Iterable;

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    move v6, v4

    .line 76
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_7

    .line 81
    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    add-int/lit8 v8, v6, 0x1

    .line 87
    .line 88
    if-gez v6, :cond_0

    .line 89
    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 91
    .line 92
    .line 93
    :cond_0
    check-cast v7, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    .line 94
    .line 95
    iget-object v9, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v7}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    invoke-virtual {v7}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-direct {p0, v10, v9, v3}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->i(Ljava/lang/String;ZI)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    new-instance v10, Lwq/f;

    .line 122
    .line 123
    invoke-direct {v10, p0, v2, v7, p2}, Lwq/f;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    new-instance v7, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 130
    .line 131
    const/high16 v10, 0x42000000    # 32.0f

    .line 132
    .line 133
    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    invoke-direct {v7, v3, v10}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 138
    .line 139
    .line 140
    rem-int/2addr v6, v1

    .line 141
    const/high16 v10, 0x41400000    # 12.0f

    .line 142
    .line 143
    if-nez v6, :cond_1

    .line 144
    .line 145
    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_1
    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    .line 154
    :goto_1
    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 159
    .line 160
    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->f()Lcom/google/android/flexbox/FlexboxLayout;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    move v6, v8

    .line 171
    goto :goto_0

    .line 172
    :cond_2
    instance-of p2, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    .line 173
    .line 174
    if-eqz p2, :cond_7

    .line 175
    .line 176
    move-object p2, p1

    .line 177
    check-cast p2, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    .line 178
    .line 179
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->i()Landroid/widget/TextView;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-nez v3, :cond_3

    .line 195
    .line 196
    return-void

    .line 197
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setValueFrom(F)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setValueTo(F)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const/high16 v6, 0x3f800000    # 1.0f

    .line 224
    .line 225
    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setStepSize(F)V

    .line 226
    .line 227
    .line 228
    iget-object v5, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    move-object v6, v5

    .line 239
    check-cast v6, Ljava/lang/String;

    .line 240
    .line 241
    if-eqz v6, :cond_4

    .line 242
    .line 243
    const-string v5, ","

    .line 244
    .line 245
    filled-new-array {v5}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    const/4 v10, 0x6

    .line 250
    const/4 v11, 0x0

    .line 251
    const/4 v8, 0x0

    .line 252
    const/4 v9, 0x0

    .line 253
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    goto :goto_2

    .line 258
    :cond_4
    const/4 v5, 0x0

    .line 259
    :goto_2
    if-eqz v5, :cond_5

    .line 260
    .line 261
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    check-cast v6, Ljava/lang/String;

    .line 266
    .line 267
    if-eqz v6, :cond_5

    .line 268
    .line 269
    invoke-static {v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    if-eqz v6, :cond_5

    .line 274
    .line 275
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    goto :goto_3

    .line 280
    :cond_5
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    :goto_3
    if-eqz v5, :cond_6

    .line 285
    .line 286
    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    check-cast v5, Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v5, :cond_6

    .line 293
    .line 294
    invoke-static {v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    if-eqz v5, :cond_6

    .line 299
    .line 300
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    goto :goto_4

    .line 305
    :cond_6
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    :goto_4
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 318
    .line 319
    .line 320
    move-result-object v8

    .line 321
    new-array v1, v1, [Ljava/lang/Float;

    .line 322
    .line 323
    aput-object v7, v1, v4

    .line 324
    .line 325
    aput-object v8, v1, v0

    .line 326
    .line 327
    invoke-virtual {v5, v1}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->h()Landroid/widget/TextView;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    float-to-int v1, v6

    .line 335
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->f()Landroid/widget/TextView;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    float-to-int v1, v3

    .line 347
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    .line 355
    .line 356
    .line 357
    move-result-object p2

    .line 358
    new-instance v0, Lwq/g;

    .line 359
    .line 360
    invoke-direct {v0, p1, p0, v2}, Lwq/g;-><init>(Landroidx/recyclerview/widget/RecyclerView$a0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, v0}, Lcom/google/android/material/slider/RangeSlider;->addOnChangeListener(Lcom/google/android/material/slider/a;)V

    .line 364
    .line 365
    .line 366
    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 10

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v2, Landroid/widget/LinearLayout;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    const/4 v3, -0x2

    .line 25
    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    .line 32
    .line 33
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Landroid/widget/TextView;

    .line 42
    .line 43
    iget-object v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 44
    .line 45
    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 59
    .line 60
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    .line 62
    .line 63
    const/high16 v0, 0x41400000    # 12.0f

    .line 64
    .line 65
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->c:I

    .line 76
    .line 77
    if-ne p2, v6, :cond_0

    .line 78
    .line 79
    new-instance p2, Lcom/google/android/flexbox/FlexboxLayout;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v5}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexDirection(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexWrap(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    .line 100
    .line 101
    invoke-direct {p1, v2, v4, p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 102
    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iget-object v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 108
    .line 109
    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-direct {p2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    .line 118
    .line 119
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 120
    .line 121
    invoke-direct {v6, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    new-instance v6, Lcom/google/android/material/slider/RangeSlider;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-direct {v6, v3}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    const/high16 v7, 0x42c80000    # 100.0f

    .line 144
    .line 145
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    const/4 v8, 0x2

    .line 150
    new-array v8, v8, [Ljava/lang/Float;

    .line 151
    .line 152
    aput-object v3, v8, v5

    .line 153
    .line 154
    aput-object v7, v8, p1

    .line 155
    .line 156
    invoke-virtual {v6, v8}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_white_40:I

    .line 175
    .line 176
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6, v5}, Lcom/google/android/material/slider/RangeSlider;->setTickVisible(Z)V

    .line 195
    .line 196
    .line 197
    new-instance p1, Landroid/widget/LinearLayout;

    .line 198
    .line 199
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 200
    .line 201
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-direct {p1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 209
    .line 210
    .line 211
    new-instance v7, Landroid/widget/TextView;

    .line 212
    .line 213
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    .line 227
    .line 228
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 229
    .line 230
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 231
    .line 232
    .line 233
    new-instance v8, Landroid/widget/TextView;

    .line 234
    .line 235
    iget-object v9, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 236
    .line 237
    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Landroid/view/View;

    .line 257
    .line 258
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 265
    .line 266
    .line 267
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 268
    .line 269
    const/high16 v3, 0x3f800000    # 1.0f

    .line 270
    .line 271
    invoke-direct {v1, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    .line 293
    .line 294
    move-object v1, p1

    .line 295
    move-object v3, v4

    .line 296
    move-object v4, v6

    .line 297
    move-object v5, v7

    .line 298
    move-object v6, v8

    .line 299
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 300
    .line 301
    .line 302
    return-object p1
.end method
