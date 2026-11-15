.class public final Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/AudioRecordBridge;->pause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6",
        "Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;",
        "onDenied",
        "",
        "onGranted",
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
.field final synthetic $app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic $audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/audio/recording/RecorderClient;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$app:Lcom/cloud/tmc/integration/structure/App;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "errMsg"

    .line 9
    .line 10
    const-string v3, "Audio failed with permission denied : A10011"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$app:Lcom/cloud/tmc/integration/structure/App;

    .line 16
    .line 17
    sget-object v3, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->INSTANCE:Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;

    .line 18
    .line 19
    invoke-virtual {v3, v2, v1}, Lcom/cloud/tmc/integration/audio/recording/RecorderUtils;->dispatchOnErrorListener(Lcom/cloud/tmc/integration/structure/App;Lcom/google/gson/JsonObject;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onGranted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$audioClient:Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->pauseRecording()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/AudioRecordBridge$pause$6;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
