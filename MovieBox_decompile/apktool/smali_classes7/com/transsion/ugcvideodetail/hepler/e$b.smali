.class public final Lcom/transsion/ugcvideodetail/hepler/e$b;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ugcvideodetail/hepler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method public constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/hepler/e$b;->k(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final j()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-static {v1}, Llj/a;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-static {v1}, Llj/a;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private static final k(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p0, p4, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->i(Lcom/transsion/ugcvideodetail/hepler/e;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/e;->l(Lcom/transsion/ugcvideodetail/hepler/e;Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "key_subj_comment_dot"

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p3, Lcom/transsion/ugcvideodetail/hepler/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, p0, p4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 19
    .line 20
    invoke-direct {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-array v0, v0, [Ljava/lang/Integer;

    .line 28
    .line 29
    aput-object p1, v0, v1

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 36
    .line 37
    invoke-direct {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 41
    .line 42
    .line 43
    const/high16 p1, 0x40400000    # 3.0f

    .line 44
    .line 45
    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-float p1, p1

    .line 50
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 62
    .line 63
    const/high16 v3, 0x40000000    # 2.0f

    .line 64
    .line 65
    invoke-direct {p1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    .line 70
    .line 71
    const/4 p1, -0x1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v5, 0x3

    .line 85
    new-array v5, v5, [Ljava/lang/Integer;

    .line 86
    .line 87
    aput-object v3, v5, v1

    .line 88
    .line 89
    aput-object v4, v5, v0

    .line 90
    .line 91
    const/4 v0, 0x2

    .line 92
    aput-object p1, v5, v0

    .line 93
    .line 94
    invoke-virtual {v2, v5}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-object v2
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p2, v1, :cond_4

    .line 15
    .line 16
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->i(Lcom/transsion/ugcvideodetail/hepler/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v1, 0x0

    .line 53
    :goto_0
    const/16 v2, 0x63

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    if-le v1, v2, :cond_1

    .line 58
    .line 59
    const-string v1, "99+"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    if-gtz v1, :cond_2

    .line 63
    .line 64
    move-object v1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :goto_1
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_3

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v4, "("

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ")"

    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :goto_3
    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/f;

    .line 136
    .line 137
    invoke-direct {v1, p2, p1, v0, p0}, Lcom/transsion/ugcvideodetail/hepler/f;-><init>(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e$b;->j()Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
