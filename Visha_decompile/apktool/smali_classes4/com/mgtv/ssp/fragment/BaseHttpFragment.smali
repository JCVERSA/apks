.class public abstract Lcom/mgtv/ssp/fragment/BaseHttpFragment;
.super Lcom/mgtv/ssp/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private b:Lcom/mgtv/task/h;

.field private c:Lcom/mgtv/task/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    new-instance p1, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object p1, p0, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->b:Lcom/mgtv/task/h;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/mgtv/task/m;

    iget-object v1, p0, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->b:Lcom/mgtv/task/h;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v0, p0, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->c:Lcom/mgtv/task/m;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/fragment/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->b:Lcom/mgtv/task/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/g;)V

    :cond_0
    iput-object v1, p0, Lcom/mgtv/ssp/fragment/BaseHttpFragment;->c:Lcom/mgtv/task/m;

    return-void
.end method
