.class Lcom/mgtv/thirdsdk/datareport/a/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/datareport/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgtv/thirdsdk/datareport/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/mgtv/thirdsdk/datareport/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/thirdsdk/datareport/a/a;

    monitor-enter p0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->a(Lcom/mgtv/thirdsdk/datareport/a/a;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->b(Lcom/mgtv/thirdsdk/datareport/a/a;)J

    move-result-wide v6

    cmp-long p1, v2, v6

    if-gez p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/a;->a(J)V

    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->b(Lcom/mgtv/thirdsdk/datareport/a/a;)J

    move-result-wide v2

    add-long/2addr v6, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v6, v2

    :goto_0
    cmp-long p1, v6, v4

    if-gez p1, :cond_2

    invoke-static {v0}, Lcom/mgtv/thirdsdk/datareport/a/a;->b(Lcom/mgtv/thirdsdk/datareport/a/a;)J

    move-result-wide v2

    add-long/2addr v6, v2

    goto :goto_0

    :cond_2
    invoke-static {v0, v6, v7}, Lcom/mgtv/thirdsdk/datareport/a/a;->a(Lcom/mgtv/thirdsdk/datareport/a/a;J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/a;->b(Lcom/mgtv/thirdsdk/datareport/a/a;J)J

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void
.end method
