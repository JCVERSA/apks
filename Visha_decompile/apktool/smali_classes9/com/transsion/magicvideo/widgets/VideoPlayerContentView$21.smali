.class Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field final synthetic val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

.field final synthetic val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

.field final synthetic val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->this$0:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$videoData:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$mediaItem:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$21;->val$playStates:Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-virtual {v0, v1, v2, p0}, Ltpb;->B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
