.class public Lcom/mq/mgmi/client/message/internal/CommsReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.mq.mgmi.client.message.internal.CommsReceiver"


# instance fields
.field private clientComms:Lcom/mq/mgmi/client/message/internal/ClientComms;

.field private clientState:Lby0;

.field private current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field private in:Lyr6;

.field private final lifecycle:Ljava/lang/Object;

.field private log:Lg6d;

.field private recThread:Ljava/lang/Thread;

.field private receiverFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private target_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

.field private threadName:Ljava/lang/String;

.field private tokenStore:Lra1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mq/mgmi/client/message/internal/ClientComms;Lby0;Lra1;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "com.mq.mgmi.client.message.internal.nls.logcat"

    sget-object v0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->CLASS_NAME:Ljava/lang/String;

    invoke-static {p3, v0}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    sget-object p3, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->target_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    new-instance v0, Lyr6;

    invoke-direct {v0, p2, p4}, Lyr6;-><init>(Lby0;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->in:Lyr6;

    invoke-virtual {p1}, Lcom/mq/mgmi/client/message/internal/ClientComms;->e()Lf9d;

    move-result-object p0

    invoke-interface {p0}, Lf9d;->a()Ljava/lang/String;

    throw p3
.end method


# virtual methods
.method public isReceiving()Z
    .locals 2

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RECEIVING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

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

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    if-eq v1, v2, :cond_0

    sget-object v3, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RECEIVING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    if-ne v1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->target_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

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

.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->target_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v0, 0x0

    if-ne v2, v1, :cond_0

    :try_start_3
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->in:Lyr6;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->RUNNING:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iput-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->recThread:Ljava/lang/Thread;

    throw v0

    :catchall_3
    move-exception p0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    sget-object v2, Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;->STOPPED:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    iput-object v2, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->current_state:Lcom/mq/mgmi/client/message/internal/CommsReceiver$State;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :catchall_5
    move-exception p0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_10
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw p0
.end method

.method public start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->threadName:Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->lifecycle:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/CommsReceiver;->receiverFuture:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
