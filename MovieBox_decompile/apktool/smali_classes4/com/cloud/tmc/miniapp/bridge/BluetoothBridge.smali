.class public final Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/extension/BridgeExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

.field public static final EXTEA_AVALIABLE:Ljava/lang/String; = "available"

.field public static final EXTEA_DISCOVERING:Ljava/lang/String; = "discovering"


# instance fields
.field public final OooO00o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->Companion:Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TmcBluetoothBridge"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$sendFail(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$sendSuccess(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "errCode"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->values()[Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    cmp-long v5, p2, v5

    .line 32
    .line 33
    if-nez v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getDescript()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object p2, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->FAIL:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getDescript()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_1
    const-string p3, "errMsg"

    .line 50
    .line 51
    invoke-virtual {v0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-eqz p4, :cond_2

    .line 55
    .line 56
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/4 p2, 0x0

    .line 68
    :goto_2
    if-eqz p2, :cond_3

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    const/4 p4, 0x1

    .line 75
    if-ne p3, p4, :cond_3

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    check-cast p3, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    check-cast p4, Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendFailResponse(Lcom/google/gson/JsonObject;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method public final OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const-string p3, "code"

    .line 13
    .line 14
    invoke-virtual {v0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    :goto_0
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    const/4 p4, 0x1

    .line 38
    if-ne p3, p4, :cond_1

    .line 39
    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    check-cast p4, Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->sendSuccessResponse(Lcom/google/gson/JsonObject;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public synthetic callbackFail(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/kernel/extension/a;->a(Lcom/cloud/tmc/kernel/extension/BridgeExtension;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final closeBLEConnection(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "address"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "closeBLEConnection -> code: "

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->closeBLEConnection(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    cmp-long p1, v4, v0

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    const/4 v7, 0x4

    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    move-object v2, p0

    .line 57
    move-object v3, p2

    .line 58
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v7, 0x4

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    move-object v2, p0

    .line 66
    move-object v3, p2

    .line 67
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    const/4 v6, 0x4

    .line 78
    const/4 v7, 0x0

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v1, p0

    .line 81
    move-object v2, p2

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    return-void
.end method

.method public final closeBluetoothAdapter(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->closeBluetoothAdapter()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "closeBluetoothAdapter -> code: "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final createBLEConnection(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "address"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "createBLEConnection -> address: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "createBLEConnection -> code: "

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 40
    .line 41
    invoke-interface {v1, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->createBLEConnection(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    cmp-long p1, v4, v0

    .line 72
    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    const/4 v7, 0x4

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v6, 0x0

    .line 78
    move-object v2, p0

    .line 79
    move-object v3, p2

    .line 80
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    const/4 v7, 0x4

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v2, p0

    .line 88
    move-object v3, p2

    .line 89
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    const/4 v6, 0x4

    .line 100
    const/4 v7, 0x0

    .line 101
    const/4 v5, 0x0

    .line 102
    move-object v1, p0

    .line 103
    move-object v2, p2

    .line 104
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method

.method public final getBLEDeviceCharacteristics(Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBLEDeviceCharacteristicsMap(Ljava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "getBLEDeviceCharacteristics -> characteristics: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, "characteristics"

    .line 58
    .line 59
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/4 v2, 0x1

    .line 64
    new-array v2, v2, [Lkotlin/Pair;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    aput-object p1, v2, v3

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    const/4 v5, 0x4

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v4, 0x0

    .line 86
    move-object v0, p0

    .line 87
    move-object v1, p2

    .line 88
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "getBLEDeviceCharacteristics -> code: "

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public final getBLEDeviceServices(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 8
    .line 9
    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0O0;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBLEDeviceServices(Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0o;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getBluetoothAdapterState(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 8
    .line 9
    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0OO;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getBluetoothAdapterState(Lkotlin/jvm/functions/Function2;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    cmp-long v0, v4, v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "getBluetoothAdapterState fail -> code: "

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    move-object v2, p0

    .line 54
    move-object v3, p1

    .line 55
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public final getConnectedBluetoothDevices(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 5
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->getConnectedBluetoothDevicesMap()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "getConnectedBluetoothDevices -> devices: "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v3, "devices"

    .line 50
    .line 51
    invoke-static {v3, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v3, 0x1

    .line 56
    new-array v3, v3, [Lkotlin/Pair;

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    aput-object v0, v3, v4

    .line 60
    .line 61
    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO0O0(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "enable"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "notifyBLECharacteristicValueChange -> code: "

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-interface {v1, p1, p2, p3}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->notifyBLECharacteristicValueChange(Ljava/lang/String;Ljava/lang/String;Z)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    cmp-long p1, v4, p1

    .line 64
    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    const/4 v7, 0x4

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    move-object v2, p0

    .line 71
    move-object v3, p4

    .line 72
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v7, 0x4

    .line 77
    const/4 v8, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    move-object v2, p0

    .line 80
    move-object v3, p4

    .line 81
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 88
    .line 89
    .line 90
    move-result-wide v3

    .line 91
    const/4 v6, 0x4

    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    move-object v1, p0

    .line 95
    move-object v2, p4

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 102
    .line 103
    .line 104
    move-result-wide p3

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method public final offBLECharacteristicValueChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "offBLECharacteristicValueChange close -> "

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBLECharacteristicValueChange(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final offBLEConnectionStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "offBLEConnectionStateChange -> "

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBLEConnectionStateChange(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final offBluetoothAdapterStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "offBluetoothAdapterStateChange ->"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBluetoothAdapterStateChange(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final offBluetoothDeviceFound(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "offBluetoothDeviceFound -> "

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->offBluetoothDeviceFound(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onBLECharacteristicValueChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 16
    .line 17
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0o;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBLECharacteristicValueChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0O0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onBLEConnectionStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 16
    .line 17
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBLEConnectionStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO0OO;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onBluetoothAdapterStateChange(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 16
    .line 17
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBluetoothAdapterStateChange(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOO0O;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onBluetoothDeviceFound(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 3
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
            isSticky = true
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;->getCallbackId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 16
    .line 17
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0O;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v0, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->onBluetoothDeviceFound(Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooOOO0;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onFinalized()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInitialized()V
    .locals 0

    .line 1
    return-void
.end method

.method public final openBluetoothAdapter(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Lcom/cloud/tmc/integration/structure/App;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;
            value = Lcom/cloud/tmc/integration/structure/App;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "app.appContext!!.context"

    .line 37
    .line 38
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;

    .line 42
    .line 43
    invoke-direct {v1, p0, p2}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, p1, v1}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->openBluetoothAdapter(Landroid/content/Context;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO00o;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 51
    .line 52
    sget-object v0, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->SYSTEM_ERROR:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "openBluetoothAdapter fail -> code: "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {p1, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    const/4 v7, 0x4

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    move-object v2, p0

    .line 86
    move-object v3, p2

    .line 87
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public permit()Lcom/cloud/tmc/kernel/security/Permission;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "readBLECharacteristicValue -> code: "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 26
    .line 27
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO;

    .line 28
    .line 29
    invoke-direct {v2, p0, p3}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, p1, p2, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->readBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    cmp-long p1, v5, p1

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 v8, 0x4

    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v3, p0

    .line 70
    move-object v4, p3

    .line 71
    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    const/4 v6, 0x4

    .line 82
    const/4 v7, 0x0

    .line 83
    const/4 v5, 0x0

    .line 84
    move-object v1, p0

    .line 85
    move-object v2, p3

    .line 86
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_1
    :goto_0
    return-void
.end method

.method public final startBluetoothDevicesDiscovery(Ljava/lang/String;Ljava/lang/Integer;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUIDS"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "powerLevel"
            }
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "startBluetoothDevicesDiscovery -> code: "

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$startBluetoothDevicesDiscovery$1;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$startBluetoothDevicesDiscovery$1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "fromJson(serviceUUIDS, o\u2026ist<String?>?>() {}.type)"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    const/4 v7, 0x4

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v2, p0

    .line 39
    move-object v3, p3

    .line 40
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 74
    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    const/4 p2, 0x0

    .line 83
    :goto_1
    invoke-interface {v1, p1, p2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->startBluetoothDevicesDiscovery(Ljava/util/List;I)J

    .line 84
    .line 85
    .line 86
    move-result-wide v4

    .line 87
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 88
    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    cmp-long p1, v4, p1

    .line 114
    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    const/4 v7, 0x4

    .line 118
    const/4 v8, 0x0

    .line 119
    const/4 v6, 0x0

    .line 120
    move-object v2, p0

    .line 121
    move-object v3, p3

    .line 122
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_1
    const/4 v7, 0x4

    .line 127
    const/4 v8, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    move-object v2, p0

    .line 130
    move-object v3, p3

    .line 131
    invoke-static/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method public final stopBluetoothDevicesDiscovery(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-class v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->stopBluetoothDevicesDiscovery()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "stopBluetoothDevicesDiscovery -> code: "

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    const/4 v8, 0x4

    .line 45
    const/4 v9, 0x0

    .line 46
    const/4 v7, 0x0

    .line 47
    move-object v3, p0

    .line 48
    move-object v4, p1

    .line 49
    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendSuccess$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "serviceUUID"
            }
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "characteristicUUID"
            }
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingParam;
            value = {
                "value"
            }
        .end annotation
    .end param
    .param p4    # Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
        .annotation runtime Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;
        .end annotation
    .end param
    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ActionFilter;
        value = ""
    .end annotation

    .annotation runtime Lcom/cloud/tmc/kernel/annotation/ThreadType;
        value = .enum Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;
    .end annotation

    .line 1
    const-string v0, "writeBLECharacteristicValue -> code: "

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    const-class v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;

    .line 34
    .line 35
    invoke-static {p3}, Lcom/cloud/tmc/miniutils/util/HexUtil;->hexStringToBytes(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const-string v2, "hexStringToBytes(value)"

    .line 40
    .line 41
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;

    .line 45
    .line 46
    invoke-direct {v2, p0, p4}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge$OooOOOO;-><init>(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/cloud/tmc/miniapp/bluetooth/IBluetooth;->writeBLECharacteristicValue(Ljava/lang/String;Ljava/lang/String;[BLcom/cloud/tmc/miniapp/bluetooth/listener/OooO;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 76
    .line 77
    .line 78
    move-result-wide p1

    .line 79
    cmp-long p1, v5, p1

    .line 80
    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v7, 0x0

    .line 86
    move-object v3, p0

    .line 87
    move-object v4, p4

    .line 88
    invoke-static/range {v3 .. v9}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->INVALID_DATA:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    const/4 v6, 0x4

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    move-object v1, p0

    .line 102
    move-object v2, p4

    .line 103
    invoke-static/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->sendFail$default(Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;JLjava/util/Map;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/bridge/BluetoothBridge;->OooO00o:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 109
    .line 110
    .line 111
    move-result-wide p3

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void
.end method
