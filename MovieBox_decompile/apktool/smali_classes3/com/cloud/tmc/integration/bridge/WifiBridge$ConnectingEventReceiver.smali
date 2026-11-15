.class public final Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/WifiBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ConnectingEventReceiver"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "netId",
        "",
        "countDownLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "(Lcom/cloud/tmc/integration/bridge/WifiBridge;ILjava/util/concurrent/CountDownLatch;)V",
        "errorReason",
        "getErrorReason",
        "()I",
        "setErrorReason",
        "(I)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
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
.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private errorReason:I

.field private final netId:I

.field final synthetic this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/bridge/WifiBridge;ILjava/util/concurrent/CountDownLatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "countDownLatch"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->this$0:Lcom/cloud/tmc/integration/bridge/WifiBridge;

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 9
    .line 10
    .line 11
    iput p2, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->netId:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->errorReason:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getErrorReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->errorReason:I

    .line 2
    .line 3
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "intent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x1

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v0, "supplicantError"

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iput v1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->errorReason:I

    .line 35
    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "wifi"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "null cannot be cast to non-null type android.net.wifi.WifiManager"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 60
    .line 61
    const-string v0, "networkInfo"

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/net/NetworkInfo;

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 p2, 0x0

    .line 77
    :goto_0
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 78
    .line 79
    if-ne p2, v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    iget v0, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->netId:I

    .line 90
    .line 91
    if-ne p2, v0, :cond_3

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object p2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 98
    .line 99
    if-ne p1, p2, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->errorReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    return-void

    .line 110
    :goto_1
    const-string p2, "WifiBridge"

    .line 111
    .line 112
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method

.method public final setErrorReason(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/bridge/WifiBridge$ConnectingEventReceiver;->errorReason:I

    .line 2
    .line 3
    return-void
.end method
