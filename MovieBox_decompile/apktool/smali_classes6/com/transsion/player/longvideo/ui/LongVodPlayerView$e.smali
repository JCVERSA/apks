.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/player/ui/longvideo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:Z

.field private d:J

.field final synthetic e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->f:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onSingleTapClick(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(FF)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 12
    .line 13
    iget-object v0, v0, Lmn/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/tn/lib/view/SecondariesSeekBar;->getProgress()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->d:J

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showBottomController(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getHandler$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getRunnable$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/Runnable;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->f:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    sub-float/2addr p1, p2

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sub-float p1, p2, p1

    .line 57
    .line 58
    :goto_0
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getCurUiType$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->LAND:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    .line 65
    .line 66
    if-ne p2, v0, :cond_2

    .line 67
    .line 68
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 69
    .line 70
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getScreenHeight$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 76
    .line 77
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getScreenWidth$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    :goto_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    long-to-float v0, v2

    .line 88
    mul-float/2addr p1, v0

    .line 89
    mul-int/lit8 p2, p2, 0x4

    .line 90
    .line 91
    int-to-float p2, p2

    .line 92
    div-float/2addr p1, p2

    .line 93
    iget-wide v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->d:J

    .line 94
    .line 95
    long-to-float p2, v2

    .line 96
    add-float/2addr p2, p1

    .line 97
    float-to-long p1, p2

    .line 98
    const-wide/16 v2, 0x0

    .line 99
    .line 100
    cmp-long v0, p1, v2

    .line 101
    .line 102
    if-gez v0, :cond_3

    .line 103
    .line 104
    move-wide p1, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    cmp-long v0, p1, v2

    .line 113
    .line 114
    if-lez v0, :cond_4

    .line 115
    .line 116
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 119
    .line 120
    .line 121
    move-result-wide p1

    .line 122
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 129
    .line 130
    iget-object v0, v0, Lmn/k;->t:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 131
    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v0, v0, Lmn/j;->p:Lmn/l;

    .line 142
    .line 143
    iget-object v0, v0, Lmn/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 144
    .line 145
    invoke-virtual {v0, p1, p2}, Lcom/tn/lib/view/SecondariesSeekBar;->setProgress(J)V

    .line 146
    .line 147
    .line 148
    long-to-float p1, p1

    .line 149
    const/high16 p2, 0x3f800000    # 1.0f

    .line 150
    .line 151
    mul-float/2addr p1, p2

    .line 152
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 153
    .line 154
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    long-to-float p2, v2

    .line 159
    div-float/2addr p1, p2

    .line 160
    iput p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->b:F

    .line 161
    .line 162
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 165
    .line 166
    .line 167
    move-result-wide p1

    .line 168
    long-to-float p1, p1

    .line 169
    iget p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->b:F

    .line 170
    .line 171
    mul-float/2addr p1, p2

    .line 172
    float-to-long p1, p1

    .line 173
    iput-wide p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->a:J

    .line 174
    .line 175
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 176
    .line 177
    invoke-static {v0, v1, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-wide v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->a:J

    .line 13
    .line 14
    invoke-interface {v0, v2, v3}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isErrorShown(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isUGCAutoPauseShow(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$ugcPause2Play(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/transsion/player/orplayer/f;->play()V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/c0;->p()V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 72
    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->hideBottomController(Z)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 84
    .line 85
    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 86
    .line 87
    .line 88
    iput-boolean v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->c:Z

    .line 89
    .line 90
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$endLongPress(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getViewBinding$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lmn/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lmn/j;->o:Lmn/k;

    .line 13
    .line 14
    iget-object v0, v0, Lmn/k;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v2, "LongVodPlayerView"

    .line 28
    .line 29
    const-string v3, "onDoubleTap "

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v0, p1, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$videoPauseOrPlayClick(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Landroid/view/MotionEvent;Z)V

    .line 39
    .line 40
    .line 41
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
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$e;->e:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$longPressSpeed(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
