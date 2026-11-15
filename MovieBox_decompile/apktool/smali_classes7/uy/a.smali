.class public Luy/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/animation/ValueAnimator;

.field private c:I

.field private d:Landroid/view/animation/Interpolator;

.field private e:Landroid/animation/Animator$AnimatorListener;

.field private f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Luy/a;->a:Ljava/util/List;

    .line 10
    .line 11
    const/16 v0, 0x96

    .line 12
    .line 13
    iput v0, p0, Luy/a;->c:I

    .line 14
    .line 15
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Luy/a;->d:Landroid/view/animation/Interpolator;

    .line 21
    .line 22
    new-instance v0, Luy/a$a;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Luy/a$a;-><init>(Luy/a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Luy/a;->e:Landroid/animation/Animator$AnimatorListener;

    .line 28
    .line 29
    new-instance v0, Luy/a$b;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Luy/a$b;-><init>(Luy/a;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Luy/a;->f:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 35
    .line 36
    return-void
.end method

.method static synthetic a(Luy/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Luy/a;->d(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Luy/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Luy/a;->b:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Luy/a;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Luy/a;->e(IFI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Luy/a;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private e(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Luy/a;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public static f(Ljava/util/List;I)Lyy/a;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lyy/a;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lyy/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lyy/a;-><init>()V

    .line 21
    .line 22
    .line 23
    if-gez p1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lyy/a;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    sub-int/2addr p1, v1

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lyy/a;

    .line 51
    .line 52
    :goto_0
    iget v1, p0, Lyy/a;->a:I

    .line 53
    .line 54
    invoke-virtual {p0}, Lyy/a;->b()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    mul-int/2addr v2, p1

    .line 59
    add-int/2addr v1, v2

    .line 60
    iput v1, v0, Lyy/a;->a:I

    .line 61
    .line 62
    iget v1, p0, Lyy/a;->b:I

    .line 63
    .line 64
    iput v1, v0, Lyy/a;->b:I

    .line 65
    .line 66
    iget v1, p0, Lyy/a;->c:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lyy/a;->b()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    mul-int/2addr v2, p1

    .line 73
    add-int/2addr v1, v2

    .line 74
    iput v1, v0, Lyy/a;->c:I

    .line 75
    .line 76
    iget v1, p0, Lyy/a;->d:I

    .line 77
    .line 78
    iput v1, v0, Lyy/a;->d:I

    .line 79
    .line 80
    iget v1, p0, Lyy/a;->e:I

    .line 81
    .line 82
    invoke-virtual {p0}, Lyy/a;->b()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    mul-int/2addr v2, p1

    .line 87
    add-int/2addr v1, v2

    .line 88
    iput v1, v0, Lyy/a;->e:I

    .line 89
    .line 90
    iget v1, p0, Lyy/a;->f:I

    .line 91
    .line 92
    iput v1, v0, Lyy/a;->f:I

    .line 93
    .line 94
    iget v1, p0, Lyy/a;->g:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lyy/a;->b()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    mul-int/2addr p1, v2

    .line 101
    add-int/2addr v1, p1

    .line 102
    iput v1, v0, Lyy/a;->g:I

    .line 103
    .line 104
    iget p0, p0, Lyy/a;->h:I

    .line 105
    .line 106
    iput p0, v0, Lyy/a;->h:I

    .line 107
    .line 108
    return-object v0
.end method
