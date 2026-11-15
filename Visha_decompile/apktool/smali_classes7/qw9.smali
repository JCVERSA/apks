.class public Lqw9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqw9$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/CountDownLatch;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/List;

.field public d:Lcx9;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StartupManager"

    iput-object v0, p0, Lqw9;->e:Ljava/lang/String;

    iput-object p1, p0, Lqw9;->b:Landroid/content/Context;

    iput-object p2, p0, Lqw9;->c:Ljava/util/List;

    iput-object p3, p0, Lqw9;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqw9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lpw9;)V
    .locals 3

    invoke-interface {p1}, Llc2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Llc2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqw9;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChildren_awaitCountDownLatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lqw9;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    iget-object v0, p0, Lqw9;->d:Lcx9;

    invoke-virtual {v0}, Lcx9;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lqw9;->d:Lcx9;

    invoke-virtual {v0}, Lcx9;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lqw9;->d:Lcx9;

    invoke-virtual {v1}, Lcx9;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpw9;

    invoke-interface {v0}, Llc2;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lqw9;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lqw9;->e:Ljava/lang/String;

    const-string v1, "must call on main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iget-object v0, p0, Lqw9;->c:Ljava/util/List;

    invoke-static {v0}, Llra;->a(Ljava/util/List;)Lcx9;

    move-result-object v0

    iput-object v0, p0, Lqw9;->d:Lcx9;

    invoke-virtual {v0}, Lcx9;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpw9;

    new-instance v2, Lcom/transsion/launch/run/StartupRunnable;

    iget-object v3, p0, Lqw9;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p0}, Lcom/transsion/launch/run/StartupRunnable;-><init>(Landroid/content/Context;Lpw9;Lqw9;)V

    invoke-interface {v1}, Llc2;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/transsion/launch/run/StartupRunnable;->run()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Llc2;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method
