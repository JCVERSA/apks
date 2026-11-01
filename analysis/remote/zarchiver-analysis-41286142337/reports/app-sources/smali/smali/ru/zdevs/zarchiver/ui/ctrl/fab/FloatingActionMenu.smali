.class public Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;
    }
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public final a:Landroid/animation/AnimatorSet;

.field public final b:Landroid/animation/AnimatorSet;

.field public c:Lb1/a;

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/view/animation/OvershootInterpolator;

.field public i:Landroid/view/animation/AnticipateInterpolator;

.field public j:Z

.field public k:Landroid/widget/ImageView;

.field public l:Z

.field public m:Z

.field public n:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;

.field public o:Landroid/view/View$OnClickListener;

.field public p:I

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 6
    .line 7
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    .line 11
    .line 12
    new-instance p2, Landroid/animation/AnimatorSet;

    .line 13
    .line 14
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 18
    .line 19
    iput v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f:I

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->p:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const v1, 0x7f0d0001

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const v2, 0x7f0600dd

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v0, v2}, Lz0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->g:Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    .line 55
    .line 56
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->h:Landroid/view/animation/OvershootInterpolator;

    .line 60
    .line 61
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->i:Landroid/view/animation/AnticipateInterpolator;

    .line 67
    .line 68
    new-instance v0, Lb1/a;

    .line 69
    .line 70
    invoke-direct {v0, p1, p2}, Lb1/a;-><init>(Landroid/content/Context;Z)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 74
    .line 75
    new-instance p1, Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 85
    .line 86
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->g:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 92
    .line 93
    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    const/high16 p1, 0x3f800000    # 1.0f

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->a(F)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 11

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "rotation"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 16
    .line 17
    new-array v4, v1, [F

    .line 18
    .line 19
    fill-array-data v4, :array_1

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 27
    .line 28
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    .line 29
    .line 30
    const/high16 v5, 0x3f800000    # 1.0f

    .line 31
    .line 32
    cmpg-float v6, p1, v5

    .line 33
    .line 34
    if-gez v6, :cond_0

    .line 35
    .line 36
    new-array v6, v1, [Landroid/animation/Animator;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    aput-object v2, v6, v7

    .line 40
    .line 41
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 42
    .line 43
    new-array v8, v1, [F

    .line 44
    .line 45
    aput p1, v8, v7

    .line 46
    .line 47
    const/4 v9, 0x1

    .line 48
    aput v5, v8, v9

    .line 49
    .line 50
    const-string v10, "alpha"

    .line 51
    .line 52
    invoke-static {v2, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    aput-object v2, v6, v9

    .line 57
    .line 58
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 59
    .line 60
    .line 61
    new-array v2, v1, [Landroid/animation/Animator;

    .line 62
    .line 63
    aput-object v0, v2, v7

    .line 64
    .line 65
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 66
    .line 67
    new-array v1, v1, [F

    .line 68
    .line 69
    aput v5, v1, v7

    .line 70
    .line 71
    aput p1, v1, v9

    .line 72
    .line 73
    invoke-static {v0, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    aput-object p1, v2, v9

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 87
    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->h:Landroid/view/animation/OvershootInterpolator;

    .line 90
    .line 91
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->i:Landroid/view/animation/AnticipateInterpolator;

    .line 95
    .line 96
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v0, 0x12c

    .line 100
    .line 101
    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    nop

    .line 109
    :array_0
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 8
    .line 9
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v2, p1}, Lb1/a;->f(ZZ)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iput-boolean v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->l:Z

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return p1
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

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
    iget v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->p:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    .line 14
    iput v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->p:I

    .line 15
    .line 16
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    .line 18
    iput v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->q:I

    .line 19
    .line 20
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 21
    .line 22
    iput v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->r:I

    .line 23
    .line 24
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 25
    .line 26
    iput v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->s:I

    .line 27
    .line 28
    :cond_0
    iget v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->p:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    iget v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->q:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/2addr v2, v1

    .line 44
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    .line 46
    iget v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->r:I

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v1

    .line 53
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 54
    .line 55
    iget v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->s:I

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v1

    .line 62
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    return-object p1
.end method

.method public final e(ZZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->b:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->a:Landroid/animation/AnimatorSet;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    iput p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f:I

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_1
    if-ltz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    instance-of v4, v3, Lb1/a;

    .line 50
    .line 51
    if-eqz v4, :cond_4

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/16 v5, 0x8

    .line 58
    .line 59
    if-eq v4, v5, :cond_4

    .line 60
    .line 61
    check-cast v3, Lb1/a;

    .line 62
    .line 63
    iget-boolean v4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 64
    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    new-instance v4, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;

    .line 68
    .line 69
    invoke-direct {v4, p0, p1, v3, p2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$a;-><init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;ZLb1/a;Z)V

    .line 70
    .line 71
    .line 72
    int-to-long v5, v2

    .line 73
    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v2, v2, 0x32

    .line 77
    .line 78
    :cond_3
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 79
    .line 80
    if-eq v3, v4, :cond_4

    .line 81
    .line 82
    invoke-virtual {v3, p1, v1}, Lb1/a;->f(ZZ)V

    .line 83
    .line 84
    .line 85
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    new-instance p2, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;

    .line 89
    .line 90
    invoke-direct {p2, p0, p1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$b;-><init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;Z)V

    .line 91
    .line 92
    .line 93
    int-to-long v0, v2

    .line 94
    invoke-virtual {p0, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final f(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 14
    .line 15
    iget-boolean v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, v3, p1}, Lb1/a;->f(ZZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getOnMenuButtonClick()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuState(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->o:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 19
    .line 20
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    iget p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d:I

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    add-int/2addr p2, p1

    .line 10
    sub-int/2addr p5, p3

    .line 11
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sub-int/2addr p5, p1

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sub-int/2addr p5, p1

    .line 23
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    div-int/lit8 p1, p1, 0x2

    .line 30
    .line 31
    sub-int p1, p2, p1

    .line 32
    .line 33
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    add-int/2addr p4, p1

    .line 40
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v0, p5

    .line 47
    invoke-virtual {p3, p1, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    div-int/lit8 p1, p1, 0x2

    .line 57
    .line 58
    sub-int p1, p2, p1

    .line 59
    .line 60
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    div-int/lit8 p3, p3, 0x2

    .line 67
    .line 68
    add-int/2addr p3, p5

    .line 69
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 70
    .line 71
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    .line 73
    .line 74
    move-result p4

    .line 75
    div-int/lit8 p4, p4, 0x2

    .line 76
    .line 77
    sub-int/2addr p3, p4

    .line 78
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 79
    .line 80
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v0, p1

    .line 85
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v1, p3

    .line 92
    invoke-virtual {p4, p1, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    add-int/2addr p1, p5

    .line 102
    add-int/lit8 p1, p1, 0x5

    .line 103
    .line 104
    iget p3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 105
    .line 106
    add-int/lit8 p3, p3, -0x1

    .line 107
    .line 108
    :goto_0
    if-ltz p3, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    iget-object p5, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 115
    .line 116
    if-ne p4, p5, :cond_0

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_0
    check-cast p4, Lb1/a;

    .line 120
    .line 121
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 122
    .line 123
    .line 124
    move-result p5

    .line 125
    const/16 v0, 0x8

    .line 126
    .line 127
    if-ne p5, v0, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 131
    .line 132
    .line 133
    move-result p5

    .line 134
    div-int/lit8 p5, p5, 0x2

    .line 135
    .line 136
    sub-int p5, p2, p5

    .line 137
    .line 138
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    sub-int/2addr p1, v0

    .line 143
    add-int/lit8 p1, p1, -0x5

    .line 144
    .line 145
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 146
    .line 147
    if-eq p4, v0, :cond_2

    .line 148
    .line 149
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    add-int/2addr v0, p5

    .line 154
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int/2addr v1, p1

    .line 159
    invoke-virtual {p4, p5, p1, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 160
    .line 161
    .line 162
    iget p5, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f:I

    .line 163
    .line 164
    if-nez p5, :cond_2

    .line 165
    .line 166
    const/4 p5, 0x0

    .line 167
    invoke-virtual {p4, p5, p5}, Lb1/a;->f(ZZ)V

    .line 168
    .line 169
    .line 170
    :cond_2
    add-int/lit8 p1, p1, -0x5

    .line 171
    .line 172
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_3
    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    .line 1
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v2, p1

    .line 7
    move v4, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 16
    .line 17
    if-ge v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 32
    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v6, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    move-object v3, p0

    .line 39
    move-object v4, v2

    .line 40
    move v5, p1

    .line 41
    move v7, p2

    .line 42
    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d:I

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d:I

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v1

    .line 62
    move v1, v2

    .line 63
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 67
    .line 68
    mul-int/lit8 v2, v2, 0x5

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/2addr v0, v2

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v2, v0

    .line 80
    add-int/2addr v2, v1

    .line 81
    int-to-double v0, v2

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 83
    .line 84
    .line 85
    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 91
    .line 92
    .line 93
    mul-double v2, v2, v0

    .line 94
    .line 95
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 99
    .line 100
    .line 101
    add-double/2addr v2, v0

    .line 102
    double-to-int v0, v2

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 108
    .line 109
    const/4 v2, -0x1

    .line 110
    if-ne v1, v2, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d:I

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    add-int/2addr v1, p1

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    add-int/2addr p1, v1

    .line 133
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    .line 139
    if-ne v1, v2, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->m:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuState(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    return v0

    .line 26
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public setAnimated(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->m:Z

    return-void
.end method

.method public setMenuButtonImageResource(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d0001

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0, p1}, Lz0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->g:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    if-eq v0, p1, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->g:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setMenuState(Z)V
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    invoke-virtual {p0, p1, v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V

    return-void
.end method

.method public setOnMenuButtonClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    invoke-virtual {v0, p1}, Lb1/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuToggleListener(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->n:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;

    return-void
.end method

.method public setTransparent(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p1, 0x3f333333    # 0.7f

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->a(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
