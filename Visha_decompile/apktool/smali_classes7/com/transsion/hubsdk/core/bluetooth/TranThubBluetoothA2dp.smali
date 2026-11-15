.class public Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubBluetoothA2dp"


# instance fields
.field private mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;->connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;->getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveDevice fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConnectionStateFromAdapter(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    invoke-direct {p0}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;->getConnectionStateFromAdapter(Landroid/bluetooth/BluetoothAdapter;)I

    move-result p0

    return p0
.end method

.method public setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;->setScanMode(Landroid/bluetooth/BluetoothAdapter;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScanMode fail "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public setService(Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;->mService:Lcom/transsion/hubsdk/bluetooth/TranBluetoothA2dp;

    return-void
.end method
