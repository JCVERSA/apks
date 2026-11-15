.class public Lcom/lzy/okserver/task/PriorityBlockingQueue$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okserver/task/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

.field public c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

.field public d:Ljava/lang/Object;

.field public final synthetic e:Lcom/lzy/okserver/task/PriorityBlockingQueue;


# direct methods
.method public constructor <init>(Lcom/lzy/okserver/task/PriorityBlockingQueue;)V
    .locals 1

    iput-object p1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v0, v0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw p0
.end method


# virtual methods
.method public final a(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Lcom/lzy/okserver/task/PriorityBlockingQueue$b;
    .locals 1

    :goto_0
    iget-object v0, p1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    invoke-virtual {p0, v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->a(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->b:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyLock()V

    :try_start_0
    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    iget-object v1, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    iget-object v1, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue;->head:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    :cond_0
    iget-object v2, v1, Lcom/lzy/okserver/task/PriorityBlockingQueue$b;->c:Lcom/lzy/okserver/task/PriorityBlockingQueue$b;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {v0, v1, v2}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->unlink(Lcom/lzy/okserver/task/PriorityBlockingQueue$b;Lcom/lzy/okserver/task/PriorityBlockingQueue$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/lzy/okserver/task/PriorityBlockingQueue$a;->e:Lcom/lzy/okserver/task/PriorityBlockingQueue;

    invoke-virtual {p0}, Lcom/lzy/okserver/task/PriorityBlockingQueue;->fullyUnlock()V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
