.class public final Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->updateNativeCover(Lcom/cloud/tmc/kernel/render/IRender;Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "com/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "innerCallbackId",
        "",
        "getInnerCallbackId",
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

.field private final innerCallbackId:Ljava/lang/String;

.field private final innerRender:Lcom/cloud/tmc/kernel/render/IRender;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerCallbackId:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getInnerCallbackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerCallbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInnerRender()Lcom/cloud/tmc/kernel/render/IRender;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

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
    sget-object v1, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerCallbackId:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v4, p1

    .line 22
    move-object v5, p2

    .line 23
    invoke-static/range {v1 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendErrorMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onSuccess()V
    .locals 9

    .line 1
    sget-object v0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerRender:Lcom/cloud/tmc/kernel/render/IRender;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->$component:Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const-string v2, ""

    .line 14
    .line 15
    :cond_0
    move-object v3, v2

    .line 16
    iget-object v4, p0, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter$updateNativeCover$1$2;->innerCallbackId:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v7, 0x30

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const-string v2, "updateNativeCover"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-static/range {v0 .. v8}, Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;->sendSuccessMsgToRender$default(Lcom/cloud/tmc/kernel/minicover/NativeComponentEventCenter;Lcom/cloud/tmc/kernel/render/IRender;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
