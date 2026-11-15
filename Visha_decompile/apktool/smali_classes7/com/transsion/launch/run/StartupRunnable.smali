.class public Lcom/transsion/launch/run/StartupRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private startup:Lpw9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpw9;"
        }
    .end annotation
.end field

.field private startupManager:Lqw9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpw9;Lqw9;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lpw9;",
            "Lqw9;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StartupRunnable"

    iput-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/launch/run/StartupRunnable;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    iput-object p3, p0, Lcom/transsion/launch/run/StartupRunnable;->startupManager:Lqw9;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-interface {v0}, Llc2;->f()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-interface {v0}, Llc2;->d()V

    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_start_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    iget-object v1, p0, Lcom/transsion/launch/run/StartupRunnable;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lpw9;->create(Landroid/content/Context;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task_end_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/transsion/launch/run/StartupRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task_failed_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/transsion/launch/run/StartupRunnable;->startupManager:Lqw9;

    iget-object p0, p0, Lcom/transsion/launch/run/StartupRunnable;->startup:Lpw9;

    invoke-virtual {v0, p0}, Lqw9;->b(Lpw9;)V

    return-void
.end method
