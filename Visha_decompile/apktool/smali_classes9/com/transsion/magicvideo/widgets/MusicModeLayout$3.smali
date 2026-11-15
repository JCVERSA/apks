.class Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/MusicModeLayout;->updateVideoAddToAudioListIcon(Lcom/transsion/dbdata/beans/media/MediaItem;)V
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
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->this$0:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, p0}, Lao;->d0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->onBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->this$0:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    iget-object v0, v0, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->k:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->R()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->this$0:Lcom/transsion/magicvideo/widgets/MusicModeLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout;->m(Lcom/transsion/magicvideo/widgets/MusicModeLayout;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/MusicModeLayout$3;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
