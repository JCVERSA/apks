.class public Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string v0, "can not find method stop"

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method vibrate"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method vibrate"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 4
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method vibrate"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method vibrate"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 3
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method vibrate"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
