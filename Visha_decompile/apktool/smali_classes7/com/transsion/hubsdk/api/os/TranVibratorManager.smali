.class public Lcom/transsion/hubsdk/api/os/TranVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranVibratorManager"

.field public static final TYPE_FLICK_LIGHT:I = 0x3

.field public static final TYPE_FLICK_NORMAL:I = 0x2

.field public static final TYPE_HOLD:I = 0xb

.field public static final TYPE_LONG_PRESS:I = 0x9

.field public static final TYPE_MESH_HEAVY:I = 0x5

.field public static final TYPE_MESH_LIGHT:I = 0x8

.field public static final TYPE_MESH_NORMAL:I = 0x7

.field public static final TYPE_PICK_UP:I = 0xa

.field public static final TYPE_POPUP_LIGHT:I = 0xd

.field public static final TYPE_POPUP_NORMAL:I = 0xc

.field public static final TYPE_SCROLL_EDGE:I = 0x6

.field public static final TYPE_SWITCH:I = 0x4

.field public static final TYPE_TAP_LIGHT:I = 0x1

.field public static final TYPE_TAP_NORMAL:I


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospVibratorManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospVibratorManager;

    :cond_2
    return-object p1
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->stop()V

    return-void
.end method

.method public vibrate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7fffffff

    if-gt p1, v0, :cond_1

    const/high16 v0, -0x80000000

    if-lt p1, v0, :cond_1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(I)V

    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "type could not out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;)V

    return-void
.end method

.method public vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33341:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param file could not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 10
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V

    return-void

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param file could not be null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
