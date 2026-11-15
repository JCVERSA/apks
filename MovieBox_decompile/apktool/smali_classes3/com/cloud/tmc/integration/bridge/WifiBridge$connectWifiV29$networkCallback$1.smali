.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;->connectWifiV29(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
        "onUnavailable",
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
.field final synthetic $callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field final synthetic $connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $isFinished:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/net/ConnectivityManager;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$isFinished:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$connectivityManager:Landroid/net/ConnectivityManager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$isFinished:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$connectivityManager:Landroid/net/ConnectivityManager;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    cmp-long p1, v0, v2

    .line 35
    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onUnavailable()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$isFinished:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/google/gson/JsonObject;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v2, 0x2eea

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "errCode"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "errMsg"

    .line 30
    .line 31
    const-string v3, "system internal error: W12010"

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-wide/16 v2, 0x0

    .line 46
    .line 47
    cmp-long v0, v0, v2

    .line 48
    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$connectWifiV29$networkCallback$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
