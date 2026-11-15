.class public abstract Lcom/cloud/tmc/integration/structure/app/BaseAppContext;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/AppContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tmcintegration:BaseAppContext"


# instance fields
.field private hasShowTab:Z

.field private isDestroyed:Z

.field private mActivity:Landroidx/fragment/app/FragmentActivity;

.field private mApp:Lcom/cloud/tmc/integration/structure/App;

.field private mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/structure/App;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->isDestroyed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->createFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 16
    .line 17
    return-void
.end method

.method private showDefaultSessionTab()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private showTabBar(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->hasShowTab:Z

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->hasShowTab:Z

    .line 17
    .line 18
    new-instance p1, Lcom/cloud/tmc/integration/structure/app/BaseAppContext$1;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext$1;-><init>(Lcom/cloud/tmc/integration/structure/app/BaseAppContext;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method protected abstract createFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->isDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->isDestroyed:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->onDestroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v0
.end method

.method public exitPage(Lcom/cloud/tmc/integration/structure/Page;Z)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "exitPage "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Tmcintegration:BaseAppContext"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string p1, "exitPage but already exited"

    .line 28
    .line 29
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->isExited()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-class v0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    move v2, v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 63
    .line 64
    invoke-interface {v0, p1, v2, p2}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->exitPage(Lcom/cloud/tmc/integration/structure/Page;ZZ)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 75
    .line 76
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p2, v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-eqz p2, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 87
    .line 88
    invoke-interface {p2, p1, v2}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->exitTabCachePage(Lcom/cloud/tmc/integration/structure/Page;Z)Z

    .line 89
    .line 90
    .line 91
    :cond_3
    const-string p1, "exitPage but fragment already exited!"

    .line 92
    .line 93
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 97
    .line 98
    invoke-interface {p1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->checkInvalidPage()V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method protected getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActivityStartIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected getApp()Lcom/cloud/tmc/integration/structure/App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFragmentManager()Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract getTabBarContainer()Landroid/view/ViewGroup;
.end method

.method public isTaskRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public moveToBackground()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "miniAppReload"

    .line 7
    .line 8
    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 17
    .line 18
    const-class v2, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 19
    .line 20
    const-string v3, "Tmcintegration:BaseAppContext"

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    const-string v0, "NebulaActivity finish by AppContext.destroy()"

    .line 39
    .line 40
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-string v0, "remove activity task"

    .line 62
    .line 63
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 73
    .line 74
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 79
    .line 80
    invoke-interface {v0, v2, v3}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTask(Ljava/lang/String;Landroid/app/Activity;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "activity is not task root"

    .line 85
    .line 86
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 98
    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    const-string v0, "remove task by recent "

    .line 116
    .line 117
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 127
    .line 128
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v0, v2}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->removeMiniAppTaskByRecent(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 136
    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    invoke-interface {v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->release()V

    .line 140
    .line 141
    .line 142
    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 143
    .line 144
    :cond_5
    iput-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 145
    .line 146
    return-void
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 5
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "pushPage with page: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " with stack: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/Throwable;

    .line 26
    .line 27
    const-string v2, "Just Print"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Tmcintegration:BaseAppContext"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getStartParams()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->createFragment(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    new-instance v1, Landroid/os/Bundle;

    .line 75
    .line 76
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    const-string v4, "appInstanceId"

    .line 86
    .line 87
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 88
    .line 89
    .line 90
    const-string v2, "pageInstanceId"

    .line 91
    .line 92
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    const-class v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    invoke-interface {p1, v1, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    .line 114
    .line 115
    iget-boolean v1, v1, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableEnter:Z

    .line 116
    .line 117
    xor-int/2addr v1, v2

    .line 118
    const-class v3, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 119
    .line 120
    invoke-interface {p1, v3, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Lcom/cloud/tmc/integration/model/StatusStore;

    .line 125
    .line 126
    iget-boolean v3, v3, Lcom/cloud/tmc/integration/model/StatusStore;->exitPage:Z

    .line 127
    .line 128
    iget-object v4, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 129
    .line 130
    invoke-interface {v4, p1, v0, v1, v3}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;ZZ)V

    .line 131
    .line 132
    .line 133
    return v2

    .line 134
    :cond_2
    :goto_1
    const-string p1, "pushPage but is exited!"

    .line 135
    .line 136
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    return p1

    .line 141
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string v0, "pushPage can only invoked in main thread!"

    .line 144
    .line 145
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p1
.end method

.method public pushWebViewPage(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 4
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "pushWebViewPage with page: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " with stack: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v1, Ljava/lang/Throwable;

    .line 26
    .line 27
    const-string v2, "Just Print"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "Tmcintegration:BaseAppContext"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mApp:Lcom/cloud/tmc/integration/structure/App;

    .line 54
    .line 55
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-string v3, "appInstanceId"

    .line 60
    .line 61
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/node/Node;->getNodeId()J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    const-string v3, "pageInstanceId"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    const-string v1, "pageUri"

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageURI()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "enableAdsense"

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Landroid/content/Intent;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-class v2, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 101
    .line 102
    invoke-interface {v2}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getWebViewActivity()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string v0, "pushWebViewPage can only invoked in main thread!"

    .line 132
    .line 133
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public start(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "startPage with page: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Tmcintegration:BaseAppContext"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->pushPage(Lcom/cloud/tmc/integration/structure/Page;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "pushPage can only invoked in main thread!"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public switchTab(Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/integration/structure/Page;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->isMainThread()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "switchTab with page: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Tmcintegration:BaseAppContext"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->isExited()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 59
    .line 60
    invoke-interface {v1, p1, v0}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->switchTab(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/app/BaseAppContext;->mFragmentManager:Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-interface {v1, p1, v0, v2, v2}, Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;->pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;ZZ)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_2
    :goto_1
    const-string p1, "pushPage but is exited!"

    .line 72
    .line 73
    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string v0, "switchTab can only invoked in main thread!"

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
