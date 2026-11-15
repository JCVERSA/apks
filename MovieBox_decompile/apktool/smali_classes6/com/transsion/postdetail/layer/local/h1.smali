.class public final Lcom/transsion/postdetail/layer/local/h1;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private c:J

.field private d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 10
    .line 11
    new-instance p1, Lcom/transsion/postdetail/layer/local/f1;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/f1;-><init>(Lcom/transsion/postdetail/layer/local/h1;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/h1;->e:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance p1, Lcom/transsion/postdetail/layer/local/g1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/g1;-><init>(Lcom/transsion/postdetail/layer/local/h1;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/h1;->f:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic a(Lcom/transsion/postdetail/layer/local/h1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/h1;->f(Lcom/transsion/postdetail/layer/local/h1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/h1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/h1;->e(Lcom/transsion/postdetail/layer/local/h1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/layer/local/h1;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/h1;->c:J

    .line 2
    .line 3
    return-void
.end method

.method private static final e(Lcom/transsion/postdetail/layer/local/h1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final f(Lcom/transsion/postdetail/layer/local/h1;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V
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
    const-string v1, "alpha"

    .line 8
    .line 9
    invoke-static {p4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 16
    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    invoke-static {p4}, Luf/c;->g(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v1, Lcom/transsion/postdetail/layer/local/h1$a;

    .line 24
    .line 25
    invoke-direct {v1, p0, p4, p1}, Lcom/transsion/postdetail/layer/local/h1$a;-><init>(Lcom/transsion/postdetail/layer/local/h1;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 35
    .line 36
    .line 37
    const-wide/16 p1, 0x0

    .line 38
    .line 39
    cmp-long p1, p5, p1

    .line 40
    .line 41
    if-lez p1, :cond_1

    .line 42
    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    invoke-virtual {p4, p7, p5, p6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic i(Lcom/transsion/postdetail/layer/local/h1;Ljava/lang/String;JILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0xbb8

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/h1;->h(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final h(Ljava/lang/String;J)V
    .locals 10

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 7
    .line 8
    const/4 v8, 0x2

    .line 9
    const/4 v9, 0x1

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v9, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ne v0, v9, :cond_3

    .line 27
    .line 28
    iget v0, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 29
    .line 30
    if-ne v0, v9, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 33
    .line 34
    :goto_0
    move-object v4, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    if-ne v0, v9, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->f:Ljava/lang/Runnable;

    .line 42
    .line 43
    :goto_2
    move-object v7, v0

    .line 44
    goto :goto_3

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->e:Ljava/lang/Runnable;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_3
    invoke-virtual {v4, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    move-object v1, p1

    .line 55
    move-wide v5, p2

    .line 56
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/h1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    iget v0, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 60
    .line 61
    if-ne v0, v9, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    move v8, v9

    .line 65
    :goto_4
    iput v8, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ne v0, v9, :cond_5

    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    iget-wide v4, p0, Lcom/transsion/postdetail/layer/local/h1;->c:J

    .line 83
    .line 84
    sub-long/2addr v2, v4

    .line 85
    const-wide/16 v4, 0x1f4

    .line 86
    .line 87
    cmp-long v0, v2, v4

    .line 88
    .line 89
    if-gez v0, :cond_4

    .line 90
    .line 91
    move-wide v2, v4

    .line 92
    goto :goto_5

    .line 93
    :cond_4
    const-wide/16 v2, 0x0

    .line 94
    .line 95
    :goto_5
    iput v8, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 96
    .line 97
    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/h1;->b:Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/transsion/postdetail/layer/local/h1;->f:Ljava/lang/Runnable;

    .line 100
    .line 101
    move-object v0, p0

    .line 102
    move-object v1, p1

    .line 103
    move-wide v5, p2

    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/h1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_5
    iput v9, p0, Lcom/transsion/postdetail/layer/local/h1;->d:I

    .line 109
    .line 110
    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/h1;->a:Landroid/widget/TextView;

    .line 111
    .line 112
    iget-object v7, p0, Lcom/transsion/postdetail/layer/local/h1;->e:Ljava/lang/Runnable;

    .line 113
    .line 114
    const-wide/16 v2, 0x0

    .line 115
    .line 116
    move-object v0, p0

    .line 117
    move-object v1, p1

    .line 118
    move-wide v5, p2

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/layer/local/h1;->g(Ljava/lang/String;JLandroid/widget/TextView;JLjava/lang/Runnable;)V

    .line 120
    .line 121
    .line 122
    :goto_6
    return-void
.end method
