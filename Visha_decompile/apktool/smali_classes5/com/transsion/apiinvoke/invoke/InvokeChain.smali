.class public Lcom/transsion/apiinvoke/invoke/InvokeChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;,
        Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChannelChain"

.field private static final serialVersionUID:J = 0x7a0cd3213532a529L


# instance fields
.field private final chain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/apiinvoke/invoke/InvokePath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;
    .locals 2

    const-class v0, Lcom/transsion/apiinvoke/invoke/InvokeChain;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;->access$000()Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;->obtain()Lcom/transsion/apiinvoke/invoke/InvokeChain;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public append(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->getChain()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public autoChain(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;
    .locals 0

    invoke-static {p1}, Lcom/transsion/apiinvoke/invoke/InvokePath;->create(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->put(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-object p0
.end method

.method public autoPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/InvokePath;->createPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->put(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-object p0
.end method

.method public autoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokeChain;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/transsion/apiinvoke/invoke/InvokePath;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->put(Lcom/transsion/apiinvoke/invoke/InvokePath;)V

    return-object p0
.end method

.method public declared-synchronized callForm()Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chainLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/InvokePath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/InvokePath;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public chainLength()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public containChannel(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/invoke/InvokePath;

    invoke-virtual {v1}, Lcom/transsion/apiinvoke/invoke/InvokePath;->channelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public declared-synchronized fist()Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/InvokePath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public free()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueueHolder;->access$000()Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain$InvokeChainQueue;->free(Lcom/transsion/apiinvoke/invoke/InvokeChain;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getChain()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/apiinvoke/invoke/InvokePath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isPublish()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->last()Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath$Publish;

    return p0
.end method

.method public isRequest()Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/invoke/InvokeChain;->last()Lcom/transsion/apiinvoke/invoke/InvokePath;

    move-result-object p0

    instance-of p0, p0, Lcom/transsion/apiinvoke/invoke/InvokePath$Request;

    return p0
.end method

.method public declared-synchronized last()Lcom/transsion/apiinvoke/invoke/InvokePath;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/InvokePath;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public put(Lcom/transsion/apiinvoke/invoke/InvokePath;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ChannelChain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChain, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/invoke/InvokeChain;->chain:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/invoke/InvokePath;

    const-string v3, ">>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "<<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
