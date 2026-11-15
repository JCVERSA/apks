.class public Lcom/transsion/hubsdk/aosp/gamemode/TranAospGameModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireGestureBlocker(I)Landroid/os/Binder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method acquireGestureBlocker"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isGameModeEnable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string v0, "can not find method isGameModeEnable"

    invoke-direct {p0, v0}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOperationRejected(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method isOperationRejected"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseGestureBlocker(Landroid/os/Binder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, "can not find method releaseGestureBlocker"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
