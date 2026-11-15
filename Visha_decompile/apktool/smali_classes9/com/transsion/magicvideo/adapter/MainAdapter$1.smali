.class Lcom/transsion/magicvideo/adapter/MainAdapter$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/adapter/MainAdapter;->g()V
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
.field final synthetic this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/adapter/MainAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;

    invoke-static {v0}, Lcom/transsion/magicvideo/adapter/MainAdapter;->d(Lcom/transsion/magicvideo/adapter/MainAdapter;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;

    invoke-static {p0}, Lcom/transsion/magicvideo/adapter/MainAdapter;->b(Lcom/transsion/magicvideo/adapter/MainAdapter;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    .line 4
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltpb;->h(I)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->onBackground()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public onResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    const-string p1, "MainAdapter"

    const-string v0, "playMediaItem no longer exist"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    invoke-static {p1, v0}, Lcom/transsion/magicvideo/adapter/MainAdapter;->c(Lcom/transsion/magicvideo/adapter/MainAdapter;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    .line 4
    iget-object p0, p0, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->this$0:Lcom/transsion/magicvideo/adapter/MainAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/adapter/MainAdapter$1;->onResult(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method
