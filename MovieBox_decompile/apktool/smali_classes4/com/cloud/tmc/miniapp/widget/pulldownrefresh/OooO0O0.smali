.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:F

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:Z

.field public final synthetic OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;FIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO00o:F

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0O0:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0OO:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0Oo0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 4
    .line 5
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->REFRESHING:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    div-float/2addr v1, v2

    .line 41
    iput v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOO0:F

    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 46
    .line 47
    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->PULL_DOWN_TO_REFRESH:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 48
    .line 49
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 55
    .line 56
    iget v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 57
    .line 58
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooooo:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO00o:F

    .line 62
    .line 63
    mul-float/2addr v2, v3

    .line 64
    float-to-int v2, v2

    .line 65
    filled-new-array {v1, v2}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0O0:I

    .line 80
    .line 81
    int-to-long v1, v1

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {v1, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO00o;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 113
    .line 114
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 127
    .line 128
    .line 129
    return-void
.end method
