.class public Lcom/transsion/log/common/LoganThread$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/log/common/SendLogRunnable$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/log/common/LoganThread;->doSendLog2Net(Lyb9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/log/common/LoganThread;


# direct methods
.method public constructor <init>(Lcom/transsion/log/common/LoganThread;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-static {v0}, Lcom/transsion/log/common/LoganThread;->c(Lcom/transsion/log/common/LoganThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-static {v1, p1}, Lcom/transsion/log/common/LoganThread;->d(Lcom/transsion/log/common/LoganThread;I)V

    const/16 v1, 0x2712

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-static {p1}, Lcom/transsion/log/common/LoganThread;->a(Lcom/transsion/log/common/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-static {v1}, Lcom/transsion/log/common/LoganThread;->b(Lcom/transsion/log/common/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-static {p1}, Lcom/transsion/log/common/LoganThread;->b(Lcom/transsion/log/common/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread$b;->a:Lcom/transsion/log/common/LoganThread;

    invoke-virtual {p0}, Lcom/transsion/log/common/LoganThread;->notifyRun()V

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
