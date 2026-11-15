.class Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/p2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplayer2/p2$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->c(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/p2$b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onCues(Lda/f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->d(Lcom/google/android/exoplayer2/p2$d;Lda/f;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->e(Lcom/google/android/exoplayer2/p2$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->f(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->g(Lcom/google/android/exoplayer2/p2$d;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/p2$c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->h(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/p2;Lcom/google/android/exoplayer2/p2$c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->i(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onIsPlayingChanged  -----> isPlaying = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AdVideoView"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->i(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Z)Z

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/j4;->a()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->j(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v1, 0x8

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onIsPlayingChanged(Z)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->k(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplayer2/w1;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->m(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/w1;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplayer2/b2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->n(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/b2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->o(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->p(Lcom/google/android/exoplayer2/p2$d;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplayer2/o2;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->q(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/o2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "AdVideoView"

    .line 3
    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "current status is playing finished"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->f(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/google/android/exoplayer2/t;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/google/android/exoplayer2/t;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getDuration()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/google/android/exoplayer2/t;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getDuration()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    const/16 v5, 0x64

    .line 74
    .line 75
    invoke-interface/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/j4;->b(JJI)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/j4;->onComplete()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v0, "current status is loading completed"

    .line 93
    .line 94
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/j4;->d()V

    .line 112
    .line 113
    .line 114
    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v0, "current status is loading....."

    .line 125
    .line 126
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->s(Lcom/google/android/exoplayer2/p2$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "errorCode == "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v2, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ", error message == "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "AdVideoView"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->m(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :cond_1
    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->u(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->v(Lcom/google/android/exoplayer2/p2$d;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->x(Lcom/google/android/exoplayer2/p2$d;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/r2;->y(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/p2$e;Lcom/google/android/exoplayer2/p2$e;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/r2;->z(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->A(Lcom/google/android/exoplayer2/p2$d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/r2;->D(Lcom/google/android/exoplayer2/p2$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->E(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->F(Lcom/google/android/exoplayer2/p2$d;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->G(Lcom/google/android/exoplayer2/p2$d;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplayer2/l3;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/r2;->H(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/l3;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lna/z;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->I(Lcom/google/android/exoplayer2/p2$d;Lna/z;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplayer2/q3;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/r2;->J(Lcom/google/android/exoplayer2/p2$d;Lcom/google/android/exoplayer2/q3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "AdVideoView"

    .line 6
    .line 7
    const-string v1, "onVideoSizeChanged ------> "

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "onVolumeChanged ----> volume = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AdVideoView"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/j4;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/j4;->onVolumeChanged(F)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
