.class public Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranBluetoothDeviceManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothDevice;

.field private mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;


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
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "device cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubBluetoothDevice"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->mThubService:Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospBluetoothDevice"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothDevice;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothDevice;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothDevice;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->mAospService:Lcom/transsion/hubsdk/aosp/bluetooth/TranAospBluetoothDevice;

    :cond_2
    return-object p1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/bluetooth/TranBluetoothDeviceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
