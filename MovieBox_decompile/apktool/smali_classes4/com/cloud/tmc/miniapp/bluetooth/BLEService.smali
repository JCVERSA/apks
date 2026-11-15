.class public final Lcom/cloud/tmc/miniapp/bluetooth/BLEService;
.super Landroid/app/Service;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final synthetic OooOO0O:I


# instance fields
.field public final OooO:Landroid/os/IBinder;

.field public OooO00o:Landroid/bluetooth/BluetoothManager;

.field public OooO0O0:Landroid/bluetooth/BluetoothAdapter;

.field public OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

.field public OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

.field public OooO0o:Landroid/bluetooth/BluetoothGatt;

.field public OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final OooOO0:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO:Landroid/os/IBinder;

    .line 25
    .line 26
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0:Landroid/bluetooth/BluetoothGattCallback;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    .line 18
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)J
    .locals 2

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    .line 10
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_PERMISSION:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 14
    :cond_3
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o:Landroid/bluetooth/BluetoothGatt;

    .line 15
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oO:Ljava/lang/String;

    .line 16
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0

    .line 17
    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NO_DEVICE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public final OooO00o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    return-object v0
.end method

.method public OooO00o(I)V
    .locals 8

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcBluetooth"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, p1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 36
    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V

    return-void
.end method

.method public OooO00o(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TmcBluetooth"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    move-result-wide v0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v2}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    const-string v5, ""

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    const-string v6, "result?.device?.address ?: \"\""

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const-string v6, "address"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 30
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v5, "result?.device?.name ?: \"\""

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    :goto_3
    const-string v4, "name"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_5

    .line 31
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "RSSI"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "scan_result"

    invoke-virtual {p1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    const-string p2, "com.cloud.tmc.bluetooth.le.ACTION_SCAN_RESULT"

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 2

    .line 19
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 21
    const-string v1, "code"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 22
    invoke-virtual {p1, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public OooO00o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final OooO00o(Lkotlin/jvm/functions/Function2;)V
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
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final OooO0O0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method

.method public final OooO0OO()V
    .locals 5

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const-string v4, "scan"

    .line 19
    .line 20
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    const-string v4, "avaliable"

    .line 34
    .line 35
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    const-string v3, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_BLUETOOTH_ADAPTER_STATE_CHANGE"

    .line 41
    .line 42
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1f

    .line 17
    .line 18
    if-le v0, v1, :cond_1

    .line 19
    .line 20
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
