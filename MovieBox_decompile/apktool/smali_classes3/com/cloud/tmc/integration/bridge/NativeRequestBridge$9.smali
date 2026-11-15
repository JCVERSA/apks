.class Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$mProgress:[I

.field final synthetic val$progressStep:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;[II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$mProgress:[I

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$progressStep:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, ""

    .line 16
    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {v0, p2, p3, p4}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "response"

    .line 11
    .line 12
    invoke-virtual {p1, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p2, "callbackId"

    .line 16
    .line 17
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 21
    .line 22
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$mProgress:[I

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    aget v0, p1, p3

    .line 9
    .line 10
    if-lt p2, v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$progressStep:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    aput v0, p1, p3

    .line 16
    .line 17
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance p3, Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "progress"

    .line 32
    .line 33
    invoke-virtual {p3, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const-string p4, "totalBytesWritten"

    .line 41
    .line 42
    invoke-virtual {p3, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string p4, "totalBytesExpectedToWrite"

    .line 50
    .line 51
    invoke-virtual {p3, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "onProgress"

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$9;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 60
    .line 61
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void
.end method
