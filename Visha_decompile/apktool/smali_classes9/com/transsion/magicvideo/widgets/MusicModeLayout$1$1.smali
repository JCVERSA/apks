.class Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;->this$1:Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 3

    .line 2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;->this$1:Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    .line 3
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v0, v1, v2}, Ls06;->a(Ljava/lang/String;J)V

    .line 4
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lao;->i(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lbx5;->a()Lbx5;

    move-result-object v1

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v1, v2}, Lbx5;->b(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;->onBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    const-string p1, "MusicModeLayout"

    const-string v0, "addVideoToAudioList success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget p1, Lcom/transsion/magicvideo/R$string;->visha_add_to_audio_playlist_success:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    .line 5
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;->this$1:Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1;->a:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->m(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$1$1;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
