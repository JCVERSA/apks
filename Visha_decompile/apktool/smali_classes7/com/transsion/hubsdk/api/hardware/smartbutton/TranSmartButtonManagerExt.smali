.class public Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;,
        Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSmartButtonManagerExt"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/smartbutton/TranAospSmartButtonManagerExt;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;->getInstance()Lcom/transsion/hubsdk/core/hardware/smartbutton/TranThubSmartButtonManagerExt;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSmartButtonManagerExt"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/smartbutton/TranAospSmartButtonManagerExt;

    if-nez p1, :cond_1

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/smartbutton/TranAospSmartButtonManagerExt;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/smartbutton/TranAospSmartButtonManagerExt;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/smartbutton/TranAospSmartButtonManagerExt;

    :cond_1
    return-object p1
.end method

.method public isFlexButtonHasListener()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->isFlexButtonHasListener()Z

    move-result p0

    return p0
.end method

.method public notifyAllToFlexButton(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->notifyAllToFlexButton(I)V

    return-void
.end method

.method public notifyAllToShoulderButton(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->notifyAllToShoulderButton(IIIII)V

    return-void
.end method

.method public notifyAllToSmartButton()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->notifyAllToSmartButton()V

    return-void
.end method

.method public notifyFlexButtonBKey(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->notifyFlexButtonBKey(II)V

    return-void
.end method

.method public registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->registerFlexButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranFlexButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->registerShoulderButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranShoulderButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->registerSmartButtonCallback(ILcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt$ITranSmartButtonCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterFlexButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->unregisterFlexButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterShoulderButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->unregisterShoulderButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSmartButtonCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const v0, 0x7fffffff

    if-gt p1, v0, :cond_0

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/smartbutton/TranSmartButtonManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/smartbutton/ITranSmartButtonManagerExtAdapter;->unregisterSmartButtonCallback(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pid must out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
