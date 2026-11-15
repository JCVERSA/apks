.class public Lcom/mgtv/ssp/feed/fragment/FeedFragment;
.super Lcom/mgtv/ssp/fragment/RootFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    .line 4
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->h:Landroid/view/View;

    sget v1, Lcom/mgtv/ssp/R$id;->layout_list_container:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    .line 5
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p0, v0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->start()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Z)V

    .line 8
    iget-object v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v1, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgtv/ssp/viewcard/BaseView;->setRealVisible(Z)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    sget p0, Lcom/mgtv/ssp/R$layout;->fragemnt_list:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/mgtv/ssp/SspViewInterface;->onViewConfigChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->onResume()V

    iget-object v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v1, v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->h()V

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->resume()V

    :cond_0
    return-void
.end method

.method public requestData()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v0, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->n()V

    :cond_0
    return-void
.end method

.method public start(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/fragment/RootFragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of p1, p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;

    invoke-virtual {p0}, Lcom/mgtv/ssp/feed/viewcard/FeedVideoView;->start()V

    :cond_1
    return-void
.end method
