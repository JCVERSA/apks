.class Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

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
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->z(Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updateUI()V

    return-void
.end method

.method public bridge synthetic onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout$1;->this$0:Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/AudioPlayerLrcLayout;->updatePlayPauseButton(I)V

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
