.class Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler$1;->this$0:Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz6;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lvz6;->onConnect(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvz6;->onDisconnect()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMobile()V
    .locals 1

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvz6;->onMobile()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWifi()V
    .locals 1

    sget-object p0, Lcom/transsion/vishaplayersdk/gsyplayer/video/PlayHandler;->netCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvz6;->onWifi()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic unknowNet()V
    .locals 0

    invoke-super {p0}, Lvz6;->unknowNet()V

    return-void
.end method
