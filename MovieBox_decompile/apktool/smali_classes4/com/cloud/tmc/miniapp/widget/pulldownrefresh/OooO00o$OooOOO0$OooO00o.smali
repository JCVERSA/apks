.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO00o:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO00o:I

    .line 12
    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    .line 16
    .line 17
    iget v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 18
    .line 19
    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    filled-new-array {v2, v2}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object v4, v0

    .line 36
    check-cast v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v0, v3

    .line 43
    :cond_1
    :goto_0
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o$OooO00o;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 49
    .line 50
    iget-object v5, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 51
    .line 52
    iget v6, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO0O0:I

    .line 53
    .line 54
    if-lez v6, :cond_2

    .line 55
    .line 56
    iget-object v0, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 57
    .line 58
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_3

    .line 65
    :cond_2
    if-nez v0, :cond_6

    .line 66
    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    iget-boolean v0, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0OO:Z

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-boolean v0, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0O0:Z

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget v0, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooooo:I

    .line 79
    .line 80
    neg-int v0, v0

    .line 81
    if-lt v6, v0, :cond_4

    .line 82
    .line 83
    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 84
    .line 85
    invoke-virtual {v5, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    iget-object v2, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 90
    .line 91
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    iget-object v0, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 99
    .line 100
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(I)Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    :goto_1
    iget-object v0, v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    const-wide/16 v4, 0x0

    .line 112
    .line 113
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 128
    .line 129
    iput-object v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00000O0:Landroid/animation/ValueAnimator;

    .line 130
    .line 131
    :cond_7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 136
    .line 137
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 138
    .line 139
    invoke-virtual {v0, v2, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(IZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 147
    .line 148
    sget-object v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;->NONE:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;

    .line 149
    .line 150
    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    .line 153
    .line 154
    .line 155
    :goto_2
    move-object v0, v3

    .line 156
    :goto_3
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    invoke-virtual {v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOOO0$OooO00o$OooO00o;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 163
    .line 164
    .line 165
    :goto_4
    return-void
.end method
