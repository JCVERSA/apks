.class public final Lcom/transsion/postdetail/layer/local/a0$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baseui/widget/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/a0;->z1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:F

.field final synthetic h:Lcom/transsion/postdetail/layer/local/a0;

.field final synthetic i:Z

.field final synthetic j:I

.field final synthetic k:I


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/a0;ZII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->i:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->j:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->Z2()Landroidx/constraintlayout/widget/Group;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v2, v1, v3}, Lcom/transsion/postdetail/layer/local/a0;->B2(Lcom/transsion/postdetail/layer/local/a0;ZILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public b(FF)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-wide v3, v1

    .line 21
    :goto_0
    iput-wide v3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->f:J

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lcom/transsion/postdetail/layer/local/a0;->A2(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v0, v3}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->r0(Lcom/transsion/postdetail/layer/local/a0;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/transsion/postdetail/layer/local/a0;->t0(Lcom/transsion/postdetail/layer/local/a0;)Ljava/lang/Runnable;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->i:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sub-float/2addr p1, p2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sub-float p1, p2, p1

    .line 59
    .line 60
    :goto_1
    const-wide/16 v4, 0x2710

    .line 61
    .line 62
    long-to-float p2, v4

    .line 63
    mul-float/2addr p1, p2

    .line 64
    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->j:I

    .line 65
    .line 66
    mul-int/lit8 v0, v0, 0x4

    .line 67
    .line 68
    int-to-float v0, v0

    .line 69
    div-float/2addr p1, v0

    .line 70
    iget-wide v6, p0, Lcom/transsion/postdetail/layer/local/a0$b;->f:J

    .line 71
    .line 72
    long-to-float v0, v6

    .line 73
    add-float/2addr v0, p1

    .line 74
    float-to-long v6, v0

    .line 75
    cmp-long p1, v6, v1

    .line 76
    .line 77
    if-gez p1, :cond_3

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    cmp-long p1, v6, v4

    .line 81
    .line 82
    if-lez p1, :cond_4

    .line 83
    .line 84
    move-wide v1, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-wide v1, v6

    .line 87
    :goto_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->q2()Lcom/tn/lib/view/SecondariesSeekBar;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1, v1, v2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 96
    .line 97
    .line 98
    :cond_5
    long-to-float p1, v1

    .line 99
    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    .line 101
    mul-float/2addr p1, v0

    .line 102
    div-float/2addr p1, p2

    .line 103
    iput p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    .line 104
    .line 105
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    long-to-float p1, p1

    .line 112
    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    .line 113
    .line 114
    mul-float/2addr p1, p2

    .line 115
    float-to-long p1, p1

    .line 116
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    .line 117
    .line 118
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 119
    .line 120
    invoke-static {v0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 124
    .line 125
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    .line 126
    .line 127
    invoke-static {p1, v3, v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public c(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "volumeControl"

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Ljn/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v3}, Ljn/n;->f(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Ljn/n;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_1
    invoke-interface {v0}, Ljn/n;->b()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->g:F

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    .line 44
    .line 45
    :cond_2
    sub-float/2addr p1, p2

    .line 46
    const/4 p2, 0x2

    .line 47
    int-to-float p2, p2

    .line 48
    mul-float/2addr p1, p2

    .line 49
    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    div-float/2addr p1, p2

    .line 53
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Ljn/n;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-nez p2, :cond_3

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move-object v1, p2

    .line 66
    :goto_0
    iget p2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->g:F

    .line 67
    .line 68
    invoke-interface {v1, p2, p1}, Ljn/n;->a(FF)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public d(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "volumeControl"

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Ljn/n;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v1

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    invoke-interface {v0, v3}, Ljn/n;->f(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->u0(Lcom/transsion/postdetail/layer/local/a0;)Ljn/n;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move-object v1, v0

    .line 40
    :goto_0
    iget v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->k:I

    .line 41
    .line 42
    invoke-interface {v1, p1, p2, v0}, Ljn/n;->d(FFI)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    .line 15
    .line 16
    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->q0(Lcom/transsion/postdetail/layer/local/a0;)Landroidx/fragment/app/Fragment;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_0
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/transsion/postdetail/layer/local/a0$b;->a:J

    .line 61
    .line 62
    iget v4, p0, Lcom/transsion/postdetail/layer/local/a0$b;->b:F

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v3(JF)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 68
    .line 69
    const-wide/16 v2, 0x0

    .line 70
    .line 71
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    .line 82
    .line 83
    .line 84
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->c:Z

    .line 85
    .line 86
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->d:Z

    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->e:Z

    .line 89
    .line 90
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->M0()V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/transsion/postdetail/layer/local/a0;->d2(Landroid/view/MotionEvent;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->b1()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$b;->h:Lcom/transsion/postdetail/layer/local/a0;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->L2()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
