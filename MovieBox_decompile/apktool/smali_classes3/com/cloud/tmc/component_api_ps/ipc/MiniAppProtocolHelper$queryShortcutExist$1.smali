.class public final Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a2\u0006\u0002\u0010\u0008J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper$queryShortcutExist$1",
        "Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;",
        "onFailed",
        "",
        "errorCode",
        "",
        "failedMsg",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
        "onSuccess",
        "bundle",
        "Landroid/os/Bundle;",
        "com.cloud.tmc.component_api_ps"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$getQuerySingleShortcutCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p2, ""

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$setQuerySingleShortcutCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :goto_1
    const-string p2, "MiniAppProtocolHelper"

    .line 21
    .line 22
    const-string v0, "cleanMiniAppStorageByAppId Throwable ="

    .line 23
    .line 24
    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_2
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "MiniAppProtocolHelper"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v2, "resultJsonData"

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move-object p1, v1

    .line 16
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "queryShortcutExist = "

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v0, v2}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$getQuerySingleShortcutCallback$p()Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v2, p1}, Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;->onSuccess(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-static {v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolHelper;->access$setQuerySingleShortcutCallback$p(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/IMiniAppInvokeDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    const-string v1, "cleanMiniAppStorageByAppId Throwable ="

    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/component_api_ps/MiniAppProtocolModuleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    :goto_2
    return-void
.end method
