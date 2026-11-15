.class Lcom/transsion/audio/player/MusicPlayManager$5;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/player/MusicPlayManager;->E0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/player/MusicPlayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/player/MusicPlayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/MusicPlayManager$5;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/transsion/audio/player/MusicPlayManager$5;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {v0}, Lcom/transsion/audio/player/MusicPlayManager;->p(Lcom/transsion/audio/player/MusicPlayManager;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/transsion/audio/player/MusicPlayManager$5;->this$0:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-static {}, Llc3;->d()Z

    move-result p0

    xor-int/lit8 v3, p0, 0x1

    sget-object v5, Lcom/transsion/utils/BaseConstant;->l:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    const/4 v6, 0x0

    const-string v4, "vd_audio_play_show"

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/audio/player/MusicPlayManager;->D0(Lcom/transsion/dbdata/beans/media/AudioItem;ILjava/lang/String;Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Z)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager$5;->onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    .line 1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager$5;->onResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
