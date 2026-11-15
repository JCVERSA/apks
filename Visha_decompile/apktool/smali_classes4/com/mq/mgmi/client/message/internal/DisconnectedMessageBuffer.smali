.class public Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final bufLock:Ljava/lang/Object;

.field private buffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm2d;",
            ">;"
        }
    .end annotation
.end field

.field private bufferOpts:Lf6d;

.field private callback:Lvu4;

.field private log:Lg6d;

.field private messageDiscardedCallBack:Luu4;

.field private mycount:I


# direct methods
.method public constructor <init>(Lf6d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "com.mq.mgmi.client.message.internal.nls.logcat"

    invoke-static {v0, p1}, Lw7d;->a(Ljava/lang/String;Ljava/lang/String;)Lg6d;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->mycount:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deleteMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessage(I)Lm2d;
    .locals 1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2d;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMessageCount()I
    .locals 1

    iget-object v0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPersistBuffer()Z
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public putMessage(Les6;Lbud;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Les6;->c(Lbud;)V

    iget-object v0, p2, Lbud;->a:Lhpa;

    invoke-virtual {p1}, Les6;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lhpa;->j(I)V

    :cond_0
    new-instance v0, Lm2d;

    invoke-direct {v0, p1, p2}, Lm2d;-><init>(Les6;Lbud;)V

    iget-object p1, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->bufLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/mq/mgmi/client/message/internal/DisconnectedMessageBuffer;->buffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public setMessageDiscardedCallBack(Luu4;)V
    .locals 0

    return-void
.end method

.method public setPublishCallback(Lvu4;)V
    .locals 0

    return-void
.end method
