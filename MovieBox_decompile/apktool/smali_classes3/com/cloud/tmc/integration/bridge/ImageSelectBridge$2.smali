.class Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->previewImage(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$current:I

.field final synthetic val$finalUrlsArray:Lcom/google/gson/JsonArray;

.field final synthetic val$showmenu:Z


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;Lcom/google/gson/JsonArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->this$0:Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$showmenu:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$current:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$finalUrlsArray:Lcom/google/gson/JsonArray;

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
    .locals 4

    .line 1
    const-class v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/integration/proxy/DialogProxy;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$context:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v0, v1, v2, v2}, Lcom/cloud/tmc/integration/proxy/DialogProxy;->showStoragePermissionDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils;->create()Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "errMsg"

    .line 24
    .line 25
    const-string v3, "Failed preview image, no permission : PI002"

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$showmenu:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$current:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge$2;->val$finalUrlsArray:Lcom/google/gson/JsonArray;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/bridge/ImageSelectBridge;->d(ZILcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Landroid/content/Context;Lcom/google/gson/JsonArray;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
