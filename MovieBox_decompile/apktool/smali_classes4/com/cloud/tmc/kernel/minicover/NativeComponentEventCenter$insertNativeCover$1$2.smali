.class public final Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->insertNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "com/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "innerCallback",
        "",
        "getInnerCallback",
        "()Ljava/lang/String;",
        "innerRender",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "getInnerRender",
        "()Lcom/cloud/tmc/kernel/render/IRender;",
        "onFailed",
        "",
        "errorCode",
        "errMsg",
        "onSuccess",
        "com.cloud.tmc.kernel"
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
.field final synthetic $component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

.field private final innerCallback:Ljava/lang/String;

.field private final innerRender:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getInnerCallback()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInnerRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errMsg"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    .line 18
    .line 19
    const/16 v7, 0x10

    .line 20
    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    move-object v4, p1

    .line 24
    move-object v5, p2

    .line 25
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 10

    .line 1
    const-string v0, "NativeComponentEventCenter"

    .line 2
    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onResume()V

    .line 10
    .line 11
    .line 12
    const-class v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 21
    .line 22
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-interface {v3, v4}, Lcom/cloud/tmc/kernel/minicover/NativeComponentProxy;->checkResumedStatus(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    const-string v3, "insertNativeCover onPause"

    .line 33
    .line 34
    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onPause()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Lcom/cloud/tmc/kernel/minicover/lifecycle/BaseComponentLifecycle;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v5, "onSuccess: "

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$insertNativeCover$1$2;->innerCallback:Ljava/lang/String;

    .line 72
    .line 73
    const/16 v8, 0x30

    .line 74
    .line 75
    const/4 v9, 0x0

    .line 76
    const-string v3, "insertNativeCover"

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v1, v0

    .line 81
    invoke-static/range {v1 .. v9}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    return-void
.end method
