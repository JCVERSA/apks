.class public final Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 2
    .line 3
    const-string v0, "null cannot be cast to non-null type com.cloud.tmc.miniapp.bluetooth.BLEService.LocalBinder"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getAdapterCallback$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_7

    .line 22
    .line 23
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$getBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;)Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_6

    .line 30
    .line 31
    const-string v0, "bluetooth"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v1, v0, Landroid/bluetooth/BluetoothManager;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move-object v0, v2

    .line 46
    :goto_0
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move-object v0, v2

    .line 56
    :goto_1
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_2
    iput-object v2, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 65
    .line 66
    new-instance v0, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    .line 67
    .line 68
    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;-><init>(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0$OooO00o;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0Oo:Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0;

    .line 72
    .line 73
    iget-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o:Landroid/bluetooth/BluetoothManager;

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0O0:Landroid/bluetooth/BluetoothAdapter;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v1, p2, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 82
    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v1, 0x1

    .line 91
    if-ne v0, v1, :cond_4

    .line 92
    .line 93
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0OO()V

    .line 94
    .line 95
    .line 96
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_AVALIABLE:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    goto :goto_3

    .line 110
    :cond_5
    :goto_2
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->NOT_INIT:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 118
    .line 119
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    :goto_3
    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;->OooO00o(J)V

    .line 124
    .line 125
    .line 126
    :cond_7
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp$OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;->access$setBleService$p(Lcom/cloud/tmc/miniapp/bluetooth/BluetoothImp;Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
