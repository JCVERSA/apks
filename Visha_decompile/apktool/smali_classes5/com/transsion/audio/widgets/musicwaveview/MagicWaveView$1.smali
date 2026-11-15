.class Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hideBottomOperateBar()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/player/MusicPlayManager$d;->hideBottomOperateBar()V

    return-void
.end method

.method public bridge synthetic onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/audio/player/MusicPlayManager$d;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->d()Lcom/transsion/audio/widgets/musicwaveview/BaseWave;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/audio/widgets/musicwaveview/Wave;->onMusicChange()V

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-static {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->c(Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;)V

    return-void
.end method

.method public bridge synthetic onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView$1;->this$0:Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/musicwaveview/MagicWaveView;->initVisualizer()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onShowError(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onShowError(II)V

    return-void
.end method

.method public bridge synthetic onTimerShow(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onTimerShow(J)V

    return-void
.end method

.method public bridge synthetic onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onVideoSizeChanged(II)V

    return-void
.end method

.method public bridge synthetic seekTo(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->seekTo(I)V

    return-void
.end method
