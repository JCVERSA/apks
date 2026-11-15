.class public Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFoldingScreenManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

.field private mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;


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
.method public addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addActivityEmbeddingPkg invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getActivityEmbeddingPkgs invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getCompatibleMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScreenRelayMode(Landroid/content/Context;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->getScreenRelayMode(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getScreenRelayMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFoldingScreenManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mThubService:Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFoldingScreenManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->mAospService:Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;

    :cond_2
    return-object p1
.end method

.method public isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "isPkgInActivityEmbedding invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "removeActivityEmbeddingPkg invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    const/4 v0, 0x2

    if-gt p3, v0, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getCompatibleMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x3

    if-gt p3, v0, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot is illegal"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33251:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScreenRelayMode(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/foldable/TranFoldingScreenManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;->setScreenRelayMode(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setScreenRelayMode invalid param"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
