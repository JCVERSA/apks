.class Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/out/SDKInitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mintegral/check/MBridgeSDKManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSDKInitStatusListener"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_FAILURE:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a(Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;)Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v0, "sdk initialize failed\uff1a an exception occurs"

    .line 11
    .line 12
    invoke-interface {p1, v0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeFailure(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public onInitSuccess()V
    .locals 3

    .line 1
    sget-object v0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;->SDK_STATE_INITIALIZE_SUCCESS:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/mintegral/check/MBridgeSDKManager;->a(Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;)Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeState;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->c:Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/hisavana/mintegral/check/MBridgeSDKManager$DefaultSDKInitStatusListener;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/hisavana/mintegral/check/MBridgeSDKManager$MBridgeSDKInitializeListener;->onInitializeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
