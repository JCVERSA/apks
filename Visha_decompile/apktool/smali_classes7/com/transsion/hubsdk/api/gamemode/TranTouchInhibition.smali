.class public Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTouchInhibition"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInhibition;

.field private final mContext:Landroid/content/Context;

.field private mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;


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

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acquire()Z
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

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->acquire()Z

    move-result p0

    return p0
.end method

.method public clear()V
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

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->clear()V

    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mThubService:Lcom/transsion/hubsdk/core/gamemode/TranThubTouchInhibition;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTouchInhibition"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInhibition;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInhibition;

    iget-object v0, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInhibition;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->mAospService:Lcom/transsion/hubsdk/aosp/gamemode/TranAospTouchInhibition;

    :cond_2
    return-object p1
.end method

.method public inhibit(Landroid/graphics/Rect;I)V
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
    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->inhibit(Landroid/graphics/Rect;I)V

    return-void

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "region cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inhibit(Landroid/graphics/Rect;II)V
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
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->inhibit(Landroid/graphics/Rect;II)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "region cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
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

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->release()V

    return-void
.end method

.method public submit()V
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

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/gamemode/TranTouchInhibition;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/gamemode/ITranTouchInhibitionAdapter;->submit()V

    return-void
.end method
