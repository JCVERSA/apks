.class public final Lzm/e$b;
.super Lqj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field private final d:Z

.field private final e:Z

.field final synthetic f:Lzm/e;


# direct methods
.method public constructor <init>(Lzm/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;ZZ)V
    .locals 1

    .line 1
    const-string v0, "tabList"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lzm/e$b;->f:Lzm/e;

    .line 7
    .line 8
    invoke-direct {p0}, Lqj/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lzm/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 12
    .line 13
    iput-object p3, p0, Lzm/e$b;->c:Ljava/util/List;

    .line 14
    .line 15
    iput-boolean p4, p0, Lzm/e$b;->d:Z

    .line 16
    .line 17
    iput-boolean p5, p0, Lzm/e$b;->e:Z

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic i(ILzm/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lzm/e$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lzm/e$b;->k(ILzm/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lzm/e$b;Landroid/view/View;)V

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

.method private static final k(ILzm/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lzm/e$b;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p4, 0x1

    .line 2
    if-ne p0, p4, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Lzm/e;->l(Lzm/e;)Z

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
    invoke-static {p1, v0}, Lzm/e;->n(Lzm/e;Z)V

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
    iget-object p1, p3, Lzm/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

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
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzm/e$b;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lzm/e$b;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lzm/e$b;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lzm/e$b;->c:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x40400000    # 3.0f

    .line 16
    .line 17
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    const/high16 v2, 0x40000000    # 2.0f

    .line 36
    .line 37
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x3

    .line 49
    new-array v2, v2, [Ljava/lang/Integer;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    aput-object v1, v2, v3

    .line 53
    .line 54
    aput-object v1, v2, p1

    .line 55
    .line 56
    const/4 p1, 0x2

    .line 57
    aput-object v1, v2, p1

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 3

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
    iget-object p1, p0, Lzm/e$b;->f:Lzm/e;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne p2, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lzm/e;->l(Lzm/e;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lzm/e$b;->c:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "get(...)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lzm/f;

    .line 40
    .line 41
    invoke-direct {v1, p2, p1, v0, p0}, Lzm/f;-><init>(ILzm/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lzm/e$b;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
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
    invoke-direct {p0}, Lzm/e$b;->j()Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
