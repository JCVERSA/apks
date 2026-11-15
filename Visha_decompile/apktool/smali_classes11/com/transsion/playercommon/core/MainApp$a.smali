.class public Lcom/transsion/playercommon/core/MainApp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvz6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/core/MainApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/core/MainApp;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/core/MainApp;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/core/MainApp$a;->a:Lcom/transsion/playercommon/core/MainApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkStatusCallback:onConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput p1, Lcom/transsion/playercommon/core/MainApp;->w:I

    iget-object p0, p0, Lcom/transsion/playercommon/core/MainApp$a;->a:Lcom/transsion/playercommon/core/MainApp;

    invoke-virtual {p0}, Lcom/transsion/playercommon/core/MainApp;->z()V

    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->v:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvz6;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lvz6;->onConnect(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDisconnect()V
    .locals 1

    const-string p0, "MainApp"

    const-string v0, "NetworkStatusCallback:onDisconnect"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    sput p0, Lcom/transsion/playercommon/core/MainApp;->w:I

    sget-object p0, Lcom/transsion/playercommon/core/MainApp;->v:Ljava/util/concurrent/ConcurrentHashMap;

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
