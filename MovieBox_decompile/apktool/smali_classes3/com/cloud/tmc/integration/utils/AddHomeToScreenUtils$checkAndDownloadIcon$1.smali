.class public final Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->checkAndDownloadIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1",
        "Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;",
        "onFail",
        "",
        "onSuccess",
        "path",
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
.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $appName:Ljava/lang/String;

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $currentLogoUrlMd5:Ljava/lang/String;

.field final synthetic $sm:Landroid/content/pm/ShortcutManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$appId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$appName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$sm:Landroid/content/pm/ShortcutManager;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$currentLogoUrlMd5:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$getTAG$p()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$appId:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "add shortcut fail,appId:"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$appId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$appName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$sm:Landroid/content/pm/ShortcutManager;

    .line 15
    .line 16
    const-string v0, "sm"

    .line 17
    .line 18
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v7, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$currentLogoUrlMd5:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v8, p0, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils$checkAndDownloadIcon$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 24
    .line 25
    move-object v5, p1

    .line 26
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->access$requestUpdateAddhomeIcon(Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ShortcutManager;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
