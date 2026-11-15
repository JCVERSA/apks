.class public final Lcom/cloud/tmc/miniapp/ui/extension/PinForLaterExtensionKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final MC_APPID:Ljava/lang/String; = "1000886706715795456"

.field public static final RECENT_USED_SECNE_ID:Ljava/lang/String; = "100007"


# direct methods
.method private static final addToHomeScreen(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;)V
    .locals 8

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PIN_FOR_LATER_ADD_MC_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 14
    .line 15
    new-instance v3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "location"

    .line 21
    .line 22
    const-string v5, "7"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const-string v4, ""

    .line 30
    .line 31
    invoke-interface {v0, v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    const-class v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/StartActivityProxy;->getLauncherShortCutActivity()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v0, "get(StartActivityProxy::\u2026.launcherShortCutActivity"

    .line 47
    .line 48
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x10

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const-string v4, "7"

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    move-object v1, p0

    .line 58
    move-object v3, p1

    .line 59
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->createShortcut$default(Landroid/content/Context;Ljava/lang/Class;Lcom/cloud/tmc/integration/model/MiniAppCenterInfoData;Ljava/lang/String;IILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static final checkPinForLaterStatus(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "<this>"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/widget/StatusLayout;->OooOOOo:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getStatusLayout()Lcom/cloud/tmc/miniapp/widget/StatusLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :catchall_0
    :cond_0
    return-void
.end method

.method public static final getPinForLaterListener(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 25
    .line 26
    new-instance v2, Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/cloud/tmc/integration/model/AppInfoQuery;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, p0, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v2, ""

    .line 43
    .line 44
    const-string v3, "add_desktop"

    .line 45
    .line 46
    const-string v4, "title"

    .line 47
    .line 48
    const-class v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v6}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PIN_FOR_LATER_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 78
    .line 79
    new-instance v6, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    invoke-interface {v0, v1, v5, v2, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getTempAppName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getTempAppLogo()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PIN_FOR_LATER_EX:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 124
    .line 125
    new-instance v6, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    invoke-interface {v0, v1, v5, v2, v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_2
    return-object v1
.end method

.method private static final isExistShortcuts(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 2
    .line 3
    const-string v1, "1000886706715795456"

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final pinForLater(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 12

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    .line 24
    .line 25
    new-instance v2, Lcom/cloud/tmc/integration/model/AppInfoQuery;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Lcom/cloud/tmc/integration/model/AppInfoQuery;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, p0, v2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, ""

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getTempAppName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getTempAppLogo()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    move-object v3, v2

    .line 61
    :cond_2
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppModel;->getLogo()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    move-object v0, v2

    .line 68
    :cond_3
    move-object v11, v3

    .line 69
    move-object v3, v0

    .line 70
    move-object v0, v11

    .line 71
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_5

    .line 82
    .line 83
    const-class v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_PIN_FOR_LATER_CLICK:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 96
    .line 97
    new-instance v7, Landroid/os/Bundle;

    .line 98
    .line 99
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v8, "title"

    .line 103
    .line 104
    const-string v9, "add_desktop"

    .line 105
    .line 106
    invoke-virtual {v7, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    invoke-interface {v4, v5, v6, v2, v7}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    sget-object v4, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 115
    .line 116
    new-instance v5, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->getAppId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    if-nez v6, :cond_4

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    move-object v2, v6

    .line 126
    :goto_1
    invoke-direct {v5, v2, v0, v3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/16 v7, 0x20

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    const-string v3, "7"

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    const/4 v9, 0x1

    .line 136
    const/4 v10, 0x0

    .line 137
    move-object v0, v4

    .line 138
    move-object v1, p0

    .line 139
    move-object v2, v5

    .line 140
    move v4, v6

    .line 141
    move v5, v9

    .line 142
    move-object v6, v10

    .line 143
    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createShortcutByLogoUrl$default(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    return-void
.end method
