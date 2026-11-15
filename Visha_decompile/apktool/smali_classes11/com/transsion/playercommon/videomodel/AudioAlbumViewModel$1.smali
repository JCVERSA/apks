.class Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field final synthetic val$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic val$observer:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object p2, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->val$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->val$observer:Landroidx/lifecycle/Observer;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a:Landroidx/lifecycle/LiveData;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->j0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a:Landroidx/lifecycle/LiveData;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->this$0:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iget-object p1, p1, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a:Landroidx/lifecycle/LiveData;

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->val$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;->val$observer:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
