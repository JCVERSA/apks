.class Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Lcom/cloud/tmc/integration/structure/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

.field final synthetic val$app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$downloadPath:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$finalName:Ljava/lang/String;

.field final synthetic val$mProgress:[I

.field final synthetic val$progressStep:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;[IILjava/lang/String;Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$mProgress:[I

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$progressStep:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$filePath:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$downloadPath:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$finalName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p4, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->this$0:Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, ""

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p4, p2, p3, p5}, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;->a(Lcom/cloud/tmc/integration/bridge/NativeRequestBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 32
    .line 33
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/cloud/tmc/integration/utils/FileUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/FileUtil;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkMiniAppFileSizeStatus(Lcom/cloud/tmc/integration/structure/App;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$filePath:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    sget-object p1, Lcom/cloud/tmc/integration/utils/FilePathUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/FilePathUtils;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/utils/FilePathUtils;->getDowngradeStatus(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 30
    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getImageResourceManagerProxy()Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$downloadPath:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 38
    .line 39
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$finalName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {p1, v1, v2, v3}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    move-object v5, v0

    .line 50
    move-object v0, p1

    .line 51
    move-object p1, v5

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 54
    .line 55
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$downloadPath:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 62
    .line 63
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$finalName:Ljava/lang/String;

    .line 68
    .line 69
    const-string v4, "temp_data"

    .line 70
    .line 71
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$filePath:Ljava/lang/String;

    .line 77
    .line 78
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 79
    .line 80
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "tempFilePath"

    .line 85
    .line 86
    invoke-virtual {v2, v3, v0}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "filePath"

    .line 91
    .line 92
    invoke-virtual {v0, v2, p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "callbackId"

    .line 97
    .line 98
    invoke-virtual {p1, v0, p2}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v1, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->close()V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lcom/cloud/tmc/integration/utils/FileUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/FileUtil;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$app:Lcom/cloud/tmc/integration/structure/App;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/integration/utils/FileUtil;->checkMiniAppFileSizeStatus(Lcom/cloud/tmc/integration/structure/App;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method

.method public onPrepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$mProgress:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget v1, p1, v0

    .line 9
    .line 10
    if-lt p2, v1, :cond_0

    .line 11
    .line 12
    iget v2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$progressStep:I

    .line 13
    .line 14
    add-int/2addr v1, v2

    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v1, "progress"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

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
    invoke-virtual {v0, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

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
    invoke-virtual {v0, p4, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 52
    .line 53
    .line 54
    const-string p2, "callbackId"

    .line 55
    .line 56
    invoke-virtual {v0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p2, "onProgress"

    .line 60
    .line 61
    invoke-virtual {p1, p2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/cloud/tmc/integration/bridge/NativeRequestBridge$5;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 65
    .line 66
    invoke-interface {p2, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendJSONResponse(Lcom/google/gson/JsonObject;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method
