.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.super Landroid/widget/FrameLayout;
.source "source.java"

# interfaces
.implements Lvy/a;
.implements Luy/b$a;


# instance fields
.field private a:Landroid/widget/HorizontalScrollView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lxy/c;

.field private e:Lxy/a;

.field private f:Luy/b;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/List;

.field private r:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x3f000000    # 0.5f

    .line 5
    .line 6
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 10
    .line 11
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    .line 14
    .line 15
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 21
    .line 22
    new-instance p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$a;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    .line 28
    .line 29
    new-instance p1, Luy/b;

    .line 30
    .line 31
    invoke-direct {p1}, Luy/b;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Luy/b;->k(Luy/b$a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method static synthetic a(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lxy/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Luy/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout_no_scroll:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout:I

    .line 32
    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->scroll_view:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/widget/HorizontalScrollView;

    .line 44
    .line 45
    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 46
    .line 47
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    .line 58
    .line 59
    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 63
    .line 64
    .line 65
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    .line 74
    .line 75
    iget-boolean v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    .line 76
    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Luy/b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    const/4 v3, -0x1

    .line 10
    if-ge v2, v0, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v4, v5, v2}, Lxy/a;->c(Landroid/content/Context;I)Lxy/d;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    instance-of v5, v4, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    check-cast v4, Landroid/view/View;

    .line 27
    .line 28
    iget-boolean v5, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 33
    .line 34
    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {v3, v6, v2}, Lxy/a;->d(Landroid/content/Context;I)F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 51
    .line 52
    const/4 v6, -0x2

    .line 53
    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lxy/a;->b(Landroid/content/Context;)Lxy/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 77
    .line 78
    instance-of v0, v0, Landroid/view/View;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    .line 84
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->c:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 90
    .line 91
    check-cast v2, Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Luy/b;->g()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    new-instance v2, Lyy/a;

    .line 16
    .line 17
    invoke-direct {v2}, Lyy/a;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iput v4, v2, Lyy/a;->a:I

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iput v4, v2, Lyy/a;->b:I

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iput v4, v2, Lyy/a;->c:I

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iput v4, v2, Lyy/a;->d:I

    .line 51
    .line 52
    instance-of v5, v3, Lxy/b;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    check-cast v3, Lxy/b;

    .line 57
    .line 58
    invoke-interface {v3}, Lxy/b;->getContentLeft()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iput v4, v2, Lyy/a;->e:I

    .line 63
    .line 64
    invoke-interface {v3}, Lxy/b;->getContentTop()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    iput v4, v2, Lyy/a;->f:I

    .line 69
    .line 70
    invoke-interface {v3}, Lxy/b;->getContentRight()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iput v4, v2, Lyy/a;->g:I

    .line 75
    .line 76
    invoke-interface {v3}, Lxy/b;->getContentBottom()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    iput v3, v2, Lyy/a;->h:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_0
    iget v3, v2, Lyy/a;->a:I

    .line 84
    .line 85
    iput v3, v2, Lyy/a;->e:I

    .line 86
    .line 87
    iget v3, v2, Lyy/a;->b:I

    .line 88
    .line 89
    iput v3, v2, Lyy/a;->f:I

    .line 90
    .line 91
    iget v3, v2, Lyy/a;->c:I

    .line 92
    .line 93
    iput v3, v2, Lyy/a;->g:I

    .line 94
    .line 95
    iput v4, v2, Lyy/a;->h:I

    .line 96
    .line 97
    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Lxy/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeftPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getPagerIndicator()Lxy/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPagerTitleView(I)Lxy/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lxy/d;

    .line 12
    .line 13
    return-object p1
.end method

.method public getRightPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getScrollPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 2
    .line 3
    return v0
.end method

.method public getTitleContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAdjustMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnablePivotScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public isIndicatorOnTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReselectWhenLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSkimOver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lxy/a;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDeselected(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lxy/d;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lxy/d;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lxy/d;->onDeselected(II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    .line 1
    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lxy/d;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lxy/d;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3, p4}, Lxy/d;->onEnter(IIFZ)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1, p2}, Lxy/c;->onPositionDataProvide(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 25
    .line 26
    invoke-virtual {p1}, Luy/b;->f()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 33
    .line 34
    invoke-virtual {p1}, Luy/b;->e()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageSelected(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 42
    .line 43
    invoke-virtual {p1}, Luy/b;->e()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 p2, 0x0

    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageScrolled(IFI)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lxy/d;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lxy/d;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3, p4}, Lxy/d;->onLeave(IIFZ)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Luy/b;->h(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lxy/c;->onPageScrollStateChanged(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Luy/b;->i(IFI)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2, p3}, Lxy/c;->onPageScrolled(IFI)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-lez p3, :cond_1

    .line 28
    .line 29
    if-ltz p1, :cond_1

    .line 30
    .line 31
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-ge p1, p3, :cond_1

    .line 38
    .line 39
    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    .line 40
    .line 41
    if-eqz p3, :cond_1

    .line 42
    .line 43
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    add-int/lit8 p3, p3, -0x1

    .line 50
    .line 51
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    check-cast p3, Lyy/a;

    .line 76
    .line 77
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lyy/a;

    .line 84
    .line 85
    invoke-virtual {p3}, Lyy/a;->a()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    int-to-float p3, p3

    .line 90
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    int-to-float v0, v0

    .line 97
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 98
    .line 99
    mul-float/2addr v0, v1

    .line 100
    sub-float/2addr p3, v0

    .line 101
    invoke-virtual {p1}, Lyy/a;->a()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    int-to-float p1, p1

    .line 106
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    int-to-float v0, v0

    .line 113
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 114
    .line 115
    mul-float/2addr v0, v1

    .line 116
    sub-float/2addr p1, v0

    .line 117
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 118
    .line 119
    sub-float/2addr p1, p3

    .line 120
    mul-float/2addr p1, p2

    .line 121
    add-float/2addr p3, p1

    .line 122
    float-to-int p1, p3

    .line 123
    const/4 p2, 0x0

    .line 124
    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 125
    .line 126
    .line 127
    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Luy/b;->j(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d:Lxy/c;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lxy/c;->onPageSelected(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lxy/d;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Lxy/d;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lxy/d;->onSelected(II)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    .line 20
    .line 21
    if-nez p2, :cond_7

    .line 22
    .line 23
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    .line 24
    .line 25
    if-nez p2, :cond_7

    .line 26
    .line 27
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 28
    .line 29
    if-eqz p2, :cond_7

    .line 30
    .line 31
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-lez p2, :cond_7

    .line 38
    .line 39
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    add-int/lit8 p2, p2, -0x1

    .line 46
    .line 47
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->q:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lyy/a;

    .line 58
    .line 59
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1}, Lyy/a;->a()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    int-to-float p2, p2

    .line 76
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 77
    .line 78
    mul-float/2addr p2, v1

    .line 79
    sub-float/2addr p1, p2

    .line 80
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 85
    .line 86
    float-to-int p1, p1

    .line 87
    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 92
    .line 93
    float-to-int p1, p1

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 99
    .line 100
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    iget v1, p1, Lyy/a;->a:I

    .line 105
    .line 106
    if-le p2, v1, :cond_5

    .line 107
    .line 108
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 109
    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr p2, v1

    .line 135
    iget p1, p1, Lyy/a;->c:I

    .line 136
    .line 137
    if-ge p2, p1, :cond_7

    .line 138
    .line 139
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 140
    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    sub-int/2addr p1, v1

    .line 150
    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_6
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->a:Landroid/widget/HorizontalScrollView;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    sub-int/2addr p1, v1

    .line 161
    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 162
    .line 163
    .line 164
    :cond_7
    :goto_0
    return-void
.end method

.method public setAdapter(Lxy/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lxy/a;->g(Landroid/database/DataSetObserver;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->r:Landroid/database/DataSetObserver;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lxy/a;->f(Landroid/database/DataSetObserver;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 23
    .line 24
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lxy/a;->a()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Luy/b;->m(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->b:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->e:Lxy/a;

    .line 38
    .line 39
    invoke-virtual {p1}, Lxy/a;->e()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Luy/b;->m(I)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->d()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method

.method public setAdjustMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnablePivotScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setReselectWhenLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setScrollPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->i:F

    .line 2
    .line 3
    return-void
.end method

.method public setSkimOver(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->o:Z

    .line 2
    .line 3
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->f:Luy/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Luy/b;->l(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->j:Z

    .line 2
    .line 3
    return-void
.end method
