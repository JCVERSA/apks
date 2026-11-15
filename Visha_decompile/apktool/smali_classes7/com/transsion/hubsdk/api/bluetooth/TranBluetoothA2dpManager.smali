.class public Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranBluetoothA2dpManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothA2dp;

.field private mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;->connect(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parameter must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;->getActiveDevice(Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionStateFromAdapter(Landroid/bluetooth/BluetoothAdapter;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;->getConnectionStateFromAdapter(Landroid/bluetooth/BluetoothAdapter;)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubBluetoothA2dp"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothA2dp;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospBluetoothA2dp"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothA2dp;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothA2dp;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothA2dp;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothA2dp;

    :cond_2
    return-object p1
.end method

.method public setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothA2dpManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothA2dpAdapter;->setScanMode(Landroid/bluetooth/BluetoothAdapter;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
