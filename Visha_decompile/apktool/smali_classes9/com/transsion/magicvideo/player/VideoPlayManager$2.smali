.class Lcom/transsion/magicvideo/player/VideoPlayManager$2;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/player/VideoPlayManager;->O1(Lcom/transsion/dbdata/beans/media/MediaItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field final synthetic val$mediaItemClone:Lcom/transsion/dbdata/beans/media/MediaItemClone;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/player/VideoPlayManager;Lcom/transsion/dbdata/beans/media/MediaItemClone;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iput-object p2, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->val$mediaItemClone:Lcom/transsion/dbdata/beans/media/MediaItemClone;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->doInBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doInBackground()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->this$0:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r(Lcom/transsion/magicvideo/player/VideoPlayManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "play_item"

    iget-object p0, p0, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->val$mediaItemClone:Lcom/transsion/dbdata/beans/media/MediaItemClone;

    invoke-static {v0, v1, p0}, Lw6c;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 1
    return-void
.end method
