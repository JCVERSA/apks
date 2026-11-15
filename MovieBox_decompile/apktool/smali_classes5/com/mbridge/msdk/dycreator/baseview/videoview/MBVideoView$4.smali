.class Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const-string v0, "MBVideoView"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->isPlaying()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player;->getCurrentPosition()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 30
    .line 31
    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->b(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Lcom/mbridge/msdk/playercommon/exoplayer2/Player;->getDuration()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    long-to-float v1, v1

    .line 40
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 41
    .line 42
    div-float/2addr v1, v2

    .line 43
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    long-to-float v5, v3

    .line 48
    div-float/2addr v5, v2

    .line 49
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v6, "currentPosition:"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, " duration:"

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->a(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 90
    .line 91
    invoke-static {v3}, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;->a(Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;)Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v3, v1, v2}, Lcom/mbridge/msdk/dycreator/baseview/videoview/listener/VideoViewEventListener;->onPlayProgress(II)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    goto :goto_1

    .line 101
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView$4;->a:Lcom/mbridge/msdk/dycreator/baseview/videoview/MBVideoView;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-wide/16 v2, 0x3e8

    .line 108
    .line 109
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    :goto_2
    return-void
.end method
