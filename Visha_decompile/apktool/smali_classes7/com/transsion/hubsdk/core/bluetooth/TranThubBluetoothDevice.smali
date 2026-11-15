.class public Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/bluetooth/ITranBluetoothDeviceAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubBluetoothDevice"


# instance fields
.field private mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-direct {v0}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->createBond(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    return p0
.end method

.method public getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/bluetooth/TranThubBluetoothDevice;->mTranBluetoothDevice:Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/bluetooth/TranBluetoothDevice;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method
