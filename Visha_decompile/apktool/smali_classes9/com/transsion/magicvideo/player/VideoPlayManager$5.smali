.class Lcom/transsion/magicvideo/player/VideoPlayManager$5;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->H()V
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
.field final synthetic this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field final synthetic val$currentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->val$currentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Ljava/lang/Boolean;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->val$currentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 3
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltpb;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :cond_0
    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->val$currentMediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v3, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 7
    :cond_1
    iget-object p0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 9
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->onBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    const-string p1, "VideoPlayManager"

    const-string v0, "the video is no longer exist "

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-boolean v0, p1, Lcom/transsion/magicvideo/player/VideoPlayManager;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    .line 6
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x404

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->H1(Z)V

    .line 8
    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->E1(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$5;->onResult(Ljava/lang/Boolean;)V

    return-void
.end method
