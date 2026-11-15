.class public final Lcom/transsion/postdetail/layer/local/a0$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/view/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/a0;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/layer/local/a0;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/a0;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v0, "<get-TAG>(...)"

    .line 15
    .line 16
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 20
    .line 21
    iget-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "onStopTrackingTouch targetProgress:"

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, " "

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v5, 0x4

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 66
    .line 67
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 68
    .line 69
    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 70
    .line 71
    .line 72
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->s0(Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/player/orplayer/f;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 95
    .line 96
    .line 97
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->q0(Lcom/transsion/postdetail/layer/local/a0;)Landroidx/fragment/app/Fragment;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    instance-of v2, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 104
    .line 105
    if-eqz v2, :cond_2

    .line 106
    .line 107
    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 111
    :goto_0
    if-eqz v0, :cond_3

    .line 112
    .line 113
    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 114
    .line 115
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 116
    .line 117
    iget-object v4, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 118
    .line 119
    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v3(JF)V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 127
    .line 128
    .line 129
    move-result-wide v2

    .line 130
    invoke-static {v0, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 134
    .line 135
    const-wide/16 v2, 0x0

    .line 136
    .line 137
    invoke-static {p1, v1, v2, v3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 141
    .line 142
    invoke-virtual {p1, v1}, Lcom/transsion/postdetail/layer/local/a0;->v1(Z)V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 3

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->g1()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Luf/c;->i(Landroid/view/View;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->g1()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 35
    .line 36
    invoke-static {p1, p4}, Lcom/transsion/postdetail/layer/local/a0;->w0(Lcom/transsion/postdetail/layer/local/a0;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/transsion/postdetail/layer/local/a0;->r0(Lcom/transsion/postdetail/layer/local/a0;)Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p4, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 46
    .line 47
    invoke-static {p4}, Lcom/transsion/postdetail/layer/local/a0;->t0(Lcom/transsion/postdetail/layer/local/a0;)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    long-to-float p1, p2

    .line 55
    const-wide/16 p2, 0x2710

    .line 56
    .line 57
    long-to-float p2, p2

    .line 58
    div-float/2addr p1, p2

    .line 59
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    .line 62
    .line 63
    .line 64
    move-result-wide p2

    .line 65
    const-wide/16 v1, 0x0

    .line 66
    .line 67
    cmp-long p2, p2, v1

    .line 68
    .line 69
    if-lez p2, :cond_1

    .line 70
    .line 71
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 72
    .line 73
    iget-object p3, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    .line 76
    .line 77
    .line 78
    move-result-wide p3

    .line 79
    long-to-float p3, p3

    .line 80
    mul-float/2addr p3, p1

    .line 81
    float-to-long p3, p3

    .line 82
    iput-wide p3, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->c:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 86
    .line 87
    iput p1, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 88
    .line 89
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 94
    .line 95
    invoke-static {p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->v0(Lcom/transsion/postdetail/layer/local/a0;J)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 99
    .line 100
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/a0$c;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 101
    .line 102
    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 103
    .line 104
    invoke-static {p1, v0, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->x0(Lcom/transsion/postdetail/layer/local/a0;ZJ)V

    .line 105
    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 7

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$c;->a:Lcom/transsion/postdetail/layer/local/a0;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string p1, "<get-TAG>(...)"

    .line 15
    .line 16
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v3, "onStartTrackingTouch "

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
