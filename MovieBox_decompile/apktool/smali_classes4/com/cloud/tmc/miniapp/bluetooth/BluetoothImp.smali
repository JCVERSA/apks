.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Landroid/content/Context;

.field public OooO0OO:Landroid/content/Intent;

.field public OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

.field public OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

.field public OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

.field public OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

.field public final OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOO:Landroid/content/BroadcastReceiver;

.field public final OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;",
            ">;"
        }
    .end annotation
.end field

.field public OooOOOO:Landroid/content/BroadcastReceiver;

.field public final OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BluetoothImp"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$mGattUpdateReceiver$1;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    .line 50
    .line 51
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    .line 57
    .line 58
    return-void
.end method

.method public static final synthetic access$getAdapterCallback$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getAdapterStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCharacteristicValueChangeListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getConnectStateListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDeviceFoundListener$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDeviceServicesListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getReadListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getWriteListeners$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$init(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    .line 18
    .line 19
    new-instance p2, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 22
    .line 23
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0OO:Landroid/content/Intent;

    .line 27
    .line 28
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->addCommonIntentParameter(Landroid/content/Intent;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0OO:Landroid/content/Intent;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    .line 38
    .line 39
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_DEVICE_CONNECT_STATE"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_READ_CHARACTERISTIC"

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_WRITE_CHARACTERISTIC"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_CHARACTERISTIC"

    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v1, 0x21

    .line 85
    .line 86
    if-lt v0, v1, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    .line 89
    .line 90
    const/4 v1, 0x4

    .line 91
    invoke-static {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    .line 96
    .line 97
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 103
    .line 104
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    .line 108
    .line 109
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    .line 114
    .line 115
    const-string p1, "BluetoothManager already init"

    .line 116
    .line 117
    invoke-static {p0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 123
    .line 124
    .line 125
    move-result-wide p0

    .line 126
    invoke-interface {p2, p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;->OooO00o(J)V

    .line 127
    .line 128
    .line 129
    :goto_1
    return-void
.end method

.method public static final synthetic access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public closeBLEConnection(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :goto_0
    return-wide v0
.end method

.method public closeBluetoothAdapter()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1f

    .line 15
    .line 16
    if-le v2, v3, :cond_0

    .line 17
    .line 18
    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 19
    .line 20
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    .line 40
    .line 41
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO()V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOo:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOOO:Landroid/content/BroadcastReceiver;

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO00o:Ljava/lang/String;

    .line 107
    .line 108
    const-string v1, "closeBluetoothAdapter  -> "

    .line 109
    .line 110
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public createBLEConnection(Ljava/lang/String;)J
    .locals 4

    .line 1
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 20
    .line 21
    if-eqz v1, :cond_9

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->ALREADY_CONNECION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v2, 0x1f

    .line 70
    .line 71
    if-le v0, v2, :cond_4

    .line 72
    .line 73
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const/4 v0, 0x1

    .line 105
    if-ne p1, v0, :cond_5

    .line 106
    .line 107
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->CONNECTION_FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_0

    .line 131
    :cond_7
    move-object v0, v2

    .line 132
    :goto_0
    if-eqz v0, :cond_8

    .line 133
    .line 134
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0:Landroid/bluetooth/BluetoothGattCallback;

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :cond_8
    iput-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 142
    .line 143
    iput-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    .line 144
    .line 145
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 148
    .line 149
    .line 150
    move-result-wide v0

    .line 151
    goto :goto_1

    .line 152
    :cond_9
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    :goto_1
    return-wide v0
.end method

.method public getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    iget-object v1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-static {p1, v3, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "it.characteristics"

    .line 75
    .line 76
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    return-object v0
.end method

.method public getBLEDeviceCharacteristicsMap(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "uuid"

    .line 47
    .line 48
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v3, "properties"

    .line 61
    .line 62
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v3, 0x2

    .line 67
    new-array v3, v3, [Lkotlin/Pair;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    aput-object v2, v3, v4

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    aput-object v1, v3, v2

    .line 74
    .line 75
    invoke-static {v3}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method public getBLEDeviceServices(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;)V
    .locals 4

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v2, 0x1f

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 71
    .line 72
    .line 73
    move-result-wide v2

    .line 74
    cmp-long v2, v0, v2

    .line 75
    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;->OooO00o(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0O:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public getBluetoothAdapterState(Lkotlin/jvm/functions/Function2;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lkotlin/jvm/functions/Function2;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public getConnectedBluetoothDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-object v0
.end method

.method public getConnectedBluetoothDevicesMap()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x1f

    .line 13
    .line 14
    if-le v2, v3, :cond_0

    .line 15
    .line 16
    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, "name"

    .line 50
    .line 51
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "address"

    .line 60
    .line 61
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v4, 0x2

    .line 66
    new-array v4, v4, [Lkotlin/Pair;

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    aput-object v3, v4, v5

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    aput-object v2, v4, v3

    .line 73
    .line 74
    invoke-static {v4}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    return-object v1
.end method

.method public notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 4

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "characteristicUUID"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_9

    .line 16
    .line 17
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    if-eqz v0, :cond_8

    .line 64
    .line 65
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 66
    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    const-string p2, "characteristic"

    .line 70
    .line 71
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v1, 0x1f

    .line 77
    .line 78
    if-le p2, v1, :cond_3

    .line 79
    .line 80
    const-string p2, "android.permission.BLUETOOTH_SCAN"

    .line 81
    .line 82
    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 91
    .line 92
    .line 93
    move-result-wide p1

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1, v0, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_5

    .line 104
    .line 105
    const-string p2, "00002902-0000-1000-8000-00805f9b34fb"

    .line 106
    .line 107
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    const-string p3, "getDescriptor(UUID.fromS\u2026T_CHARACTERISTIC_CONFIG))"

    .line 118
    .line 119
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 123
    .line 124
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 128
    .line 129
    .line 130
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 133
    .line 134
    .line 135
    move-result-wide p1

    .line 136
    goto :goto_1

    .line 137
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC_DESCRIPTOR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 147
    .line 148
    .line 149
    move-result-wide p1

    .line 150
    goto :goto_1

    .line 151
    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 154
    .line 155
    .line 156
    move-result-wide p1

    .line 157
    goto :goto_1

    .line 158
    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 161
    .line 162
    .line 163
    move-result-wide p1

    .line 164
    :goto_1
    return-wide p1

    .line 165
    :cond_8
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 168
    .line 169
    .line 170
    move-result-wide p1

    .line 171
    return-wide p1

    .line 172
    :cond_9
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 175
    .line 176
    .line 177
    move-result-wide p1

    .line 178
    return-wide p1
.end method

.method public offBLECharacteristicValueChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;->OooO00o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public offBLEConnectionStateChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;->OooO00o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public offBluetoothAdapterStateChange(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;->OooO00o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public offBluetoothDeviceFound(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;->OooO00o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onBLECharacteristicValueChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;)V
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "listener"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;

    .line 12
    .line 13
    return-void
.end method

.method public onBLEConnectionStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;)V
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "listener"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;

    .line 12
    .line 13
    return-void
.end method

.method public onBluetoothAdapterStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;)V
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "bluetoothAdapterStateListener"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oO:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;

    .line 12
    .line 13
    return-void
.end method

.method public onBluetoothDeviceFound(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;)V
    .locals 1

    .line 1
    const-string v0, "callbackId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "listener"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;

    .line 12
    .line 13
    return-void
.end method

.method public openBluetoothAdapter(Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V
    .locals 4

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v1, 0x1f

    .line 14
    .line 15
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 16
    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 20
    .line 21
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 22
    .line 23
    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 24
    .line 25
    filled-new-array {v3, v0, v1, v2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    filled-new-array {v2}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0OO;

    .line 55
    .line 56
    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->callback(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->request()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J
    .locals 4

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "characteristicUUID"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_8

    .line 21
    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x0

    .line 39
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-static {p2, v2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    move-object v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    if-eqz v0, :cond_7

    .line 69
    .line 70
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOO0o:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 71
    .line 72
    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    const-string p2, "characteristic"

    .line 80
    .line 81
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 p3, 0x1f

    .line 87
    .line 88
    if-le p2, p3, :cond_3

    .line 89
    .line 90
    const-string p2, "android.permission.BLUETOOTH_SCAN"

    .line 91
    .line 92
    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    if-eqz p2, :cond_3

    .line 97
    .line 98
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 101
    .line 102
    .line 103
    move-result-wide p1

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 106
    .line 107
    if-eqz p1, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 118
    .line 119
    .line 120
    move-result-wide p1

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 125
    .line 126
    .line 127
    move-result-wide p1

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 132
    .line 133
    .line 134
    move-result-wide p1

    .line 135
    goto :goto_1

    .line 136
    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 139
    .line 140
    .line 141
    move-result-wide p1

    .line 142
    :goto_1
    return-wide p1

    .line 143
    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 146
    .line 147
    .line 148
    move-result-wide p1

    .line 149
    return-wide p1

    .line 150
    :cond_8
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 153
    .line 154
    .line 155
    move-result-wide p1

    .line 156
    return-wide p1
.end method

.method public startBluetoothDevicesDiscovery(Ljava/util/List;I)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .line 1
    const-string v0, "serviceUUIDS"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "startBluetoothDevicesDiscovery -> serviceUUIDS:"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, "powerLevel:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0O0:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v2, "location"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    check-cast v1, Landroid/location/LocationManager;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string v2, "gps"

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :goto_1
    if-nez v1, :cond_2

    .line 52
    .line 53
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_POSITION_FUNCTION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    return-wide p1

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 61
    .line 62
    if-eqz v1, :cond_8

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_3

    .line 72
    .line 73
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_3
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 82
    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 88
    .line 89
    .line 90
    move-result-wide p1

    .line 91
    goto/16 :goto_3

    .line 92
    .line 93
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_5

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .line 114
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 115
    .line 116
    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const-string v3, "Builder().setServiceUuid\u2026d.fromString(it)).build()"

    .line 132
    .line 133
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 141
    .line 142
    const/16 v2, 0x1f

    .line 143
    .line 144
    if-le p1, v2, :cond_6

    .line 145
    .line 146
    const-string p1, "android.permission.BLUETOOTH_SCAN"

    .line 147
    .line 148
    invoke-static {v1, p1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 157
    .line 158
    .line 159
    move-result-wide p1

    .line 160
    goto :goto_3

    .line 161
    :cond_6
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 162
    .line 163
    if-eqz p1, :cond_7

    .line 164
    .line 165
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 166
    .line 167
    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, p2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    iget-object v2, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    .line 179
    .line 180
    invoke-virtual {p1, v0, p2, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, v1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    .line 185
    const/4 p2, 0x1

    .line 186
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 187
    .line 188
    .line 189
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 192
    .line 193
    .line 194
    move-result-wide p1

    .line 195
    goto :goto_3

    .line 196
    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 199
    .line 200
    .line 201
    move-result-wide p1

    .line 202
    goto :goto_3

    .line 203
    :cond_8
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 206
    .line 207
    .line 208
    move-result-wide p1

    .line 209
    :goto_3
    return-wide p1
.end method

.method public stopBluetoothDevicesDiscovery()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;[BLcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J
    .locals 5

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "characteristicUUID"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "value"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "listener"

    .line 17
    .line 18
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_8

    .line 26
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->getBLEDeviceCharacteristics(Ljava/lang/String;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v1, 0x0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-static {p2, v3, v4}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    move-object v1, v2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-eqz v1, :cond_7

    .line 74
    .line 75
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooOOO0:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 76
    .line 77
    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->OooO0o0:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 81
    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    const-string p2, "characteristic"

    .line 85
    .line 86
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 93
    .line 94
    .line 95
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 96
    .line 97
    const/16 p3, 0x1f

    .line 98
    .line 99
    if-le p2, p3, :cond_3

    .line 100
    .line 101
    const-string p2, "android.permission.BLUETOOTH_SCAN"

    .line 102
    .line 103
    invoke-static {p1, p2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 112
    .line 113
    .line 114
    move-result-wide p1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 125
    .line 126
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 129
    .line 130
    .line 131
    move-result-wide p1

    .line 132
    goto :goto_1

    .line 133
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 136
    .line 137
    .line 138
    move-result-wide p1

    .line 139
    goto :goto_1

    .line 140
    :cond_5
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 143
    .line 144
    .line 145
    move-result-wide p1

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 150
    .line 151
    .line 152
    move-result-wide p1

    .line 153
    :goto_1
    return-wide p1

    .line 154
    :cond_7
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->N0_CHARACTERISTIC:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 157
    .line 158
    .line 159
    move-result-wide p1

    .line 160
    return-wide p1

    .line 161
    :cond_8
    :goto_2
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 164
    .line 165
    .line 166
    move-result-wide p1

    .line 167
    return-wide p1
.end method
