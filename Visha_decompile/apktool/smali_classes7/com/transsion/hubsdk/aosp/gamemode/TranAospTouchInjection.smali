.class public Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string v0, "can not find method closeChannel"

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inject(II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method inject"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inject(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method inject"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inject(IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 4
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method inject"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inject(IIIILandroid/os/Bundle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method inject"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inject(IIILandroid/os/Bundle;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 3
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method inject"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public injectViaChannel(IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method injectViaChannel"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public injectVieChanel(IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method injectVieChanel"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string v0, "can not find method openChannel"

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
