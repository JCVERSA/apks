.class public Lcom/cloud/tmc/integration/structure/app/TmcAppContext;
.super Lcom/cloud/tmc/integration/structure/app/BaseAppContext;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcintegration:AppContext"


# instance fields
.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageContainer:Landroid/view/ViewGroup;

.field protected mTabContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;-><init>(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mTabContainer:Landroid/view/ViewGroup;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public applyTabBarTransparent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    .line 13
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    .line 15
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    .line 17
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0xc

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 27
    .line 28
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 29
    .line 30
    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mPageContainer:Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method protected createFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
    .locals 2

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/proxy/IFragmentManagerFactory;->createFragmentManager(Landroidx/fragment/app/FragmentActivity;)Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getData(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    const-string v0, "Tmcintegration:AppContext"

    .line 12
    .line 13
    const-string v1, "getData error"

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method protected getTabBarContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/TmcAppContext;->mTabContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public moveToBackground()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getApp()Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/CommonUtils;->enableKeepAlive(Lcom/cloud/tmc/integration/structure/App;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    return v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->moveToBackground()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public start(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->start(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
