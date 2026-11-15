.class public final Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 7

    .line 1
    const-string v0, "serviceUUID"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "characteristicUUID"

    .line 7
    .line 8
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "value"

    .line 12
    .line 13
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v6, "writeBLECharacteristicValue notify -> serviceUUID: "

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v6, " ; characteristicUUID: "

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v6, " ; value: "

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, " ; status: "

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 71
    .line 72
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 73
    .line 74
    sget-object v5, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/HexUtil;->formatHexString([B)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {v2, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    const-string v0, "status"

    .line 101
    .line 102
    invoke-static {v0, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [Lkotlin/Pair;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    aput-object p1, v0, v1

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    aput-object p2, v0, p1

    .line 114
    .line 115
    const/4 p1, 0x2

    .line 116
    aput-object p3, v0, p1

    .line 117
    .line 118
    const/4 p1, 0x3

    .line 119
    aput-object p4, v0, p1

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v3, v4, v5, v6, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->access$sendSuccess(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method
