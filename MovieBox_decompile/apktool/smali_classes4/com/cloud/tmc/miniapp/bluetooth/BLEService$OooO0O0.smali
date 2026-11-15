.class public final Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/bluetooth/BLEService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->e([B)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "onCharacteristicChanged:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 33
    .line 34
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    new-instance v3, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object v4, p1

    .line 65
    :goto_1
    const-string v5, "data_serviceUUID"

    .line 66
    .line 67
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    move-object v4, p1

    .line 84
    :goto_2
    const-string v5, "data_characteristicUUID"

    .line 85
    .line 86
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :cond_3
    const-string p2, "data_characteristic"

    .line 96
    .line 97
    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 98
    .line 99
    .line 100
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 101
    .line 102
    sget p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0O:I

    .line 103
    .line 104
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_NOTIFY_CHARACTERISTIC"

    .line 105
    .line 106
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "onCharacteristicRead:"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    new-instance v3, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v4, p1

    .line 71
    :goto_1
    const-string v5, "data_serviceUUID"

    .line 72
    .line 73
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v4, p1

    .line 90
    :goto_2
    const-string v5, "data_characteristicUUID"

    .line 91
    .line 92
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_4
    const-string p2, "data_characteristic"

    .line 102
    .line 103
    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 104
    .line 105
    .line 106
    const-string p1, "data_status"

    .line 107
    .line 108
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    sget p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0O:I

    .line 114
    .line 115
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_READ_CHARACTERISTIC"

    .line 116
    .line 117
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, p1

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 19
    .line 20
    sget-object v2, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "onCharacteristicWrite:"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 39
    .line 40
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    new-instance v3, Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-object v4, p1

    .line 71
    :goto_1
    const-string v5, "data_serviceUUID"

    .line 72
    .line 73
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-eqz v4, :cond_3

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v4, p1

    .line 90
    :goto_2
    const-string v5, "data_characteristicUUID"

    .line 91
    .line 92
    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    :cond_4
    const-string p2, "data_characteristic"

    .line 102
    .line 103
    invoke-virtual {v3, p2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 104
    .line 105
    .line 106
    const-string p1, "data_status"

    .line 107
    .line 108
    invoke-virtual {v3, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    sget p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0O:I

    .line 114
    .line 115
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_WRITE_CHARACTERISTIC"

    .line 116
    .line 117
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    .line 1
    const-string v0, "gatt"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "onConnectionStateChange -> status:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " , newState:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    if-eq p3, v0, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO0oo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x1f

    .line 56
    .line 57
    if-le v0, v1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 60
    .line 61
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 62
    .line 63
    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 71
    .line 72
    sget-object v1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    new-instance v3, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "newState"

    .line 84
    .line 85
    invoke-virtual {v3, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    const-string p3, "status"

    .line 89
    .line 90
    invoke-virtual {v3, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string p2, "address"

    .line 102
    .line 103
    invoke-virtual {v3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    sget p1, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooOO0O:I

    .line 109
    .line 110
    const-string p1, "com.cloud.tmc.bluetooth.le.ACTION_DEVICE_CONNECT_STATE"

    .line 111
    .line 112
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 1
    const-string v0, "gatt"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/bluetooth/BluetoothGattCallback;->onServiceChanged(Landroid/bluetooth/BluetoothGatt;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 13

    .line 1
    const-string v0, "gatt"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "onServicesDiscovered -> status:"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 25
    .line 26
    sget-object p1, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->OK:Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/bluetooth/BluetoothCode;->getCode()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x4

    .line 34
    const-string v2, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    .line 35
    .line 36
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/bluetooth/BLEService$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/bluetooth/BLEService;

    .line 41
    .line 42
    int-to-long v9, p2

    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v12, 0x4

    .line 45
    const-string v8, "com.cloud.tmc.bluetooth.le.ACTION_SERVICES_DISCOVERED"

    .line 46
    .line 47
    invoke-static/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/bluetooth/BLEService;->OooO00o(Lcom/cloud/tmc/miniapp/bluetooth/BLEService;Ljava/lang/String;JLandroid/os/Bundle;I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
