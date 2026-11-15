.class public Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPlayerManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_playersdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayManager()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
    .locals 3

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->TAG:Ljava/lang/String;

    const-string v2, "get_player_manager_failed: player class not set"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static setPlayManager(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/PlayerFactory;->sPlayerManager:Ljava/lang/Class;

    return-void
.end method
