.class public final Lru/zdevs/zarchiver/ui/editor/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/editor/d$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public final f:I

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:I

.field public final j:I

.field public final k:Landroid/graphics/Rect;

.field public l:I

.field public m:I

.field public n:F

.field public final o:Landroid/animation/ValueAnimator;

.field public final p:Lru/zdevs/zarchiver/ui/editor/d$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/d$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ui/editor/d$a;-><init>(Lru/zdevs/zarchiver/ui/editor/d;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/d;->p:Lru/zdevs/zarchiver/ui/editor/d$a;

    .line 10
    .line 11
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/d;->a:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->b:I

    .line 26
    .line 27
    const v2, 0x7f060014

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v2}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->c:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    const v2, 0x7f060012

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->d:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iput v3, p0, Lru/zdevs/zarchiver/ui/editor/d;->e:I

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    iput v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->f:I

    .line 56
    .line 57
    const v2, 0x7f060015

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v2}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->g:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    const v2, 0x7f060013

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v2}, Lz0/c;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->h:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->i:I

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->j:I

    .line 86
    .line 87
    new-instance v1, Landroid/graphics/Rect;

    .line 88
    .line 89
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->k:Landroid/graphics/Rect;

    .line 93
    .line 94
    const/4 v1, 0x1

    .line 95
    iput v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    iput v3, p0, Lru/zdevs/zarchiver/ui/editor/d;->l:I

    .line 99
    .line 100
    const/4 v4, 0x2

    .line 101
    new-array v4, v4, [I

    .line 102
    .line 103
    aput v3, v4, v3

    .line 104
    .line 105
    aput v2, v4, v1

    .line 106
    .line 107
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->o:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    const-wide/16 v2, 0xfa

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    const-wide/16 v1, 0x5dc

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/d;->p:Lru/zdevs/zarchiver/ui/editor/d$a;

    .line 3
    .line 4
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/d;->a:Landroid/view/View;

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 12
    .line 13
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/d;->m:I

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne p1, v3, :cond_2

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/d;->o:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0x5dc

    .line 30
    .line 31
    invoke-virtual {v2, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/d;->l:I

    .line 12
    .line 13
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/d;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
