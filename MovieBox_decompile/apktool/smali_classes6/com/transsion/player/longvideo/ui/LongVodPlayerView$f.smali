.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tn/lib/view/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->e1(Lcom/tn/lib/view/SecondariesSeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 9
    .line 10
    iget-wide v2, p1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "onStopTrackingTouch targetProgress:"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " "

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const/4 v5, 0x4

    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v2, "LongVodPlayerView"

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 55
    .line 56
    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 57
    .line 58
    invoke-interface {p1, v1, v2}, Lcom/transsion/player/orplayer/f;->seekTo(J)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->isPlaying()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_0

    .line 72
    .line 73
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isErrorShown(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_0

    .line 80
    .line 81
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerControl$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-interface {p1}, Lcom/transsion/player/orplayer/f;->play()V

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/local/c0;->p()V

    .line 99
    .line 100
    .line 101
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 102
    .line 103
    const-wide/16 v1, 0x0

    .line 104
    .line 105
    invoke-static {p1, v0, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->hideBottomController(Z)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 4

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_3

    .line 7
    .line 8
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getReplayLayout$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p4, 0x1

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
    if-ne p1, p4, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getReplayLayout$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/view/View;

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
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$isUGCAutoPauseShow(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$ugcPause2Play(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 48
    .line 49
    invoke-static {p1, p4}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setFormUserSeek$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Z)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getHandler$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getRunnable$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/Runnable;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    const-wide/16 v2, 0x0

    .line 74
    .line 75
    cmp-long p1, v0, v2

    .line 76
    .line 77
    if-lez p1, :cond_2

    .line 78
    .line 79
    long-to-float p1, p2

    .line 80
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 83
    .line 84
    .line 85
    move-result-wide p2

    .line 86
    long-to-float p2, p2

    .line 87
    div-float/2addr p1, p2

    .line 88
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 89
    .line 90
    iget-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 91
    .line 92
    invoke-static {p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getTotalDuration$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    long-to-float p3, v0

    .line 97
    mul-float/2addr p3, p1

    .line 98
    float-to-long v0, p3

    .line 99
    iput-wide v0, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 100
    .line 101
    :cond_2
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$f;->b:Lkotlin/jvm/internal/Ref$LongRef;

    .line 104
    .line 105
    iget-wide p2, p2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 106
    .line 107
    invoke-static {p1, p4, p2, p3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$updateSeekbar(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZJ)V

    .line 108
    .line 109
    .line 110
    :cond_3
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
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "LongVodPlayerView"

    .line 11
    .line 12
    const-string v3, "onStartTrackingTouch "

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
