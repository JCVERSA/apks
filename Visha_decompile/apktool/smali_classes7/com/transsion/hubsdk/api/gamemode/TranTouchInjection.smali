.class public Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTouchInjection"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;

.field private final mContext:Landroid/content/Context;

.field private mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInjection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public closeChannel()V
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
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->closeChannel()V

    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInjection;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInjection;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInjection;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInjection;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTouchInjection"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInjection;

    :cond_2
    return-object p1
.end method

.method public inject(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->inject(II)Z

    move-result p0

    return p0
.end method

.method public inject(III)Z
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

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->inject(III)Z

    move-result p0

    return p0
.end method

.method public inject(IIII)Z
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

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->inject(IIII)Z

    move-result p0

    return p0
.end method

.method public inject(IIIILandroid/os/Bundle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->inject(IIIILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public inject(IIILandroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->inject(IIILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public injectViaChannel(IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->injectViaChannel(IIII)Z

    move-result p0

    return p0
.end method

.method public injectVieChanel(IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidU()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->injectVieChanel(IIII)Z

    move-result p0

    return p0
.end method

.method public openChannel()V
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
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInjection;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInjectionAdapter;->openChannel()V

    return-void
.end method
