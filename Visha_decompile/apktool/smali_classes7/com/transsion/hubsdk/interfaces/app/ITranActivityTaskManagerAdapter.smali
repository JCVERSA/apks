.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranActivityTaskManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract activityInMultiWindow(Ljava/lang/String;)Z
.end method

.method public abstract addAnimationIconLayer(Landroid/view/SurfaceControl;)V
.end method

.method public abstract addMultiExchangeListener(Ljava/lang/String;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
.end method

.method public abstract boostEndInLauncher(I)V
.end method

.method public abstract boostIMEEnd(Ljava/lang/String;)V
.end method

.method public abstract boostIMEStart(ILjava/lang/String;)V
.end method

.method public abstract boostInFling(IZI)V
.end method

.method public abstract boostSceneEnd(I)V
.end method

.method public abstract boostSceneStart(I)V
.end method

.method public abstract boostStartInLauncher(I)V
.end method

.method public abstract checkAndUpdateEventStateForMulti(Ljava/lang/String;ZZJ)Z
.end method

.method public abstract checkTaskCanEnterMultiWin(I)Z
.end method

.method public abstract clearFinishFixedRotationWithTransaction()V
.end method

.method public abstract clearMultiWindowExtendSize(I)V
.end method

.method public abstract getAllMultiWindowPackageInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMultiWindowTaskInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultRootLeash()Landroid/view/SurfaceControl;
.end method

.method public abstract getDragAndZoomBgLeash(IIIIZ)Landroid/view/SurfaceControl;
.end method

.method public abstract getFocusedWinPkgName()Ljava/lang/String;
.end method

.method public abstract getGivenPkgWindowMode(Ljava/lang/String;)I
.end method

.method public abstract getGivenPkgWindowModeForCls(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getHardwareBuffer(IZ)Landroid/hardware/HardwareBuffer;
.end method

.method public abstract getMaxRecentTasksStatic()I
.end method

.method public abstract getMultiDisplayAreaAppInfo(II)Landroid/os/Bundle;
.end method

.method public abstract getMultiDisplayAreaTopPackageV4(II)Ljava/lang/String;
.end method

.method public abstract getMultiWinTopTask(II)Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract getMultiWindowBlackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiWindowDefaultRect()Landroid/graphics/Rect;
.end method

.method public abstract getMultiWindowParams(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getMultiWindowParamsByTaskId(I)Landroid/os/Bundle;
.end method

.method public abstract getMultiWindowVersion()Ljava/lang/String;
.end method

.method public abstract getMuteStateV4(I)Z
.end method

.method public abstract getNeedExit(Ljava/lang/String;)Z
.end method

.method public abstract getNotifyMultiWindowBlackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageUserId(Ljava/lang/String;)I
.end method

.method public abstract getRecentTasks(III)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootTaskInfoOnDisplay(III)Lcom/transsion/hubsdk/api/app/TranRootTaskInfo;
.end method

.method public abstract getStackInfoTaskId(Ljava/lang/String;)I
.end method

.method public abstract getTaskBounds(I)Landroid/graphics/Rect;
.end method

.method public abstract getTaskIdByPkg(Ljava/lang/String;)I
.end method

.method public abstract getTaskIdByPkgName(Ljava/lang/String;I)I
.end method

.method public abstract getTaskOrientation(I)I
.end method

.method public abstract getTasks(IZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopActivityComponent()Landroid/content/ComponentName;
.end method

.method public abstract getTopAppWindowInfo()Landroid/os/Bundle;
.end method

.method public abstract getTopTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract getVideoNotFullscreen(Ljava/lang/String;)Z
.end method

.method public abstract hasMultiWindow()Z
.end method

.method public abstract hookGetMultiWindowDefaultRect(I)Landroid/graphics/Rect;
.end method

.method public abstract hookMultiWindowToClose(II)V
.end method

.method public abstract hookMultiWindowToExchange(II)V
.end method

.method public abstract hookMultiWindowVisible()V
.end method

.method public abstract hookMultiWindowVisibleWithCallback(Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
.end method

.method public abstract hookReparentToDefaultDisplay(II)V
.end method

.method public abstract hookSetMultiWindowDefaultRectResult(Landroid/graphics/Rect;)V
.end method

.method public abstract hookShowBlurLayer(Landroid/view/SurfaceControl;Ljava/lang/String;)V
.end method

.method public abstract hookShowBlurLayerFinish()V
.end method

.method public abstract hookStartActivityResult(ILandroid/graphics/Rect;)V
.end method

.method public abstract hookStartMultiWindow(ILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
.end method

.method public abstract hookStartMultiWindowAndMakeOwnAnimation(IIILandroid/graphics/Rect;Lcom/transsion/hubsdk/api/app/TranActivityTaskManager$TranWindowContainerTransactionCallback;)V
.end method

.method public abstract hookToMultiWindow(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract inMultiWindowMode()Z
.end method

.method public abstract isCanEnterMultiWin(Landroid/content/ComponentName;)Z
.end method

.method public abstract isHasMultiWindow()Z
.end method

.method public abstract isIMEShowing()Z
.end method

.method public abstract isKeyguardLocking()Z
.end method

.method public abstract isPCSourceDisplay(I)Z
.end method

.method public abstract isPinnedMode()Z
.end method

.method public abstract isResizableActivity()Z
.end method

.method public abstract isSecureWindow()Z
.end method

.method public abstract isSplitScreen()Z
.end method

.method public abstract isSupportMultiWindow()Z
.end method

.method public abstract isTheMainScreen(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract notAllowKeyguardGoingAwayQuickly(Z)V
.end method

.method public abstract notifyAuthenticateSucceed(Z)V
.end method

.method public abstract notifyKeyguardGoingAwayQuickly(Z)V
.end method

.method public abstract notifyLauncherPageTurning(Z)V
.end method

.method public abstract pauseTaskTopActivity(I)V
.end method

.method public abstract registerActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;Landroid/content/IntentFilter;)Z
.end method

.method public abstract registerMultiWindowWmShellListener(Landroid/os/IBinder;)V
.end method

.method public abstract removeAnimationIconLayer(Landroid/view/SurfaceControl;)V
.end method

.method public abstract removeRootTasksInWindowingModes([I)V
.end method

.method public abstract removeTask(I)Z
.end method

.method public abstract removeTaskPC(II)V
.end method

.method public abstract reparentActivity(IIZ)V
.end method

.method public abstract reparentTaskToDefaultTDA()V
.end method

.method public abstract requestHideDock()V
.end method

.method public abstract requestShowDock()V
.end method

.method public abstract setActivityController(Lcom/transsion/hubsdk/api/app/ITranActivityController;Z)V
.end method

.method public abstract setBoostSceneState(ILjava/lang/String;Z)V
.end method

.method public abstract setConnectBlackListToSystem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setFinishFixedRotationWithTransaction(Landroid/view/SurfaceControl;[F[FI)V
.end method

.method public abstract setFlingState(Z)V
.end method

.method public abstract setJankScenarioState(ILjava/lang/String;Z)V
.end method

.method public abstract setMultiEnableStateForOOBE(ZLandroid/os/Bundle;)V
.end method

.method public abstract setMultiWindowAcquireFocus(IZ)V
.end method

.method public abstract setMultiWindowBlackListToSystem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMultiWindowConfigToSystem(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMultiWindowExtendSize(II)V
.end method

.method public abstract setMultiWindowParams(Landroid/os/Bundle;)V
.end method

.method public abstract setMultiWindowWhiteListToSystem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMuteStateV4(ZI)V
.end method

.method public abstract setStartInMultiWindow(Ljava/lang/String;III)V
.end method

.method public abstract setStartInMultiWindowAsUser(Ljava/lang/String;IIII)V
.end method

.method public abstract setStartInMultiWindowWithBundle(Landroid/os/Bundle;IIII)V
.end method

.method public abstract setTbSpecialLayerState(ZI)V
.end method

.method public abstract setThunderbackAnimating(Z)V
.end method

.method public abstract startCurrentAppInMultiWindow(ZI)V
.end method

.method public abstract startLauncherAction(Landroid/content/Intent;I)V
.end method

.method public abstract stopTask(I)V
.end method

.method public abstract stopTaskPC(II)V
.end method

.method public abstract takeTaskSnapshot(IZ)Lcom/transsion/hubsdk/api/window/TranTaskSnapshot;
.end method

.method public abstract taskInMultiWindowById(I)Z
.end method

.method public abstract unRegisterActivityStarterExecutedObserver(Lcom/transsion/hubsdk/api/app/TranActivityStarterExecutedObserver;)Z
.end method

.method public abstract updateConfiguration(Landroid/content/res/Configuration;)Z
.end method

.method public abstract updateMediaMapForDynamicIsland(Ljava/lang/String;Z)V
.end method

.method public abstract updateZBoostTaskIdWhenToSplit(I)V
.end method
