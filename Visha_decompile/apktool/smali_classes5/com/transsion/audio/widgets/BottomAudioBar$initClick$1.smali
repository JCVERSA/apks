.class public final Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/audio/widgets/BottomAudioBar$initClick$1",
        "Lux0;",
        "Landroid/view/View;",
        "v",
        "Lzfb;",
        "onNoDoubleClick",
        "(Landroid/view/View;)V",
        "onClick",
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-direct {p0}, Lux0;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lux0;->onClick(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMCurrentMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->getMRestore()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/transsion/audio/player/MusicPlayManager;->P0(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1, v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->setMRestore(Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayManager$p(Lcom/transsion/audio/widgets/BottomAudioBar;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v2}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/transsion/audio/player/MusicPlayManager;->A1(ZZ)V

    const-string p1, "vd_play_pause"

    const-wide v1, 0xd91af27356L

    const/4 v3, 0x0

    invoke-static {v3, p1, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result p1

    if-eq p1, v0, :cond_3

    const-string p1, "vd_audio_miniplayer_pause_cl"

    goto :goto_0

    :cond_3
    const-string p1, "vd_audio_miniplayer_play_cl"

    :goto_0
    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$startPlay(Lcom/transsion/audio/widgets/BottomAudioBar;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->setMCurrentMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    :goto_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BaseBottomBar;->getMFlPlay()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-static {v1}, Lcom/transsion/audio/widgets/BottomAudioBar;->access$getMPlayerState$p(Lcom/transsion/audio/widgets/BottomAudioBar;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/audio/widgets/BottomAudioBar$initClick$1;->this$0:Lcom/transsion/audio/widgets/BottomAudioBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-ne v1, v0, :cond_5

    sget v0, Lcom/transsion/audio/R$string;->talkback_pause:I

    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_5
    sget v0, Lcom/transsion/audio/R$string;->talkback_play:I

    goto :goto_3

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    const-string p0, "v"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
