.class public final Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/BottomAudioBar;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/transsion/audio/widgets/BottomAudioBar$initClick$7",
        "Lux0;",
        "Landroid/view/View;",
        "v",
        "Lzfb;",
        "onNoDoubleClick",
        "(Landroid/view/View;)V",
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-direct {p0}, Lux0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    sget-object p1, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    invoke-virtual {p1}, Lcom/transsion/data/Repository;->getListFlag()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->r0()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***listFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BottomAudioBar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->getMRestore()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->r0()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/widgets/BottomAudioBar;->setMRestore(Z)V

    :cond_2
    const-string p1, "minibar"

    invoke-static {p1}, Lry5;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    move v0, v3

    :cond_3
    invoke-virtual {p1, v3, v0}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    const-string p1, "vd_play_pause"

    const-wide v0, 0xd91af27356L

    const/4 v3, 0x0

    invoke-static {v3, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p0}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result p0

    if-eq p0, v2, :cond_4

    const-string p0, "vd_audio_miniplayer_pause_cl"

    goto :goto_0

    :cond_4
    const-string p0, "vd_audio_miniplayer_play_cl"

    :goto_0
    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$startPlay(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$7;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :goto_2
    return-void
.end method
