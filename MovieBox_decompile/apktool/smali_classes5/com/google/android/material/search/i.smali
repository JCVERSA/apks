.class Lcom/google/android/material/search/i;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/i$g;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private d:Landroid/animation/Animator;

.field private e:Landroid/animation/Animator;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/animation/Animator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/google/android/material/search/i;->h:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 30
    .line 31
    return-void
.end method

.method private static synthetic A(Lcb/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    .line 7
    sub-float p2, v0, p2

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcb/i;->e0(F)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static synthetic B(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic C(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/i;->t(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->o(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x2

    .line 15
    new-array p2, p2, [Landroid/animation/Animator;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    aput-object v1, p2, p3

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    aput-object p1, p2, p3

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/google/android/material/search/i$c;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lcom/google/android/material/search/i$c;-><init>(Lcom/google/android/material/search/i;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    .line 51
    .line 52
    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    .line 57
    .line 58
    const-wide/16 p1, 0x0

    .line 59
    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/search/i;->B(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/search/i;->C(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcb/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/search/i;->A(Lcb/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/google/android/material/search/i;Lcom/google/android/material/search/i$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->k(Lcom/google/android/material/search/i$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/google/android/material/search/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/i;->f:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic f(Lcom/google/android/material/search/i;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/google/android/material/search/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/i;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method private k(Lcom/google/android/material/search/i$g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/material/search/SearchBar$b;

    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/google/android/material/search/i$g;->a(Lcom/google/android/material/search/SearchBar$b;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private l(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-wide/16 v0, 0xfa

    .line 6
    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->o(J)Lcom/google/android/material/internal/g;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance p3, Lcom/google/android/material/search/i$f;

    .line 12
    .line 13
    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/i$f;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/g;->d(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/g;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/material/internal/g;->g()Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private m(Landroid/view/View;)Landroid/animation/Animator;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v3, v2, [Landroid/view/View;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object p1, v3, v4

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lqa/a;->a:Landroid/animation/TimeInterpolator;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v5, p0, Lcom/google/android/material/search/i;->h:Z

    .line 30
    .line 31
    const-wide/16 v6, 0x0

    .line 32
    .line 33
    const-wide/16 v8, 0xfa

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    move-wide v10, v8

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-wide v10, v6

    .line 40
    :goto_0
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    .line 43
    iget-boolean v5, p0, Lcom/google/android/material/search/i;->h:Z

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    const-wide/16 v6, 0x1f4

    .line 48
    .line 49
    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 50
    .line 51
    .line 52
    new-array v5, v0, [F

    .line 53
    .line 54
    fill-array-data v5, :array_1

    .line 55
    .line 56
    .line 57
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-array v6, v2, [Landroid/view/View;

    .line 62
    .line 63
    aput-object p1, v6, v4

    .line 64
    .line 65
    invoke-static {v6}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    .line 78
    const-wide/16 v6, 0x2ee

    .line 79
    .line 80
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 81
    .line 82
    .line 83
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .line 87
    .line 88
    new-array v0, v0, [Landroid/animation/Animator;

    .line 89
    .line 90
    aput-object v1, v0, v4

    .line 91
    .line 92
    aput-object v5, v0, v2

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 95
    .line 96
    .line 97
    return-object p1

    .line 98
    nop

    .line 99
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private n(Landroid/view/View;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/f0;->p(Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    instance-of v2, p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    check-cast p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ge v2, v3, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    .line 30
    .line 31
    if-nez v4, :cond_1

    .line 32
    .line 33
    :cond_0
    if-eqz v0, :cond_2

    .line 34
    .line 35
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    .line 36
    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-object v1
.end method

.method private o(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-wide/16 v0, 0x12c

    .line 6
    .line 7
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/g;->o(J)Lcom/google/android/material/internal/g;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    new-instance p3, Lcom/google/android/material/search/i$d;

    .line 12
    .line 13
    invoke-direct {p3, p0, p1}, Lcom/google/android/material/search/i$d;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/g;->d(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/g;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/material/internal/g;->i()Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method private p(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/internal/g;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/g;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/i;->q(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->m(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/g;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p3, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/g;->n(I)Lcom/google/android/material/internal/g;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p2}, Lcom/google/android/material/search/i;->n(Landroid/view/View;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/g;->c(Ljava/util/Collection;)Lcom/google/android/material/internal/g;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method private q(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcb/i;->m(Landroid/content/Context;)Lcb/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcb/i;->a0(F)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {v0, p1}, Lcb/i;->c0(F)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/google/android/material/search/f;

    .line 24
    .line 25
    invoke-direct {p1, v0, p2}, Lcom/google/android/material/search/f;-><init>(Lcb/i;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method private r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/material/internal/f0;->i(Landroid/view/View;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method private s(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/google/android/material/internal/q;->e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v1, 0x64

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    sget-object p1, Lqa/a;->a:Landroid/animation/TimeInterpolator;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private t(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->r(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [F

    .line 7
    .line 8
    fill-array-data v0, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Lcom/google/android/material/internal/q;->e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/android/material/search/g;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/google/android/material/search/g;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 28
    .line 29
    .line 30
    const-wide/16 p1, 0x4b

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lqa/a;->a:Landroid/animation/TimeInterpolator;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private u(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Landroid/view/View;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lqa/a;->a:Landroid/animation/TimeInterpolator;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0xfa

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private v(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0xfa

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->w(Landroid/widget/TextView;)Landroid/animation/Animator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 16
    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/google/android/material/search/i;->u(Landroid/view/View;)Landroid/animation/Animator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v0
.end method

.method private w(Landroid/widget/TextView;)Landroid/animation/Animator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Landroid/view/View;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p1, v1, v2

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/material/internal/q;->f([Landroid/view/View;)Lcom/google/android/material/internal/q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lqa/a;->a:Landroid/animation/TimeInterpolator;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0xfa

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method D(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method E(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method F(Lcom/google/android/material/search/SearchBar$b;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/search/i;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method H(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/search/i;->y()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/search/i;->g:Z

    .line 16
    .line 17
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/i;->l(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/material/search/i;->s(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 p3, 0x2

    .line 31
    new-array p3, p3, [Landroid/animation/Animator;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    aput-object p2, p3, v2

    .line 35
    .line 36
    aput-object p1, p3, v0

    .line 37
    .line 38
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/google/android/material/search/i$e;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Lcom/google/android/material/search/i$e;-><init>(Lcom/google/android/material/search/i;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/animation/AnimatorListenerAdapter;

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    if-eqz p4, :cond_2

    .line 72
    .line 73
    const-wide/16 p1, 0x0

    .line 74
    .line 75
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 82
    .line 83
    return-void
.end method

.method I(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/search/i;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/search/i;->i:Landroid/animation/Animator;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/material/search/i;->f:Z

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/google/android/material/search/e;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    move v6, p4

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/e;-><init>(Lcom/google/android/material/search/i;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method J(Lcom/google/android/material/search/SearchBar;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/search/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/material/search/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/material/search/i;->k(Lcom/google/android/material/search/i$g;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->f(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/search/i;->v(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Lcom/google/android/material/search/i$a;

    .line 26
    .line 27
    invoke-direct {v3, p0}, Lcom/google/android/material/search/i$a;-><init>(Lcom/google/android/material/search/i;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/google/android/material/search/i;->d:Landroid/animation/Animator;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 42
    .line 43
    .line 44
    :cond_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v1}, Lcom/google/android/material/search/i;->m(Landroid/view/View;)Landroid/animation/Animator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lcom/google/android/material/search/i;->e:Landroid/animation/Animator;

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/material/search/i$b;

    .line 60
    .line 61
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/search/i$b;-><init>(Lcom/google/android/material/search/i;Landroid/view/View;Landroid/animation/Animator;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method K(Lcom/google/android/material/search/SearchBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->d:Landroid/animation/Animator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/i;->e:Landroid/animation/Animator;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method h(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->c:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method i(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->b:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method j(Lcom/google/android/material/search/SearchBar$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/search/i;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/i;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/i;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/search/i;->h:Z

    .line 2
    .line 3
    return v0
.end method
