.class public Lcom/mq/mgmi/client/message/internal/CommsSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mq/mgmi/client/message/internal/CommsSender$State;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.mq.mgmi.client.message.internal.CommsSender"


# instance fields
.field private clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private clientState:Lby0;

.field private current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

.field private final lifecycle:Ljava/lang/Object;

.field private log:Lg6d;

.field private out:Lzr6;

.field private sendThread:Ljava/lang/Thread;

.field private senderFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

.field private threadName:Ljava/lang/String;

.field private tokenStore:Lra1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mq/mgmi/client/message/internal/ClientComms;Lby0;Lra1;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsSender;->CLASS_NAME:Ljava/lang/String;

    invoke-static {p3, v0}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    sget-object p3, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    new-instance v0, Lzr6;

    invoke-direct {v0, p2, p4}, Lzr6;-><init>(Lby0;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->out:Lzr6;

    invoke-virtual {p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p0

    invoke-interface {p0}, Lf9d;->a()Ljava/lang/String;

    throw p3
.end method

.method private handleRunException(Les6;Ljava/lang/Exception;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, v0

    :goto_0
    :try_start_3
    sget-object v3, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->out:Lzr6;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->clientState:Lby0;

    invoke-virtual {v2}, Lby0;->b()Les6;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Les6;->a()Ljava/lang/String;
    :try_end_4
    .catch Lcom/mq/mgmi/client/message/n; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_0
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    invoke-direct {p0, v1, v2}, Lcom/mq/mgmi/client/message/internal/CommsSender;->handleRunException(Les6;Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :catchall_3
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_2
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    sget-object v3, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v3, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->sendThread:Ljava/lang/Thread;

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    :catchall_4
    move-exception p0

    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p0
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->threadName:Ljava/lang/String;

    iget-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->current_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsSender$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->target_state:Lcom/mq/mgmi/client/message/internal/CommsSender$State;

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

    iput-object p2, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->senderFuture:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :goto_1
    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsSender;->isRunning()Z

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
    .locals 2

    invoke-virtual {p0}, Lcom/mq/mgmi/client/message/internal/CommsSender;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsSender;->senderFuture:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
