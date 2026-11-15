.class public Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;


# instance fields
.field private mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-direct {v0}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    return-void
.end method


# virtual methods
.method public addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenRelayMode(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->getScreenRelayMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeActivityEmbeddingPkg"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCompatibleMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public setScreenRelayMode(Landroid/content/Context;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/foldable/TranThubFoldingScreenManager;->mFoldingScreen:Lcom/transsion/hubsdk/foldable/TranFoldingScreen;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/foldable/TranFoldingScreen;->setScreenRelayMode(Landroid/content/Context;I)V

    return-void
.end method
