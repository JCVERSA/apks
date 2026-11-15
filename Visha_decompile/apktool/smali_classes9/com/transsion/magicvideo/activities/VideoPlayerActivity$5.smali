.class Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->h2(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->this$0:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->val$whenDone:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->onBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lv;->a:Lv$a;

    invoke-virtual {v0}, Lv$a;->a()Lv;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lv;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/arch/threads/TaskExecutor$Task;->onResult(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->this$0:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->this$0:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lw5a;->c(Ljava/util/List;)V

    .line 6
    :cond_1
    invoke-static {}, Ln;->n()V

    .line 7
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->this$0:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object v0, v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->M0:Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayerFragment;->n0()V

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLanguageList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer_Activity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->val$whenDone:Ljava/lang/Runnable;

    if-eqz p0, :cond_4

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    .line 12
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity$5;->val$whenDone:Ljava/lang/Runnable;

    if-eqz p0, :cond_6

    .line 13
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6
    return-void
.end method
