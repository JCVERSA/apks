.class Lcom/transsion/magicvideo/player/VideoPlayManager$6;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->V0(Lcom/transsion/dbdata/beans/media/MediaItem;)V
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
.field final synthetic this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->U0(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;

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

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$6;->onResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
