.class public final Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/BottomAudioBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J+\u0010\u000b\u001a\u00020\u00042\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\u0008\u0018\u0001`\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "com/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1",
        "Lcom/transsion/audio/player/MusicPlayManager$d;",
        "",
        "state",
        "Lzfb;",
        "onPlayerStateUpdate",
        "(I)V",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lkotlin/collections/ArrayList;",
        "arrayList",
        "onPlayListLoadFinished",
        "(Ljava/util/ArrayList;)V",
        "mediaItem",
        "onPlayItemChanged",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;)V",
        "hideBottomOperateBar",
        "()V",
        "audio_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/BottomAudioBar;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideBottomOperateBar()V
    .locals 0

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {v0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->updateState()V

    :cond_0
    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "BottomAudioBar"

    const-string v0, "onPlayListLoadFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->initBanner$default(Lcom/transsion/audio/widgets/BottomAudioBar;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$setMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMIsStart$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->runMusicProgressUpdate(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$setMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$mPlayerListener$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$updatePlayPauseButton(Lcom/transsion/audio/widgets/BottomAudioBar;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x402

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

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
