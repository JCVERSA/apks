.class public abstract Lcom/transsion/athena/hatnea/anateh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task-Athena-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/athena/hatnea/c;->h(Lcom/transsion/athena/hatnea/anateh;)V

    iget-object p0, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/transsion/athena/hatnea/c;->h(Lcom/transsion/athena/hatnea/anateh;)V

    iget-object p0, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    return-void

    :goto_1
    invoke-static {}, Lcom/transsion/athena/hatnea/c;->d()Lcom/transsion/athena/hatnea/c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/transsion/athena/hatnea/c;->h(Lcom/transsion/athena/hatnea/anateh;)V

    iget-object p0, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method
