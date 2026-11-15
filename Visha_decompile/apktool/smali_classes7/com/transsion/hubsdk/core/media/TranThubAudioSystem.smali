.class public Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/media/ITranAudioSystemAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubAudioSystem"

.field private static sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p0, "audio_system"

    invoke-static {p0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/hubsdk/media/ITranAudioSystem$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/media/ITranAudioSystem;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    return-void
.end method


# virtual methods
.method public getForceUse(I)I
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioSystem;->getForceUse(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public getOutputDeviceName(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSourceActive(I)Z
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/media/ITranAudioSystem;->isSourceActive(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public newAudioSessionId()I
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    invoke-interface {p0}, Lcom/transsion/hubsdk/media/ITranAudioSystem;->newAudioSessionId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public setForceUse(II)I
    .locals 0

    :try_start_0
    sget-object p0, Lcom/transsion/hubsdk/core/media/TranThubAudioSystem;->sAudioSystem:Lcom/transsion/hubsdk/media/ITranAudioSystem;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/media/ITranAudioSystem;->setForceUse(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
