.class public Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/foldable/ITranFoldingScreenAdapter;


# static fields
.field private static final EXCEPTION_TEXT:Ljava/lang/String; = " dont has class of TranFoldingScreenManager"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.transsion.hubsdk.foldable.TranFoldingScreen"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->getInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method private getInstance()Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addActivityEmbeddingPkg"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActivityEmbeddingPkgs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActivityEmbeddingPkgs"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCompatibleMode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCompatibleMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const-string v0, "com.transsion.hubsdk.foldable.TranFoldingScreen"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getHoverModeStateForPackage"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHoverModeStateForPackage fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getScreenRelayMode(Landroid/content/Context;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getScreenRelayMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPkgInActivityEmbedding(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPkgInActivityEmbedding"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeActivityEmbeddingPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v1, Landroid/content/Context;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "removeActivityEmbeddingPkg"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCompatibleMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompatibleMode(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .line 5
    const-string v0, "com.transsion.hubsdk.foldable.TranFoldingScreen"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const-class v4, Ljava/lang/String;

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setCompatibleMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCompatibleMode fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setHoverModeStateForPackage(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    const-string v0, "com.transsion.hubsdk.foldable.TranFoldingScreen"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    filled-new-array {v3, v1, v2, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setHoverModeStateForPackage"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setHoverModeStateForPackage fail:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setScreenRelayMode(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->sClassName:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v1, Landroid/content/Context;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setScreenRelayMode"

    invoke-static {v0, v2, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/foldable/TranAospFoldingScreenManager;->mInstance:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;

    const-string p1, " dont has class of TranFoldingScreenManager"

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
