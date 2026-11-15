.class public Lcom/transsion/hubsdk/api/media/TranAudioSystem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioSystem;

.field private mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getForceUse(I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;->getForceUse(I)I

    move-result p0

    return p0
.end method

.method public getOutputDeviceName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->mThubService:Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioSystem;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/media/TranAospAudioSystem;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/media/TranAospAudioSystem;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->mAospService:Lcom/transsion/hubsdk/aosp/media/TranAospAudioSystem;

    :cond_2
    return-object p1
.end method

.method public isSourceActive(I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;->isSourceActive(I)Z

    move-result p0

    return p0
.end method

.method public newAudioSessionId()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;->newAudioSessionId()I

    move-result p0

    return p0
.end method

.method public setForceUse(II)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/TranAudioSystem;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;->setForceUse(II)I

    move-result p0

    return p0
.end method
