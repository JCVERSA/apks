.class public abstract Lcom/transsion/shorttv/utils/l;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 2
    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    .line 5
    const-string v2, "0.5x"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 11
    .line 12
    const/high16 v2, 0x3f400000    # 0.75f

    .line 13
    .line 14
    const-string v3, "0.75x"

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 20
    .line 21
    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    .line 23
    const-string v4, "1x"

    .line 24
    .line 25
    invoke-direct {v2, v3, v4}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 29
    .line 30
    const/high16 v4, 0x3fa00000    # 1.25f

    .line 31
    .line 32
    const-string v5, "1.25x"

    .line 33
    .line 34
    invoke-direct {v3, v4, v5}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 38
    .line 39
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 40
    .line 41
    const-string v6, "1.5x"

    .line 42
    .line 43
    invoke-direct {v4, v5, v6}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v5, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 47
    .line 48
    const/high16 v6, 0x3fe00000    # 1.75f

    .line 49
    .line 50
    const-string v7, "1.75x"

    .line 51
    .line 52
    invoke-direct {v5, v6, v7}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 56
    .line 57
    const/high16 v7, 0x40000000    # 2.0f

    .line 58
    .line 59
    const-string v8, "2x"

    .line 60
    .line 61
    invoke-direct {v6, v7, v8}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v7, 0x7

    .line 65
    new-array v7, v7, [Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 66
    .line 67
    const/4 v8, 0x0

    .line 68
    aput-object v0, v7, v8

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    aput-object v1, v7, v0

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object v2, v7, v0

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    aput-object v3, v7, v0

    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    aput-object v4, v7, v0

    .line 81
    .line 82
    const/4 v0, 0x5

    .line 83
    aput-object v5, v7, v0

    .line 84
    .line 85
    const/4 v0, 0x6

    .line 86
    aput-object v6, v7, v0

    .line 87
    .line 88
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lcom/transsion/shorttv/utils/l;->a:Ljava/util/List;

    .line 93
    .line 94
    return-void
.end method

.method public static synthetic a(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/utils/l;->d(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/utils/l;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "dataList"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "itemClickCallback"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/transsion/shorttv/R$layout;->short_tv_layout_video_pop:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Landroid/widget/PopupWindow;

    .line 32
    .line 33
    const/4 v3, -0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-direct {v2, v1, v3, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lqr/l0;->a(Landroid/view/View;)Lqr/l0;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "bind(...)"

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v3, v1, Lqr/l0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    new-instance v5, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-direct {v5, v0, v4, v6}, Lcom/transsion/shorttv/base/widget/NpaLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lqr/l0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    new-instance v1, Lcom/transsion/shorttv/utils/j;

    .line 61
    .line 62
    invoke-direct {v1, p1}, Lcom/transsion/shorttv/utils/j;-><init>(Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lcom/transsion/shorttv/utils/k;

    .line 66
    .line 67
    invoke-direct {v3, v2, p2}, Lcom/transsion/shorttv/utils/k;-><init>(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 77
    .line 78
    .line 79
    const/16 p2, 0x26

    .line 80
    .line 81
    invoke-static {p2}, Lcr/a;->a(I)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    mul-int/2addr p2, p1

    .line 90
    const/4 p1, 0x4

    .line 91
    invoke-static {p1}, Lcr/a;->a(I)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    add-int/2addr p2, p1

    .line 96
    const/16 p1, 0x50

    .line 97
    .line 98
    invoke-static {p1}, Lcr/a;->a(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    sub-int/2addr v0, p1

    .line 107
    div-int/lit8 v0, v0, 0x2

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    neg-int p1, p1

    .line 114
    sub-int/2addr p1, p2

    .line 115
    invoke-virtual {v2, p0, v0, p1, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private static final d(Landroid/widget/PopupWindow;Lkotlin/jvm/functions/Function1;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lhr/d;->a:Lhr/d;

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const-wide/16 v1, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, p3, v1, v2}, Lhr/d;->a(IJ)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-eqz p3, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p2, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    instance-of p3, p2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    check-cast p2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p2, 0x0

    .line 38
    :goto_0
    if-eqz p2, :cond_2

    .line 39
    .line 40
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
