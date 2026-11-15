.class Lcom/transsion/audio/activities/AudioPlayerActivity$4;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iput-object p2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/audio/activities/AudioPlayerActivity$4;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->lambda$onBackground$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBackground$0(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Q0(Lcom/transsion/audio/activities/AudioPlayerActivity;)Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Z1(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->G(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onActivityResult alumMediaItem:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "null"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    iget-object p1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioPlayer_Activity"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljy7;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    new-instance v2, Lcom/transsion/audio/activities/a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/audio/activities/a;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity$4;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Q0(Lcom/transsion/audio/activities/AudioPlayerActivity;)Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e(Ljava/lang/String;)V

    sget-object v1, Lrf;->h:Lrf$a;

    invoke-virtual {v1}, Lrf$a;->a()Lrf;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$4;->this$0:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lrf;->d(Landroid/content/Context;)Ljava/util/List;

    return-object v0
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onResult(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    const-string v0, "change_audio_cover"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
