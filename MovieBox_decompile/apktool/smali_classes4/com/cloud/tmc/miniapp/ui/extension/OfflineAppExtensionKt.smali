.class public final Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineAppExtension"

.field private static final offlineAppViews:I = 0x4


# direct methods
.method public static final synthetic access$getOfflineAppViews$p()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final createShortCutsSuccess(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final createShortCutsSuccess(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/widget/StatusLayout;",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static final offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppOnResume(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static final offlineAppOnResume(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppOnResume(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static final offlineAppUpdate(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static final offlineAppUpdate(Lcom/cloud/tmc/miniapp/widget/StatusLayout;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private static final realCreateShortCutsSuccess(Ljava/lang/String;Landroid/widget/LinearLayout;Lkotlin/jvm/functions/Function3;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    move-object v3, v2

    .line 17
    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    move-object v2, v3

    .line 22
    check-cast v2, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 23
    .line 24
    :cond_1
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2, p0, p2}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p2, "offlineAppOnResume fail:"

    .line 35
    .line 36
    invoke-static {p1, p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    return-void
.end method

.method private static final realOfflineAppOnResume(Landroid/widget/LinearLayout;)V
    .locals 5

    .line 1
    :try_start_0
    sget v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppViews:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/core/view/ViewGroupKt;->get(Landroid/view/ViewGroup;I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    goto :goto_1

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    move-object v3, v2

    .line 17
    :goto_1
    instance-of v4, v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    check-cast v3, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    move-object v3, v2

    .line 25
    :goto_2
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3, v2, v2}, Lcom/cloud/tmc/miniapp/widget/OfflineAppView;->OooO00o(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_3
    sget-object v0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "offlineAppOnResume fail:"

    .line 36
    .line 37
    invoke-static {v0, v1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method private static final realOfflineAppUpdate(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils;->getNetworkStatus()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_1

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    sget-object p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p2, "NetworkUtils.getNetworkStatus:"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 46
    .line 47
    const-string v3, "offlineAppsSwitch"

    .line 48
    .line 49
    invoke-interface {v0, v3, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    if-nez p3, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    sget-object p0, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    const-string p1, "offlineAppsSwitch is close"

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;->SCAN_PINFORLATER:Lcom/cloud/tmc/miniapp/offlineapps/ScanScene;

    .line 70
    .line 71
    new-instance v1, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;

    .line 72
    .line 73
    invoke-direct {v1, p3, p1, p2, p0}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt$realOfflineAppUpdate$1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "scanScene"

    .line 77
    .line 78
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1, v0, v1}, Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO0O0;->OooO00o(ZLcom/cloud/tmc/miniapp/offlineapps/ScanScene;Lcom/cloud/tmc/miniapp/offlineapps/scan/OooO00o;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
