.class public Lcom/transsion/utils/NetworkObserver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/utils/NetworkObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/utils/NetworkObserver;


# direct methods
.method public constructor <init>(Lcom/transsion/utils/NetworkObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/utils/NetworkObserver$a;->a:Lcom/transsion/utils/NetworkObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver$a;->a:Lcom/transsion/utils/NetworkObserver;

    invoke-static {p0}, Lcom/transsion/utils/NetworkObserver;->a(Lcom/transsion/utils/NetworkObserver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

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

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver$a;->a:Lcom/transsion/utils/NetworkObserver;

    invoke-static {p0}, Lcom/transsion/utils/NetworkObserver;->a(Lcom/transsion/utils/NetworkObserver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

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

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver$a;->a:Lcom/transsion/utils/NetworkObserver;

    invoke-static {p0}, Lcom/transsion/utils/NetworkObserver;->a(Lcom/transsion/utils/NetworkObserver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

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

    iget-object p0, p0, Lcom/transsion/utils/NetworkObserver$a;->a:Lcom/transsion/utils/NetworkObserver;

    invoke-static {p0}, Lcom/transsion/utils/NetworkObserver;->a(Lcom/transsion/utils/NetworkObserver;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

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
