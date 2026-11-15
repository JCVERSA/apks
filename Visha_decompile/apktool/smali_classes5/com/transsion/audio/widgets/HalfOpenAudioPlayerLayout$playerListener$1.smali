.class public final Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\'\u0010\u000b\u001a\u00020\u00042\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1",
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
        "Lcom/transsion/audio/player/MusicPlayManager;",
        "musicPlayManager",
        "onUpdateAll",
        "(Lcom/transsion/audio/player/MusicPlayManager;)V",
        "Landroid/media/audiofx/Visualizer;",
        "visualizer",
        "",
        "fft",
        "samplingRate",
        "onFftDataCapture",
        "(Landroid/media/audiofx/Visualizer;[BI)V",
        "what",
        "messageId",
        "onShowError",
        "(II)V",
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
.field final synthetic this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic hideBottomOperateBar()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/audio/player/MusicPlayManager$d;->hideBottomOperateBar()V

    return-void
.end method

.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    const-string p0, "visualizer"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fft"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPlayItemChanged(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMIsStart$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "audioItemView2"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->startAlbumAnim()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$isInjectCover$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "carousel"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v6, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioCarousel;->getCurrentIndex()I

    move-result p1

    if-eq p1, v2, :cond_17

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_6

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/transsion/audio/widgets/AudioCarousel;->jumpToIndex(I)V

    goto/16 :goto_a

    :cond_7
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v6, :cond_8

    move v2, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p1

    if-nez p1, :cond_a

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v1

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioCarousel;->getCurrentIndex()I

    move-result p1

    if-eq p1, v2, :cond_17

    const/16 p1, 0x1f4

    if-nez v2, :cond_f

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->getCurrentIndex()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v2}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_d

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_c

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object v1, p0

    :goto_5
    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    goto/16 :goto_a

    :cond_d
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_e

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object v1, p0

    :goto_6
    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_a

    :cond_f
    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getPlayList$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_14

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    move-object v0, v1

    :cond_10
    invoke-virtual {v0}, Lcom/transsion/audio/widgets/AudioCarousel;->getCurrentIndex()I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_11

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    move-object v1, p0

    :goto_7
    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionPrevious(I)V

    goto :goto_a

    :cond_12
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_13

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    move-object v1, p0

    :goto_8
    invoke-virtual {v1, p1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionNext(I)V

    goto :goto_a

    :cond_14
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getCarousel$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioCarousel;

    move-result-object p0

    if-nez p0, :cond_15

    invoke-static {v4}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    move-object v1, p0

    :goto_9
    invoke-virtual {v1, v2, p1}, Lcom/transsion/audio/widgets/AudioCarousel;->transitionToIndex(II)V

    goto :goto_a

    :cond_16
    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$loadAudioAlbums(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)V

    :cond_17
    :goto_a
    return-void
.end method

.method public onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/dbdata/beans/media/AudioItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "arrayList"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getPlayList(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$refreshPlayList(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->P()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMCurrentMediaItem$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {v0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMCurrentMediaItem$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->isAudioItemChanged(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayListLoadFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayerLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->updateUI(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_0
    return-void
.end method

.method public onPlayerStateUpdate(I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/audio/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "audioItemView2"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->pauseAlbumAnim()V

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_2
    invoke-static {p1, v4, v2, v0, v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setPlayState$default(Lcom/transsion/audio/widgets/AudioPlayerItemView;ZLc74;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$playStatusChange(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMIsStart$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->resumeAlbumAnim()V

    :cond_5
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    move-object p1, v2

    :cond_6
    invoke-static {p1, v4, v2, v0, v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->setPlayState$default(Lcom/transsion/audio/widgets/AudioPlayerItemView;ZLc74;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0, v4}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$playStatusChange(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;Z)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p1}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getMIsStart$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getAudioItemView2$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Lcom/transsion/audio/widgets/AudioPlayerItemView;

    move-result-object p0

    if-nez p0, :cond_8

    invoke-static {v1}, Ly45;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/transsion/audio/widgets/AudioPlayerItemView;->startAlbumAnim()V

    :cond_9
    :goto_1
    return-void
.end method

.method public onShowError(II)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout$playerListener$1;->this$0:Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;

    invoke-static {p0}, Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;->access$getErrorNextRunnable$p(Lcom/transsion/audio/widgets/HalfOpenAudioPlayerLayout;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public bridge synthetic onTimerShow(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/player/MusicPlayManager$d;->onTimerShow(J)V

    return-void
.end method

.method public onUpdateAll(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    const-string p0, "musicPlayManager"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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
