.class public final Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->openBluetoothAdapter(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public OooO00o(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->access$getTAG$p(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "openBluetoothAdapter -> code: "

    .line 13
    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    cmp-long v0, p1, v0

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v4, 0x0

    .line 44
    move-wide v2, p1

    .line 45
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO00o:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;->OooO0O0:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 52
    .line 53
    const/4 v5, 0x4

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v4, 0x0

    .line 56
    move-wide v2, p1

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
