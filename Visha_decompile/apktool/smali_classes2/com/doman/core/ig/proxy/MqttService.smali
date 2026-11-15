.class public Lcom/doman/core/ig/proxy/MqttService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/ig/proxy/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/MqttService$a;,
        Lcom/doman/core/ig/proxy/MqttService$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Lcom/doman/core/ig/proxy/d;

.field private d:Lcom/doman/core/ig/proxy/MqttService$b;

.field private e:Lcom/doman/core/ig/proxy/MqttService$a;

.field private volatile f:Z

.field private g:Lcom/doman/core/ig/proxy/g;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/doman/core/ig/proxy/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/MqttService;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doman/core/ig/proxy/MqttService;->f:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/MqttService;)V
    .locals 1

    .line 3
    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doman/core/ig/proxy/e;

    invoke-virtual {v0}, Lcom/doman/core/ig/proxy/e;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/doman/core/ig/proxy/MqttService;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/doman/core/ig/proxy/MqttService;->f:Z

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/doman/core/ig/proxy/MqttService;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string/jumbo v2, "trace"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService;->a:Ljava/lang/String;

    sget-object p2, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/doman/core/ig/proxy/MqttService;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Lcom/doman/core/ig/proxy/MqttService;->f:Z

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcld;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/doman/core/ig/proxy/e;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/doman/core/ig/proxy/e;-><init>(Lcom/doman/core/ig/proxy/MqttService;Ljava/lang/String;Ljava/lang/String;Lcld;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public final a()V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reconnect to server, client size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/doman/core/ig/proxy/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/doman/core/ig/proxy/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/doman/core/ig/proxy/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconnect Client:"

    invoke-virtual {p0, v3, v2}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/doman/core/ig/proxy/MqttService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/doman/core/ig/proxy/e;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    const-string v0, "debug"

    invoke-direct {p0, v0, p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string/jumbo v2, "trace"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService;->a:Ljava/lang/String;

    sget-object p2, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {p0, p1, p2, v0}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/doman/core/ig/proxy/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 9
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;

    move-result-object p0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/h;->k()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/doman/core/ig/proxy/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doman/core/ig/proxy/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ClientHandle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const-string v0, "error"

    invoke-direct {p0, v0, p1, p2}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 4
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/doman/core/ig/proxy/MqttService;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "MqttService.activityToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/doman/core/ig/proxy/MqttService;->g:Lcom/doman/core/ig/proxy/g;

    iput-object p1, p0, Lcom/doman/core/ig/proxy/g;->b:Ljava/lang/String;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/doman/core/ig/proxy/g;

    invoke-direct {v0, p0}, Lcom/doman/core/ig/proxy/g;-><init>(Lcom/doman/core/ig/proxy/MqttService;)V

    iput-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->g:Lcom/doman/core/ig/proxy/g;

    new-instance v0, Lcom/doman/core/ig/proxy/b;

    invoke-direct {v0, p0, p0}, Lcom/doman/core/ig/proxy/b;-><init>(Lcom/doman/core/ig/proxy/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    return-void
.end method

.method public onDestroy()V
    .locals 8

    const-string v0, "not connected"

    const-string v1, "disconnect"

    iget-object v2, p0, Lcom/doman/core/ig/proxy/MqttService;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/doman/core/ig/proxy/e;

    :try_start_0
    iget-object v5, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    const-string v6, "MqttConnection"

    const-string v7, "disconnect()"

    invoke-virtual {v5, v6, v7}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/doman/core/ig/proxy/e;->k:Z

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "MqttService.activityToken"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MqttService.invocationContext"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MqttService.callbackAction"

    invoke-virtual {v5, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/mq/mgmi/client/message/h;->k()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/doman/core/ig/proxy/e$a;

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcom/doman/core/ig/proxy/e$a;-><init>(Lcom/doman/core/ig/proxy/e;Landroid/os/Bundle;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v3, Lcom/doman/core/ig/proxy/e;->h:Lcom/mq/mgmi/client/message/h;

    invoke-virtual {v6, v4}, Lcom/mq/mgmi/client/message/h;->d(Lv7d;)Lggd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v3, v5, v4}, Lcom/doman/core/ig/proxy/e;->a(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const-string v4, "MqttService.errorMessage"

    invoke-virtual {v5, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    invoke-virtual {v4, v1, v0}, Lcom/doman/core/ig/proxy/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->j:Lcom/doman/core/ig/proxy/MqttService;

    iget-object v6, v3, Lcom/doman/core/ig/proxy/e;->f:Ljava/lang/String;

    sget-object v7, Lcom/doman/core/ig/proxy/j;->b:Lcom/doman/core/ig/proxy/j;

    invoke-virtual {v4, v6, v7, v5}, Lcom/doman/core/ig/proxy/MqttService;->a(Ljava/lang/String;Lcom/doman/core/ig/proxy/j;Landroid/os/Bundle;)V

    :goto_1
    iget-object v4, v3, Lcom/doman/core/ig/proxy/e;->e:Lbmd;

    invoke-virtual {v3}, Lcom/doman/core/ig/proxy/e;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->g:Lcom/doman/core/ig/proxy/g;

    if-eqz v0, :cond_2

    iput-object v4, p0, Lcom/doman/core/ig/proxy/MqttService;->g:Lcom/doman/core/ig/proxy/g;

    :cond_2
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->d:Lcom/doman/core/ig/proxy/MqttService$b;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v4, p0, Lcom/doman/core/ig/proxy/MqttService;->d:Lcom/doman/core/ig/proxy/MqttService$b;

    :cond_3
    iget-object v0, p0, Lcom/doman/core/ig/proxy/MqttService;->c:Lcom/doman/core/ig/proxy/d;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/doman/core/ig/proxy/d;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    iget-object p1, p0, Lcom/doman/core/ig/proxy/MqttService;->d:Lcom/doman/core/ig/proxy/MqttService$b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/doman/core/ig/proxy/MqttService$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/doman/core/ig/proxy/MqttService$b;-><init>(Lcom/doman/core/ig/proxy/MqttService;B)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/MqttService;->d:Lcom/doman/core/ig/proxy/MqttService$b;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
