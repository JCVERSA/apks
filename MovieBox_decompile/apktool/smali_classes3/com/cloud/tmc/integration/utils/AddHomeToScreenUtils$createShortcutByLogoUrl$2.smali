.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->createShortcutByLogoUrl(Landroid/content/Context;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ZZLcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0012\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2",
        "Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;",
        "onDenied",
        "",
        "onGranted",
        "obj",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $addHomeType:I

.field final synthetic $bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fromLocation:Ljava/lang/String;

.field final synthetic $scClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $showSuccessToast:Z


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$addHomeType:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$scClass:Ljava/lang/Class;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$showSuccessToast:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->getAppMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-class v1, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AddToHomeScreenStore;->getStore()Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 59
    .line 60
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v5, "\u53d1\u9001 addHomeToScreen callback received"

    .line 65
    .line 66
    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v4, "isExist"

    .line 70
    .line 71
    sget-object v5, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v5, v2, v3}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v4, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method public onGranted(Ljava/lang/Object;)V
    .locals 10

    .line 1
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;->getAppId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "location"

    .line 23
    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const-string v2, "second_add_cl"

    .line 30
    .line 31
    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->recordForCommon(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 35
    .line 36
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$bean:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$fromLocation:Ljava/lang/String;

    .line 39
    .line 40
    iget v6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$addHomeType:I

    .line 41
    .line 42
    iget-object v7, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$context:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v8, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$scClass:Ljava/lang/Class;

    .line 45
    .line 46
    iget-boolean v9, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$createShortcutByLogoUrl$2;->$showSuccessToast:Z

    .line 47
    .line 48
    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$requestAddHome(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/Class;Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
