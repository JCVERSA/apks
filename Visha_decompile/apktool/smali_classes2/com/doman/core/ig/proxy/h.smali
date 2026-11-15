.class public Lcom/doman/core/ig/proxy/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lggd;


# instance fields
.field public a:Lggd;

.field private b:Lv7d;

.field private volatile c:Z

.field private volatile d:Lcom/mq/mgmi/client/message/n;

.field private e:Ljava/lang/Object;

.field private f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

.field private g:Ljava/lang/Object;

.field private h:[Ljava/lang/String;

.field private i:Lcom/mq/mgmi/client/message/n;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/doman/core/ig/proxy/h;-><init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/doman/core/ig/proxy/MqttAndroidClient;Lv7d;[Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/doman/core/ig/proxy/h;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/doman/core/ig/proxy/h;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/h;->g:Ljava/lang/Object;

    iput-object p2, p0, Lcom/doman/core/ig/proxy/h;->b:Lv7d;

    iput-object p3, p0, Lcom/doman/core/ig/proxy/h;->h:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/doman/core/ig/proxy/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/doman/core/ig/proxy/h;->c:Z

    instance-of v1, p1, Lcom/mq/mgmi/client/message/n;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/mq/mgmi/client/message/n;

    :goto_0
    iput-object v1, p0, Lcom/doman/core/ig/proxy/h;->i:Lcom/mq/mgmi/client/message/n;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/mq/mgmi/client/message/n;

    invoke-direct {v1, p1}, Lcom/mq/mgmi/client/message/n;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/doman/core/ig/proxy/h;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    instance-of v1, p1, Lcom/mq/mgmi/client/message/n;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/mq/mgmi/client/message/n;

    iput-object v1, p0, Lcom/doman/core/ig/proxy/h;->d:Lcom/mq/mgmi/client/message/n;

    :cond_1
    iget-object v1, p0, Lcom/doman/core/ig/proxy/h;->b:Lv7d;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0, p1}, Lv7d;->onFailure(Lggd;Ljava/lang/Throwable;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/doman/core/ig/proxy/h;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/doman/core/ig/proxy/h;->c:Z

    iget-object v1, p0, Lcom/doman/core/ig/proxy/h;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/doman/core/ig/proxy/h;->b:Lv7d;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lv7d;->onSuccess(Lggd;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c()Lf9d;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/h;->f:Lcom/doman/core/ig/proxy/MqttAndroidClient;

    return-object p0
.end method

.method public final d()Lv7d;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/h;->b:Lv7d;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/h;->a:Lggd;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lggd;->e()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Les6;
    .locals 0

    iget-object p0, p0, Lcom/doman/core/ig/proxy/h;->a:Lggd;

    invoke-interface {p0}, Lggd;->f()Les6;

    move-result-object p0

    return-object p0
.end method
