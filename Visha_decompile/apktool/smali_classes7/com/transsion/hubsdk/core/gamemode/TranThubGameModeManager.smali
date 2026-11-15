.class public Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/gamemode/ITranGameModeManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubGameModeManager"


# instance fields
.field private final mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;->mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    return-void
.end method


# virtual methods
.method public acquireGestureBlocker(I)Landroid/os/Binder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireGestureBlocker type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubGameModeManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;->mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;->acquireGestureBlocker(I)Landroid/os/Binder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isGameModeEnable()Z
    .locals 2

    const-string v0, "TranThubGameModeManager"

    const-string v1, "isGameModeEnable"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;->mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;->isGameModeEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOperationRejected(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOperationRejected op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubGameModeManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;->mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;->isOperationRejected(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public releaseGestureBlocker(Landroid/os/Binder;)V
    .locals 2

    const-string v0, "TranThubGameModeManager"

    const-string v1, "releaseGestureBlocker"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/gamemode/TranThubGameModeManager;->mGameModeManager:Lcom/transsion/hubsdk/gamemode/TranGameModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/gamemode/TranGameModeManager;->releaseGestureBlocker(Landroid/os/Binder;)V

    :cond_0
    return-void
.end method
