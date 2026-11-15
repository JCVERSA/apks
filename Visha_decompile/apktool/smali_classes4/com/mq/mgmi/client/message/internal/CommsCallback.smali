.class public Lcom/mq/mgmi/client/message/internal/CommsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mq/mgmi/client/message/internal/CommsCallback$State;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.mq.mgmi.client.message.internal.CommsCallback"

.field private static final INBOUND_QUEUE_SIZE:I = 0xa


# instance fields
.field private callbackFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private callbackThread:Ljava/lang/Thread;

.field private callbacks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lled;",
            ">;"
        }
    .end annotation
.end field

.field private clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private clientState:Lby0;

.field private final completeQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lbud;",
            ">;"
        }
    .end annotation
.end field

.field private current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

.field private final lifecycle:Ljava/lang/Object;

.field private final log:Lg6d;

.field private manualAcks:Z

.field private final messageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Les6;",
            ">;"
        }
    .end annotation
.end field

.field private mqttCallback:Lhjd;

.field private reconnectInternalCallback:Lekd;

.field private final spaceAvailable:Ljava/lang/Object;

.field private target_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

.field private threadName:Ljava/lang/String;

.field private final workAvailable:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mq/mgmi/client/message/internal/ClientComms;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsCallback;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->target_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->manualAcks:Z

    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p0

    invoke-interface {p0}, Lf9d;->a()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method private handleActionComplete(Lbud;)V
    .locals 0

    monitor-enter p1

    :try_start_0
    iget-object p0, p1, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->c()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleMessage(Lds6;)V
    .locals 0

    invoke-virtual {p1}, Lds6;->d()Ljava/lang/String;

    invoke-virtual {p1}, Les6;->b()I

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public asyncOperationComplete(Lbud;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->handleActionComplete(Lbud;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    throw v1

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    iget-object p1, p1, Lbud;->a:Lhpa;

    invoke-virtual {p1}, Lhpa;->c()Ljava/lang/String;

    throw v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public connectionLost(Lcom/mq/mgmi/client/message/n;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->mqttCallback:Lhjd;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->reconnectInternalCallback:Lekd;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p0, p1}, Lhjd;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    throw v0
.end method

.method public deliverMessage(Ljava/lang/String;ILtod;)Z
    .locals 3

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lubc;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->mqttCallback:Lhjd;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Ltod;->setId(I)V

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->mqttCallback:Lhjd;

    invoke-interface {p0, p1, p3}, Lhjd;->a(Ljava/lang/String;Ltod;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public fireActionEvent(Lbud;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p1, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->a()Lv7d;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->b()Lcom/mq/mgmi/client/message/n;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    iget-object p0, p1, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->c()Ljava/lang/String;

    throw v0

    :cond_0
    iget-object p0, p1, Lbud;->a:Lhpa;

    invoke-virtual {p0}, Lhpa;->c()Ljava/lang/String;

    throw v0

    :cond_1
    return-void
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public isQuiesced()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isQuiescing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isQuiescing()Z
    .locals 2

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->QUIESCING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunning()Z
    .locals 4

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-eq v1, v2, :cond_0

    sget-object v3, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->QUIESCING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->target_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-ne p0, v2, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public messageArrived(Lds6;)V
    .locals 4

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->mqttCallback:Lhjd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isQuiescing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    goto :goto_0

    :cond_1
    throw v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isQuiescing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    throw v2

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public messageArrivedComplete(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

    new-instance v0, Lbs6;

    invoke-direct {v0, p1}, Lbs6;-><init>(I)V

    new-instance p1, Lbud;

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p0

    invoke-interface {p0}, Lf9d;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbud;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->f(Les6;Lbud;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

    invoke-virtual {p2, p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->d(I)V

    new-instance p2, Lcs6;

    invoke-direct {p2, p1}, Lcs6;-><init>(I)V

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

    new-instance p1, Lbud;

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object v0

    invoke-interface {v0}, Lf9d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lbud;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->f(Les6;Lbud;)V

    :cond_1
    return-void
.end method

.method public quiesce()V
    .locals 3

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->QUIESCING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public removeMessageListener(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMessageListeners()V
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->workAvailable:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    throw v1

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :catch_0
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbud;

    iget-object v4, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_6

    :cond_2
    move-object v2, v1

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-direct {p0, v2}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->handleActionComplete(Lbud;)V

    :cond_3
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lds6;

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_4

    :catchall_2
    move-exception v2

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit v0

    goto :goto_7

    :goto_5
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_6
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2

    :cond_5
    :goto_7
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isQuiescing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->clientState:Lby0;

    invoke-virtual {v0}, Lby0;->a()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_6
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    throw v1

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :catchall_4
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->spaceAvailable:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    throw v1

    :catchall_6
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :cond_7
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    iput-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbackThread:Ljava/lang/Thread;

    return-void

    :catchall_7
    move-exception p0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p0

    :catchall_8
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    throw p0
.end method

.method public setCallback(Lhjd;)V
    .locals 0

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->mqttCallback:Lhjd;

    return-void
.end method

.method public setClientState(Lby0;)V
    .locals 0

    return-void
.end method

.method public setManualAcks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->manualAcks:Z

    return-void
.end method

.method public setMessageListener(Ljava/lang/String;Lled;)V
    .locals 0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbacks:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setReconnectCallback(Lekd;)V
    .locals 0

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->reconnectInternalCallback:Lekd;

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->threadName:Ljava/lang/String;

    iget-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->current_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->messageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->completeQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsCallback$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->target_state:Lcom/mq/mgmi/client/message/internal/CommsCallback$State;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbackFuture:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 p1, 0x64

    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsCallback;->callbackFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsCallback;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    throw p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
