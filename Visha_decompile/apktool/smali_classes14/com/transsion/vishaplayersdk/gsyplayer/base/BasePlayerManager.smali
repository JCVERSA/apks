.class public abstract Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManager;


# instance fields
.field protected mPlayerManagerListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayerManagerListener()Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->mPlayerManagerListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    return-object p0
.end method

.method public initVideoPlayer(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/model/VideoOptionModel;",
            ">;",
            "Lcom/transsion/vishaplayersdk/gsyplayer/base/cache/ICacheManager;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setPlayerManagerListener(Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/base/BasePlayerManager;->mPlayerManagerListener:Lcom/transsion/vishaplayersdk/gsyplayer/base/IPlayerManagerListener;

    return-void
.end method
