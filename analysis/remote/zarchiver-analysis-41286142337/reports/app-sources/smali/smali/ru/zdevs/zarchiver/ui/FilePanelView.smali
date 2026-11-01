.class public Lru/zdevs/zarchiver/ui/FilePanelView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/FilePanelView$g;,
        Lru/zdevs/zarchiver/ui/FilePanelView$h;,
        Lru/zdevs/zarchiver/ui/FilePanelView$f;
    }
.end annotation


# static fields
.field public static final synthetic D:I


# instance fields
.field public final A:Lru/zdevs/zarchiver/ui/FilePanelView$b;

.field public final B:Lru/zdevs/zarchiver/ui/FilePanelView$d;

.field public final C:Lru/zdevs/zarchiver/ui/FilePanelView$e;

.field public a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/support/constraint/ConstraintLayout;

.field public e:Landroid/view/View;

.field public final f:Landroid/widget/TextView;

.field public g:[Landroid/view/View;

.field public final h:[Landroid/widget/AbsListView;

.field public i:Landroid/view/animation/LayoutAnimationController;

.field public j:Z

.field public k:Z

.field public l:Landroid/graphics/Rect;

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:I

.field public final s:Landroid/view/animation/DecelerateInterpolator;

.field public t:Landroid/widget/AdapterView$OnItemClickListener;

.field public u:Landroid/widget/AdapterView$OnItemLongClickListener;

.field public v:Ld0/h$a;

.field public w:Lru/zdevs/zarchiver/ui/FilePanelView$g;

.field public x:Lru/zdevs/zarchiver/ui/FilePanelView$f;

.field public y:Lru/zdevs/zarchiver/ui/FilePanelView$h;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->j:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 11
    .line 12
    new-instance v2, Lru/zdevs/zarchiver/ui/FilePanelView$b;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lru/zdevs/zarchiver/ui/FilePanelView$b;-><init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->A:Lru/zdevs/zarchiver/ui/FilePanelView$b;

    .line 18
    .line 19
    new-instance v2, Lru/zdevs/zarchiver/ui/FilePanelView$d;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lru/zdevs/zarchiver/ui/FilePanelView$d;-><init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->B:Lru/zdevs/zarchiver/ui/FilePanelView$d;

    .line 25
    .line 26
    new-instance v2, Lru/zdevs/zarchiver/ui/FilePanelView$e;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lru/zdevs/zarchiver/ui/FilePanelView$e;-><init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->C:Lru/zdevs/zarchiver/ui/FilePanelView$e;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    new-array v3, v2, [Landroid/widget/AbsListView;

    .line 35
    .line 36
    iput-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    iput v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 40
    .line 41
    const/16 v4, 0x100

    .line 42
    .line 43
    iput v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 44
    .line 45
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iput v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->b:I

    .line 54
    .line 55
    const/16 v4, 0xc

    .line 56
    .line 57
    invoke-static {v4}, Lz0/c;->a(I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->c:I

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 64
    .line 65
    .line 66
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    .line 67
    .line 68
    const/high16 v5, 0x40000000    # 2.0f

    .line 69
    .line 70
    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 74
    .line 75
    new-instance v4, Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-direct {v4, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->f:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    const/4 v5, -0x2

    .line 85
    invoke-direct {p2, v1, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 95
    .line 96
    .line 97
    const/16 p2, 0x8

    .line 98
    .line 99
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Landroid/view/View;

    .line 106
    .line 107
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Landroid/view/View;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private setListAnimation(Landroid/widget/AbsListView;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->i:Landroid/view/animation/LayoutAnimationController;

    .line 11
    .line 12
    const v1, 0x3dcccccd    # 0.1f

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 19
    .line 20
    const/high16 v3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v3, 0x64

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Landroid/view/animation/LayoutAnimationController;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->i:Landroid/view/animation/LayoutAnimationController;

    .line 36
    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 38
    .line 39
    const/high16 v4, 0x40000000    # 2.0f

    .line 40
    .line 41
    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    move-object v0, p1

    .line 48
    check-cast v0, Le1/c;

    .line 49
    .line 50
    invoke-interface {v0}, Le1/c;->getMaxVisibleItemCount()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-ge v3, v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    sub-int v2, v0, v2

    .line 65
    .line 66
    int-to-float v2, v2

    .line 67
    const v3, 0x3e0f5c29    # 0.14f

    .line 68
    .line 69
    .line 70
    mul-float v2, v2, v3

    .line 71
    .line 72
    int-to-float v0, v0

    .line 73
    div-float/2addr v2, v0

    .line 74
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->i:Landroid/view/animation/LayoutAnimationController;

    .line 75
    .line 76
    add-float/2addr v2, v1

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->i:Landroid/view/animation/LayoutAnimationController;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    new-instance v0, Lru/zdevs/zarchiver/ui/FilePanelView$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView$c;-><init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->B:Lru/zdevs/zarchiver/ui/FilePanelView$d;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 12
    .line 13
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 14
    .line 15
    aget-object v2, v3, v2

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v4, 0x190

    .line 29
    .line 30
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    aget-object v2, v3, v0

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 47
    .line 48
    .line 49
    aget-object v0, v3, v0

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final b(I)Ld0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ld0/h;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    return p1
.end method

.method public final d(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v4, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    mul-int/lit8 v3, p1, -0x1

    .line 24
    .line 25
    move-object v4, v0

    .line 26
    check-cast v4, Le1/c;

    .line 27
    .line 28
    invoke-interface {v4}, Le1/c;->getMaxVisibleItemCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    mul-int v4, v4, v3

    .line 33
    .line 34
    add-int/2addr v4, v2

    .line 35
    :goto_1
    const/4 v2, 0x3

    .line 36
    if-eq p1, v2, :cond_5

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-le v4, p1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    if-gez v4, :cond_4

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v1, v4

    .line 49
    goto :goto_3

    .line 50
    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->l:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 50
    .line 51
    aget-object v2, p1, v3

    .line 52
    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 60
    .line 61
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const/4 v1, 0x1

    .line 67
    aget-object p1, p1, v1

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->l:Landroid/graphics/Rect;

    .line 72
    .line 73
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 74
    .line 75
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 80
    .line 81
    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-object v0
.end method

.method public final e(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    neg-int v1, v1

    .line 8
    add-int/2addr v1, p1

    .line 9
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr v1, p1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final f(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    neg-int v1, v1

    .line 8
    add-int/2addr v1, p1

    .line 9
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr v1, p1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 17
    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final g(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListFocusItem()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    invoke-virtual {v2, v0, p1}, Ld0/h;->j(II)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getClickPoint()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 4
    .line 5
    aget-object v0, v1, v0

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast v0, Le1/c;

    .line 11
    .line 12
    invoke-interface {v0}, Le1/c;->getClickRawX()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 17
    .line 18
    aget-object v1, v1, v3

    .line 19
    .line 20
    check-cast v1, Le1/c;

    .line 21
    .line 22
    invoke-interface {v1}, Le1/c;->getClickRawY()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    const/4 v1, -0x1

    .line 29
    :goto_0
    if-eq v0, v2, :cond_2

    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    .line 35
    .line 36
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method public getListAdapter()Ld0/h;
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    move-result-object v0

    return-object v0
.end method

.method public getListFocusItem()I
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const v1, 0x7f070075

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    instance-of v1, v1, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0

    .line 43
    :cond_0
    const/4 v0, -0x1

    .line 44
    return v0
.end method

.method public getListMaxVisibleItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast v0, Le1/c;

    .line 10
    .line 11
    invoke-interface {v0}, Le1/c;->getMaxVisibleItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getListPosition()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    move-result v0

    return v0
.end method

.method public getListSize()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 4
    .line 5
    aget-object v0, v1, v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Point;

    .line 10
    .line 11
    iget v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 12
    .line 13
    aget-object v2, v1, v2

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 20
    .line 21
    aget-object v3, v1, v3

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v2, v3

    .line 28
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 29
    .line 30
    aget-object v1, v1, v3

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method public final h(ILd0/h;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    if-nez p2, :cond_1

    .line 4
    .line 5
    aget-object p1, v0, p1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    aget-object v1, v0, p1

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    instance-of v1, v1, Landroid/widget/GridView;

    .line 19
    .line 20
    invoke-virtual {p2}, Ld0/h;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    if-eqz p4, :cond_2

    .line 27
    .line 28
    aget-object p3, v0, p1

    .line 29
    .line 30
    invoke-direct {p0, p3}, Lru/zdevs/zarchiver/ui/FilePanelView;->setListAnimation(Landroid/widget/AbsListView;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    aget-object p1, v0, p1

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    invoke-virtual {p2}, Ld0/h;->e()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    new-instance v1, Le1/a;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Le1/a;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    aput-object v1, v0, p1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    new-instance v1, Le1/b;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-direct {v1, v2}, Le1/b;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    aput-object v1, v0, p1

    .line 67
    .line 68
    :goto_0
    if-eqz p3, :cond_5

    .line 69
    .line 70
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 71
    .line 72
    :cond_5
    if-eqz p4, :cond_6

    .line 73
    .line 74
    aget-object p3, v0, p1

    .line 75
    .line 76
    invoke-direct {p0, p3}, Lru/zdevs/zarchiver/ui/FilePanelView;->setListAnimation(Landroid/widget/AbsListView;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    aget-object p3, v0, p1

    .line 80
    .line 81
    invoke-virtual {p3, p2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 p2, p1, 0x1

    .line 85
    .line 86
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 87
    .line 88
    .line 89
    aget-object p3, v0, p1

    .line 90
    .line 91
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    const/4 v1, -0x1

    .line 94
    invoke-direct {p4, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p3, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    aget-object p2, v0, p1

    .line 101
    .line 102
    invoke-static {p2}, Lz0/e;->l(Landroid/widget/AbsListView;)V

    .line 103
    .line 104
    .line 105
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 p3, 0x14

    .line 108
    .line 109
    if-lt p2, p3, :cond_7

    .line 110
    .line 111
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->l:Landroid/graphics/Rect;

    .line 112
    .line 113
    if-eqz p2, :cond_7

    .line 114
    .line 115
    aget-object p3, v0, p1

    .line 116
    .line 117
    iget p4, p2, Landroid/graphics/Rect;->left:I

    .line 118
    .line 119
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 120
    .line 121
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 122
    .line 123
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 124
    .line 125
    invoke-virtual {p3, p4, v1, v2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 126
    .line 127
    .line 128
    :cond_7
    aget-object p2, v0, p1

    .line 129
    .line 130
    const/4 p3, 0x0

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 132
    .line 133
    .line 134
    aget-object p2, v0, p1

    .line 135
    .line 136
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    .line 137
    .line 138
    .line 139
    iget-boolean p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->j:Z

    .line 140
    .line 141
    const/4 p4, 0x1

    .line 142
    if-eqz p2, :cond_8

    .line 143
    .line 144
    aget-object p2, v0, p1

    .line 145
    .line 146
    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_8
    aget-object p2, v0, p1

    .line 151
    .line 152
    invoke-virtual {p2, p4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 153
    .line 154
    .line 155
    :goto_1
    iget-boolean p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 156
    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    aget-object p2, v0, p1

    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 162
    .line 163
    .line 164
    aget-object p2, v0, p1

    .line 165
    .line 166
    invoke-virtual {p2, p4}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 167
    .line 168
    .line 169
    :cond_9
    aget-object p2, v0, p1

    .line 170
    .line 171
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->u:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 172
    .line 173
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 174
    .line 175
    .line 176
    aget-object p1, v0, p1

    .line 177
    .line 178
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 179
    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, p4}, Lru/zdevs/zarchiver/ui/FilePanelView;->setPageChangeEnable(Z)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final i(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gtz v2, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    aget-object v3, v0, v1

    .line 17
    .line 18
    if-eqz v3, :cond_3

    .line 19
    .line 20
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 21
    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v4, -0x1

    .line 27
    :goto_0
    mul-int v4, v4, v2

    .line 28
    .line 29
    add-int/2addr v4, p1

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 36
    .line 37
    .line 38
    :cond_3
    const/4 v3, 0x1

    .line 39
    aget-object v0, v0, v3

    .line 40
    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 44
    .line 45
    if-nez v4, :cond_4

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    const/4 v4, 0x0

    .line 50
    :goto_1
    mul-int v4, v4, v2

    .line 51
    .line 52
    add-int/2addr v4, p1

    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    sub-int/2addr v4, v5

    .line 58
    invoke-virtual {v0, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 59
    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    int-to-float p1, p1

    .line 70
    int-to-float v0, v2

    .line 71
    div-float/2addr p1, v0

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    .line 74
    div-float/2addr p1, v0

    .line 75
    const/high16 v0, 0x3f000000    # 0.5f

    .line 76
    .line 77
    cmpl-float v2, p1, v0

    .line 78
    .line 79
    if-lez v2, :cond_6

    .line 80
    .line 81
    const/high16 p1, 0x3f000000    # 0.5f

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    const/4 v2, 0x0

    .line 85
    cmpg-float v4, p1, v2

    .line 86
    .line 87
    if-gez v4, :cond_7

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    :cond_7
    :goto_2
    iget v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 91
    .line 92
    if-nez v2, :cond_8

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    :cond_8
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 96
    .line 97
    aget-object v2, v2, v1

    .line 98
    .line 99
    add-float/2addr v0, p1

    .line 100
    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 101
    .line 102
    .line 103
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 104
    .line 105
    aget-object v1, v2, v1

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 111
    .line 112
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 113
    .line 114
    aget-object v0, v0, v1

    .line 115
    .line 116
    const/high16 v1, 0x3f800000    # 1.0f

    .line 117
    .line 118
    sub-float/2addr v1, p1

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 123
    .line 124
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 125
    .line 126
    aget-object p1, p1, v0

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 129
    .line 130
    .line 131
    :cond_9
    if-eqz p2, :cond_a

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 134
    .line 135
    .line 136
    :cond_a
    return-void
.end method

.method public final j(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x15

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Lru/zdevs/zarchiver/b;Lq0/g;II)V
    .locals 9

    .line 1
    iget v0, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1, v1, v0}, Lru/zdevs/zarchiver/b;->b(Landroid/content/Context;Ld0/h;)Ld0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->v:Ld0/h$a;

    .line 16
    .line 17
    iput-object v2, v1, Ld0/h;->n:Ld0/h$a;

    .line 18
    .line 19
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ld0/h;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-le v2, v5, :cond_0

    .line 34
    .line 35
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    const/16 v5, 0x20

    .line 43
    .line 44
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    const/16 v5, 0x80

    .line 51
    .line 52
    invoke-static {p4, v5}, La0/c;->K(II)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v5, 0x0

    .line 61
    :goto_1
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 62
    .line 63
    iget v7, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 64
    .line 65
    if-lez p3, :cond_4

    .line 66
    .line 67
    if-ne v1, v0, :cond_4

    .line 68
    .line 69
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    aget-object v0, v6, v7

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 76
    .line 77
    .line 78
    :cond_2
    if-eqz v5, :cond_3

    .line 79
    .line 80
    aget-object v0, v6, v7

    .line 81
    .line 82
    invoke-direct {p0, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setListAnimation(Landroid/widget/AbsListView;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    sub-int v0, p3, v0

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-le v0, v3, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, v7, p3}, Lru/zdevs/zarchiver/ui/FilePanelView;->j(II)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 105
    .line 106
    const/16 v8, 0x100

    .line 107
    .line 108
    invoke-static {v0, v8}, La0/c;->K(II)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {v1, v0}, Ld0/h;->m(Z)V

    .line 113
    .line 114
    .line 115
    if-eqz p2, :cond_5

    .line 116
    .line 117
    iput-object p2, v1, Ld0/h;->m:Lq0/g;

    .line 118
    .line 119
    :cond_5
    invoke-virtual {p0, v7, v1, v4, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->h(ILd0/h;ZZ)V

    .line 120
    .line 121
    .line 122
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 123
    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    aget-object v0, v6, v7

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 129
    .line 130
    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 134
    .line 135
    .line 136
    :cond_6
    if-lez p3, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0, v7, p3}, Lru/zdevs/zarchiver/ui/FilePanelView;->j(II)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_2
    const/16 p3, 0x400

    .line 142
    .line 143
    invoke-static {p4, p3}, La0/c;->K(II)Z

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    if-eqz p3, :cond_8

    .line 148
    .line 149
    iput v7, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 150
    .line 151
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->a()V

    .line 152
    .line 153
    .line 154
    :cond_8
    iget p3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 155
    .line 156
    if-ne v7, p3, :cond_9

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_9
    const/4 v3, 0x0

    .line 160
    :goto_3
    if-eqz v3, :cond_a

    .line 161
    .line 162
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->e()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setMessage(I)V

    .line 167
    .line 168
    .line 169
    :cond_a
    if-eqz p2, :cond_b

    .line 170
    .line 171
    iget-boolean p1, p2, Lq0/g;->g:Z

    .line 172
    .line 173
    if-eqz p1, :cond_b

    .line 174
    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-virtual {v1, p1, p2}, Ld0/h;->n(II)V

    .line 186
    .line 187
    .line 188
    :cond_b
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, -0x1

    .line 13
    const/16 v4, 0x16

    .line 14
    .line 15
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 16
    .line 17
    if-ge v0, v4, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 20
    .line 21
    aget-object v0, v5, v0

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_3

    .line 30
    .line 31
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 32
    .line 33
    aget-object v0, v5, v0

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-gtz v0, :cond_2

    .line 40
    .line 41
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 42
    .line 43
    aget-object v0, v5, v0

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 54
    .line 55
    aget-object v4, v5, v4

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v0, v4, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 65
    .line 66
    aget-object v0, v5, v0

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    :goto_1
    const/16 v4, 0x20

    .line 80
    .line 81
    if-nez v0, :cond_5

    .line 82
    .line 83
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 84
    .line 85
    if-nez v0, :cond_4

    .line 86
    .line 87
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 88
    .line 89
    if-nez v0, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 93
    .line 94
    or-int/2addr v0, v4

    .line 95
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    :goto_2
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 99
    .line 100
    and-int/lit8 v0, v0, -0x21

    .line 101
    .line 102
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 103
    .line 104
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/16 v5, 0x10

    .line 109
    .line 110
    if-eqz v0, :cond_10

    .line 111
    .line 112
    if-eq v0, v2, :cond_f

    .line 113
    .line 114
    const/4 v6, 0x2

    .line 115
    const/4 v7, 0x3

    .line 116
    if-eq v0, v6, :cond_8

    .line 117
    .line 118
    if-eq v0, v7, :cond_f

    .line 119
    .line 120
    const/4 v3, 0x6

    .line 121
    if-eq v0, v3, :cond_6

    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 134
    .line 135
    if-ne v3, v4, :cond_e

    .line 136
    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    const/4 v1, 0x1

    .line 140
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_8
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 149
    .line 150
    if-ne v0, v3, :cond_9

    .line 151
    .line 152
    return v1

    .line 153
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-gez v0, :cond_a

    .line 158
    .line 159
    return v1

    .line 160
    :cond_a
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 161
    .line 162
    invoke-static {v1, v7}, La0/c;->L(II)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_b

    .line 167
    .line 168
    return v2

    .line 169
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->o:F

    .line 174
    .line 175
    sub-float/2addr v1, v3

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    iget v8, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->q:F

    .line 181
    .line 182
    sub-float/2addr v3, v8

    .line 183
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    const/high16 v9, 0x40000000    # 2.0f

    .line 192
    .line 193
    div-float/2addr v8, v9

    .line 194
    iget v10, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->b:I

    .line 195
    .line 196
    cmpl-float v8, v8, v3

    .line 197
    .line 198
    if-lez v8, :cond_c

    .line 199
    .line 200
    int-to-float v8, v10

    .line 201
    cmpl-float v11, v1, v8

    .line 202
    .line 203
    if-lez v11, :cond_c

    .line 204
    .line 205
    iget v11, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 206
    .line 207
    invoke-static {v11, v4}, La0/c;->K(II)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_c

    .line 212
    .line 213
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->o:F

    .line 214
    .line 215
    add-float/2addr p1, v8

    .line 216
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->n:F

    .line 217
    .line 218
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 219
    .line 220
    or-int/2addr p1, v6

    .line 221
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 222
    .line 223
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->x:Lru/zdevs/zarchiver/ui/FilePanelView$f;

    .line 224
    .line 225
    if-eqz p1, :cond_e

    .line 226
    .line 227
    invoke-interface {p1}, Lru/zdevs/zarchiver/ui/FilePanelView$f;->g()V

    .line 228
    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    div-float v6, v3, v9

    .line 236
    .line 237
    cmpg-float v4, v4, v6

    .line 238
    .line 239
    if-gez v4, :cond_e

    .line 240
    .line 241
    int-to-float v4, v10

    .line 242
    cmpl-float v3, v3, v4

    .line 243
    .line 244
    if-lez v3, :cond_e

    .line 245
    .line 246
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    cmpg-float v1, v1, v4

    .line 251
    .line 252
    if-gez v1, :cond_e

    .line 253
    .line 254
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 255
    .line 256
    invoke-static {v1, v5}, La0/c;->K(II)Z

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_e

    .line 261
    .line 262
    iget v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->q:F

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    cmpg-float p1, v1, p1

    .line 269
    .line 270
    if-gez p1, :cond_d

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_d
    neg-int v10, v10

    .line 274
    :goto_4
    int-to-float p1, v10

    .line 275
    add-float/2addr v1, p1

    .line 276
    iput v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->p:F

    .line 277
    .line 278
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 279
    .line 280
    or-int/2addr p1, v2

    .line 281
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 282
    .line 283
    :cond_e
    :goto_5
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 284
    .line 285
    invoke-static {p1, v7}, La0/c;->L(II)Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    return p1

    .line 290
    :cond_f
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 291
    .line 292
    and-int/lit8 p1, p1, -0x4

    .line 293
    .line 294
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 295
    .line 296
    iput v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 297
    .line 298
    return v1

    .line 299
    :cond_10
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 300
    .line 301
    and-int/lit8 v0, v0, -0x4

    .line 302
    .line 303
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-ltz v0, :cond_11

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iput v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->o:F

    .line 322
    .line 323
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->q:F

    .line 328
    .line 329
    :cond_11
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 330
    .line 331
    if-eqz p1, :cond_12

    .line 332
    .line 333
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->q:F

    .line 334
    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iget v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->c:I

    .line 340
    .line 341
    sub-int/2addr v0, v2

    .line 342
    int-to-float v0, v0

    .line 343
    cmpl-float p1, p1, v0

    .line 344
    .line 345
    if-ltz p1, :cond_12

    .line 346
    .line 347
    iput v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 348
    .line 349
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 350
    .line 351
    and-int/lit8 p1, p1, -0x21

    .line 352
    .line 353
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 354
    .line 355
    return v1

    .line 356
    :cond_12
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 357
    .line 358
    invoke-static {p1, v4}, La0/c;->K(II)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_14

    .line 363
    .line 364
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 365
    .line 366
    if-eqz p1, :cond_13

    .line 367
    .line 368
    invoke-virtual {p0, v1, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->f(IZ)V

    .line 369
    .line 370
    .line 371
    :cond_13
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 372
    .line 373
    if-eqz p1, :cond_14

    .line 374
    .line 375
    invoke-virtual {p0, v1, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->e(IZ)V

    .line 376
    .line 377
    .line 378
    :cond_14
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 379
    .line 380
    invoke-static {p1, v5}, La0/c;->K(II)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_15

    .line 385
    .line 386
    invoke-virtual {p0, v1, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->i(IZ)V

    .line 387
    .line 388
    .line 389
    :cond_15
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    aget-object p3, p1, p2

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 18
    .line 19
    .line 20
    move-result p5

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int v1, p3, v1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    sub-int/2addr v1, v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int v2, p4, v2

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-int/2addr v2, v3

    .line 47
    aget-object v3, p1, p2

    .line 48
    .line 49
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 50
    .line 51
    mul-int v5, v4, v1

    .line 52
    .line 53
    sub-int v5, p5, v5

    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    rsub-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    mul-int v4, v4, v1

    .line 59
    .line 60
    add-int/2addr v4, p5

    .line 61
    add-int v7, v0, v2

    .line 62
    .line 63
    invoke-virtual {v3, v5, v0, v4, v7}, Landroid/view/View;->layout(IIII)V

    .line 64
    .line 65
    .line 66
    aget-object v3, p1, v6

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 71
    .line 72
    rsub-int/lit8 v5, v4, 0x1

    .line 73
    .line 74
    mul-int v5, v5, v1

    .line 75
    .line 76
    add-int/2addr v5, p5

    .line 77
    rsub-int/lit8 v4, v4, 0x2

    .line 78
    .line 79
    mul-int v4, v4, v1

    .line 80
    .line 81
    add-int/2addr v4, p5

    .line 82
    invoke-virtual {v3, v5, v0, v4, v7}, Landroid/view/View;->layout(IIII)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->f:Landroid/widget/TextView;

    .line 86
    .line 87
    div-int/lit8 v0, p4, 0x2

    .line 88
    .line 89
    invoke-virtual {p5, p2, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 90
    .line 91
    .line 92
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 93
    .line 94
    const/16 p5, 0x10

    .line 95
    .line 96
    if-eqz p4, :cond_2

    .line 97
    .line 98
    div-int/lit8 v0, p3, 0x2

    .line 99
    .line 100
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    div-int/lit8 v3, v3, 0x2

    .line 105
    .line 106
    sub-int v3, v0, v3

    .line 107
    .line 108
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    neg-int v4, v4

    .line 115
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 116
    .line 117
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    div-int/lit8 v5, v5, 0x2

    .line 122
    .line 123
    add-int/2addr v5, v0

    .line 124
    invoke-virtual {p4, v3, v4, v5, p2}, Landroid/view/View;->layout(IIII)V

    .line 125
    .line 126
    .line 127
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    if-lt p4, p5, :cond_2

    .line 130
    .line 131
    aget-object p4, p1, p2

    .line 132
    .line 133
    invoke-virtual {p4}, Landroid/widget/AbsListView;->getFitsSystemWindows()Z

    .line 134
    .line 135
    .line 136
    move-result p4

    .line 137
    if-eqz p4, :cond_2

    .line 138
    .line 139
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 140
    .line 141
    invoke-virtual {p4}, Landroid/view/View;->getPaddingLeft()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    aget-object v3, p1, p2

    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 152
    .line 153
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {p4, v0, v3, v4, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 158
    .line 159
    .line 160
    :cond_2
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 161
    .line 162
    if-eqz p4, :cond_3

    .line 163
    .line 164
    div-int/lit8 p3, p3, 0x2

    .line 165
    .line 166
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    div-int/lit8 v0, v0, 0x2

    .line 171
    .line 172
    sub-int v0, p3, v0

    .line 173
    .line 174
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    neg-int v3, v3

    .line 181
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    div-int/lit8 v4, v4, 0x2

    .line 188
    .line 189
    add-int/2addr v4, p3

    .line 190
    invoke-virtual {p4, v0, v3, v4, p2}, Landroid/view/View;->layout(IIII)V

    .line 191
    .line 192
    .line 193
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .line 195
    if-lt p3, p5, :cond_3

    .line 196
    .line 197
    aget-object p3, p1, p2

    .line 198
    .line 199
    invoke-virtual {p3}, Landroid/widget/AbsListView;->getFitsSystemWindows()Z

    .line 200
    .line 201
    .line 202
    move-result p3

    .line 203
    if-eqz p3, :cond_3

    .line 204
    .line 205
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 206
    .line 207
    const/16 p4, 0x32

    .line 208
    .line 209
    invoke-static {p4}, Lz0/c;->a(I)I

    .line 210
    .line 211
    .line 212
    move-result p4

    .line 213
    aget-object p1, p1, p2

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    add-int/2addr p1, p4

    .line 220
    invoke-virtual {p3, p2, p1, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    .line 222
    .line 223
    :cond_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 224
    .line 225
    if-eqz p1, :cond_5

    .line 226
    .line 227
    const/16 p1, 0xc

    .line 228
    .line 229
    invoke-static {p1}, Lz0/c;->a(I)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    sub-int/2addr v2, p1

    .line 234
    div-int/lit8 p3, p1, 0x2

    .line 235
    .line 236
    sub-int/2addr v2, p3

    .line 237
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->l:Landroid/graphics/Rect;

    .line 238
    .line 239
    if-nez p3, :cond_4

    .line 240
    .line 241
    const/4 p3, 0x0

    .line 242
    goto :goto_0

    .line 243
    :cond_4
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 244
    .line 245
    :goto_0
    sub-int/2addr v2, p3

    .line 246
    div-int/lit8 v1, v1, 0x2

    .line 247
    .line 248
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 249
    .line 250
    aget-object p2, p3, p2

    .line 251
    .line 252
    mul-int/lit8 p3, p1, 0x5

    .line 253
    .line 254
    div-int/lit8 p3, p3, 0x4

    .line 255
    .line 256
    sub-int p4, v1, p3

    .line 257
    .line 258
    div-int/lit8 p5, p1, 0x4

    .line 259
    .line 260
    sub-int v0, v1, p5

    .line 261
    .line 262
    add-int/2addr p1, v2

    .line 263
    invoke-virtual {p2, p4, v2, v0, p1}, Landroid/view/View;->layout(IIII)V

    .line 264
    .line 265
    .line 266
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 267
    .line 268
    aget-object p2, p2, v6

    .line 269
    .line 270
    add-int/2addr p5, v1

    .line 271
    add-int/2addr v1, p3

    .line 272
    invoke-virtual {p2, p5, v2, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 273
    .line 274
    .line 275
    :cond_5
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    aget-object v0, p1, p2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    const/high16 v1, 0x40000000    # 2.0f

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    sub-int/2addr v2, v3

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sub-int/2addr v2, v3

    .line 64
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    aget-object p2, p1, p2

    .line 69
    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 71
    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    aget-object p1, p1, p2

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->f:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    div-int/lit8 p1, p1, 0x3

    .line 105
    .line 106
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->r:I

    .line 107
    .line 108
    const/16 p1, 0x48

    .line 109
    .line 110
    invoke-static {p1}, Lz0/c;->a(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iget p2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->r:I

    .line 115
    .line 116
    if-le p2, p1, :cond_4

    .line 117
    .line 118
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->r:I

    .line 119
    .line 120
    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1f

    .line 7
    .line 8
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 9
    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    invoke-static {v0, v2}, La0/c;->L(II)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_a

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1d

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    const/4 v4, 0x2

    .line 29
    if-eq v0, v2, :cond_12

    .line 30
    .line 31
    if-eq v0, v4, :cond_5

    .line 32
    .line 33
    if-eq v0, v3, :cond_12

    .line 34
    .line 35
    const/4 v3, 0x5

    .line 36
    if-eq v0, v3, :cond_3

    .line 37
    .line 38
    const/4 v3, 0x6

    .line 39
    if-eq v0, v3, :cond_1

    .line 40
    .line 41
    goto/16 :goto_9

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    iget v4, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 52
    .line 53
    if-ne v3, v4, :cond_1e

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 63
    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-gez v0, :cond_4

    .line 71
    .line 72
    return v1

    .line 73
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 78
    .line 79
    goto/16 :goto_9

    .line 80
    .line 81
    :cond_5
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-gez v0, :cond_6

    .line 88
    .line 89
    return v1

    .line 90
    :cond_6
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 91
    .line 92
    invoke-static {v3, v4}, La0/c;->K(II)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_c

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->n:F

    .line 103
    .line 104
    sub-float/2addr p1, v0

    .line 105
    const v0, 0x3f4ccccd    # 0.8f

    .line 106
    .line 107
    .line 108
    mul-float p1, p1, v0

    .line 109
    .line 110
    float-to-int p1, p1

    .line 111
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-gt p1, v0, :cond_9

    .line 120
    .line 121
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 122
    .line 123
    if-eqz v0, :cond_7

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 138
    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_8

    .line 146
    .line 147
    invoke-virtual {p0, v1, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->e(IZ)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_0
    invoke-virtual {p0, p1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->f(IZ)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_9

    .line 159
    .line 160
    :cond_9
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p0, v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->f(IZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_a
    const/4 v0, 0x0

    .line 171
    :goto_1
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 172
    .line 173
    if-eqz v3, :cond_1e

    .line 174
    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    add-int/2addr v3, v0

    .line 180
    if-gt p1, v3, :cond_1e

    .line 181
    .line 182
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_b

    .line 189
    .line 190
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    :cond_b
    invoke-virtual {p0, p1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->e(IZ)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_9

    .line 199
    .line 200
    :cond_c
    iget v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 201
    .line 202
    invoke-static {v3, v2}, La0/c;->K(II)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_11

    .line 207
    .line 208
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->p:F

    .line 213
    .line 214
    sub-float/2addr p1, v0

    .line 215
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 216
    .line 217
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->C:Lru/zdevs/zarchiver/ui/FilePanelView$e;

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    if-nez v0, :cond_d

    .line 221
    .line 222
    cmpg-float v5, p1, v4

    .line 223
    .line 224
    if-ltz v5, :cond_e

    .line 225
    .line 226
    :cond_d
    if-ne v0, v2, :cond_f

    .line 227
    .line 228
    cmpl-float v0, p1, v4

    .line 229
    .line 230
    if-lez v0, :cond_f

    .line 231
    .line 232
    :cond_e
    float-to-int p1, p1

    .line 233
    invoke-virtual {p0, p1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->i(IZ)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 237
    .line 238
    aget-object p1, p1, v1

    .line 239
    .line 240
    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 241
    .line 242
    .line 243
    :cond_f
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 244
    .line 245
    if-eqz p1, :cond_1e

    .line 246
    .line 247
    aget-object p1, p1, v1

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eqz p1, :cond_10

    .line 254
    .line 255
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 256
    .line 257
    aget-object p1, p1, v1

    .line 258
    .line 259
    const-wide/16 v4, 0x258

    .line 260
    .line 261
    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 265
    .line 266
    aget-object p1, p1, v1

    .line 267
    .line 268
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    :cond_10
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 272
    .line 273
    aget-object p1, p1, v2

    .line 274
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 276
    .line 277
    .line 278
    move-result p1

    .line 279
    if-eqz p1, :cond_1e

    .line 280
    .line 281
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 282
    .line 283
    aget-object p1, p1, v2

    .line 284
    .line 285
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_9

    .line 289
    .line 290
    :cond_11
    return v1

    .line 291
    :cond_12
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 292
    .line 293
    invoke-static {p1, v2}, La0/c;->K(II)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_16

    .line 298
    .line 299
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 300
    .line 301
    aget-object v5, p1, v1

    .line 302
    .line 303
    if-eqz v5, :cond_16

    .line 304
    .line 305
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_16

    .line 310
    .line 311
    aget-object v5, p1, v1

    .line 312
    .line 313
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 314
    .line 315
    .line 316
    move-result v5

    .line 317
    aget-object v6, p1, v1

    .line 318
    .line 319
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    if-eq v5, v6, :cond_16

    .line 324
    .line 325
    if-ne v0, v3, :cond_13

    .line 326
    .line 327
    goto :goto_3

    .line 328
    :cond_13
    iget v5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 329
    .line 330
    if-nez v5, :cond_14

    .line 331
    .line 332
    aget-object v5, p1, v1

    .line 333
    .line 334
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    iget v6, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->r:I

    .line 339
    .line 340
    neg-int v6, v6

    .line 341
    if-ge v5, v6, :cond_14

    .line 342
    .line 343
    iput v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 344
    .line 345
    goto :goto_2

    .line 346
    :cond_14
    iget v5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 347
    .line 348
    if-ne v5, v2, :cond_15

    .line 349
    .line 350
    aget-object v5, p1, v1

    .line 351
    .line 352
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    aget-object p1, p1, v1

    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    neg-int p1, p1

    .line 363
    iget v6, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->r:I

    .line 364
    .line 365
    add-int/2addr p1, v6

    .line 366
    if-le v5, p1, :cond_15

    .line 367
    .line 368
    iput v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 369
    .line 370
    :goto_2
    const/4 p1, 0x1

    .line 371
    goto :goto_4

    .line 372
    :cond_15
    :goto_3
    const/4 p1, 0x0

    .line 373
    :goto_4
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->a()V

    .line 374
    .line 375
    .line 376
    if-eqz p1, :cond_16

    .line 377
    .line 378
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->y:Lru/zdevs/zarchiver/ui/FilePanelView$h;

    .line 379
    .line 380
    if-eqz p1, :cond_16

    .line 381
    .line 382
    iget v5, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 383
    .line 384
    check-cast p1, Lru/zdevs/zarchiver/ZArchiver;

    .line 385
    .line 386
    invoke-virtual {p1, v5}, Lru/zdevs/zarchiver/ZArchiver;->C(I)V

    .line 387
    .line 388
    .line 389
    :cond_16
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 390
    .line 391
    invoke-static {p1, v4}, La0/c;->K(II)Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    if-eqz p1, :cond_1c

    .line 396
    .line 397
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 398
    .line 399
    if-eqz p1, :cond_19

    .line 400
    .line 401
    if-eq v0, v3, :cond_19

    .line 402
    .line 403
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->w:Lru/zdevs/zarchiver/ui/FilePanelView$g;

    .line 404
    .line 405
    if-eqz v0, :cond_18

    .line 406
    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 412
    .line 413
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    neg-int v0, v0

    .line 418
    div-int/lit8 v0, v0, 0x4

    .line 419
    .line 420
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 421
    .line 422
    if-eqz v3, :cond_17

    .line 423
    .line 424
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    goto :goto_5

    .line 429
    :cond_17
    const/4 v3, 0x0

    .line 430
    :goto_5
    add-int/2addr v0, v3

    .line 431
    if-lt p1, v0, :cond_18

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_18
    const/4 v2, 0x0

    .line 435
    :goto_6
    if-nez v2, :cond_1a

    .line 436
    .line 437
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 438
    .line 439
    const/16 v0, 0x8

    .line 440
    .line 441
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 442
    .line 443
    .line 444
    goto :goto_7

    .line 445
    :cond_19
    const/4 v2, 0x0

    .line 446
    :cond_1a
    :goto_7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 447
    .line 448
    if-eqz p1, :cond_1b

    .line 449
    .line 450
    new-instance p1, Lru/zdevs/zarchiver/ui/FilePanelView$a;

    .line 451
    .line 452
    invoke-direct {p1, p0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView$a;-><init>(Lru/zdevs/zarchiver/ui/FilePanelView;Z)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->A:Lru/zdevs/zarchiver/ui/FilePanelView$b;

    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 458
    .line 459
    .line 460
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 461
    .line 462
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 471
    .line 472
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    sub-int/2addr v2, v3

    .line 477
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 482
    .line 483
    .line 484
    const-wide/16 v2, 0xc8

    .line 485
    .line 486
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 487
    .line 488
    .line 489
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->s:Landroid/view/animation/DecelerateInterpolator;

    .line 490
    .line 491
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 495
    .line 496
    .line 497
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 498
    .line 499
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 500
    .line 501
    .line 502
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 503
    .line 504
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 505
    .line 506
    .line 507
    goto :goto_8

    .line 508
    :cond_1b
    if-eqz v2, :cond_1c

    .line 509
    .line 510
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->w:Lru/zdevs/zarchiver/ui/FilePanelView$g;

    .line 511
    .line 512
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 513
    .line 514
    invoke-interface {p1, v0}, Lru/zdevs/zarchiver/ui/FilePanelView$g;->h(I)V

    .line 515
    .line 516
    .line 517
    :cond_1c
    :goto_8
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 518
    .line 519
    and-int/lit8 p1, p1, -0x4

    .line 520
    .line 521
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 522
    .line 523
    const/4 p1, -0x1

    .line 524
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 525
    .line 526
    return v1

    .line 527
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 528
    .line 529
    .line 530
    move-result p1

    .line 531
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->m:I

    .line 532
    .line 533
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 534
    .line 535
    and-int/lit8 p1, p1, -0x4

    .line 536
    .line 537
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 538
    .line 539
    :cond_1e
    :goto_9
    return v2

    .line 540
    :cond_1f
    :goto_a
    return v1
.end method

.method public setCacheEnabled(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->j:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    aget-object p1, v2, v1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    aget-object p1, v2, v0

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    aget-object p1, v2, v1

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 29
    .line 30
    .line 31
    :cond_2
    aget-object p1, v2, v0

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_0
    return-void
.end method

.method public setCircleView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setExtendView(Landroid/support/constraint/ConstraintLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setExtendVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 5
    .line 6
    aget-object v0, v1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setMessage(I)V
    .locals 4

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 4
    .line 5
    aget-object v0, v1, v0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-eqz v3, :cond_1

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v1}, Lt0/b;->g(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-le v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->f:Landroid/widget/TextView;

    .line 30
    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/16 p1, 0x8

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public setOnExtendShowListener(Lru/zdevs/zarchiver/ui/FilePanelView$f;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->x:Lru/zdevs/zarchiver/ui/FilePanelView$f;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->t:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 5
    .line 6
    aget-object v0, v1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->u:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 5
    .line 6
    aget-object v0, v1, v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    aget-object v0, v1, v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public setOnItemSelectChanged(Ld0/h$a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->v:Ld0/h$a;

    .line 2
    .line 3
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    aget-object v2, v0, v1

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    aget-object v1, v0, v1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ld0/h;

    .line 23
    .line 24
    iput-object p1, v1, Ld0/h;->n:Ld0/h$a;

    .line 25
    .line 26
    :cond_0
    const/4 v1, 0x1

    .line 27
    aget-object v2, v0, v1

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    aget-object v0, v0, v1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ld0/h;

    .line 44
    .line 45
    iput-object p1, v0, Ld0/h;->n:Ld0/h$a;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public setOnListRefreshListener(Lru/zdevs/zarchiver/ui/FilePanelView$g;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->w:Lru/zdevs/zarchiver/ui/FilePanelView$g;

    return-void
.end method

.method public setOnPageChangedListener(Lru/zdevs/zarchiver/ui/FilePanelView$h;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->y:Lru/zdevs/zarchiver/ui/FilePanelView$h;

    return-void
.end method

.method public setPageChangeEnable(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 5
    .line 6
    if-eqz v2, :cond_2

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 16
    .line 17
    or-int/lit8 p1, p1, 0x10

    .line 18
    .line 19
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 20
    .line 21
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v0, 0x7f060008

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v3, v2, [Landroid/view/View;

    .line 39
    .line 40
    iput-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 41
    .line 42
    :goto_0
    if-ge v1, v2, :cond_1

    .line 43
    .line 44
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 45
    .line 46
    new-instance v4, Landroid/view/View;

    .line 47
    .line 48
    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    aput-object v4, v3, v1

    .line 52
    .line 53
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 54
    .line 55
    aget-object v3, v3, v1

    .line 56
    .line 57
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 61
    .line 62
    aget-object v3, v3, v1

    .line 63
    .line 64
    const/16 v4, 0x8

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->g:[Landroid/view/View;

    .line 70
    .line 71
    aget-object v3, v3, v1

    .line 72
    .line 73
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-nez p1, :cond_3

    .line 84
    .line 85
    iget p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 86
    .line 87
    and-int/lit8 p1, p1, -0x11

    .line 88
    .line 89
    iput p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 90
    .line 91
    :cond_3
    :goto_1
    return-void
.end method

.method public setSelectByIcon(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 4
    .line 5
    or-int/lit16 v0, v0, 0x100

    .line 6
    .line 7
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 11
    .line 12
    and-int/lit16 v0, v0, -0x101

    .line 13
    .line 14
    iput v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 18
    .line 19
    aget-object v0, v1, v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ld0/h;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ld0/h;->m(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    aget-object v0, v1, v0

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ld0/h;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ld0/h;->m(Z)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method
