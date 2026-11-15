.class public abstract Lcom/mgtv/ssp/fragment/RootFragment;
.super Lcom/mgtv/ssp/fragment/SspFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

.field private b:Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSaveStateAnnotation"
        }
    .end annotation
.end field

.field protected g:Lcom/mgtv/ssp/auth/EntranceInfo;

.field protected h:Landroid/view/View;

.field protected i:Lcom/mgtv/ssp/SspViewInterface;

.field protected j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/SspFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/ssp/fragment/RootFragment;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/fragment/RootFragment;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->b:Z

    return p1
.end method

.method private b(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/fragment/RootFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method private c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->b:Z

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->b:Z

    iget-object v2, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/mgtv/ssp/viewcard/BaseView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/mgtv/ssp/viewcard/BaseView;

    invoke-virtual {v2, v1}, Lcom/mgtv/ssp/viewcard/BaseView;->setRealVisible(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->b:Z

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/mgtv/ssp/fragment/RootFragment;->a(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private e()Z
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/auth/EntranceInfo;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->g:Lcom/mgtv/ssp/auth/EntranceInfo;

    .line 7
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setInfo(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V
    .locals 1

    .line 9
    iput-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->a:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    .line 10
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    if-eqz v0, :cond_0

    .line 11
    check-cast p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setMgSspSdkCallback(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iput-boolean p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->j:Z

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53ef\u89c1\u6027\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lyzzzzzzzz"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract b()I
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->b:Z

    return p0
.end method

.method public onClickBack()Z
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-interface {p0}, Lcom/mgtv/ssp/SspViewInterface;->onBackPress()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p3, p0, Lcom/mgtv/ssp/fragment/RootFragment;->h:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->b()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->h:Landroid/view/View;

    new-instance p2, Lcom/mgtv/ssp/fragment/RootFragment$1;

    invoke-direct {p2, p0}, Lcom/mgtv/ssp/fragment/RootFragment$1;-><init>(Lcom/mgtv/ssp/fragment/RootFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->a()V

    iget-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    instance-of p2, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p2, p0, Lcom/mgtv/ssp/fragment/RootFragment;->a:Lcom/mgtv/ssp/callback/MgSspSdkCallback;

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setMgSspSdkCallback(Lcom/mgtv/ssp/callback/MgSspSdkCallback;)V

    iget-object p1, p0, Lcom/mgtv/ssp/fragment/RootFragment;->i:Lcom/mgtv/ssp/SspViewInterface;

    check-cast p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p2, p0, Lcom/mgtv/ssp/fragment/RootFragment;->g:Lcom/mgtv/ssp/auth/EntranceInfo;

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->setInfo(Lcom/mgtv/ssp/auth/EntranceInfo;)V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/fragment/RootFragment;->h:Landroid/view/View;

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    :try_start_1
    instance-of v1, v0, Lcom/mgtv/ssp/fragment/RootFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgtv/ssp/fragment/RootFragment;

    invoke-direct {v0, p1}, Lcom/mgtv/ssp/fragment/RootFragment;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    invoke-direct {p0}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    :try_start_1
    instance-of v0, p1, Lcom/mgtv/ssp/fragment/RootFragment;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/mgtv/ssp/fragment/RootFragment;

    invoke-direct {p1}, Lcom/mgtv/ssp/fragment/RootFragment;->c()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-void
.end method
