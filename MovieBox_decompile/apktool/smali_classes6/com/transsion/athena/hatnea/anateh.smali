.class public abstract Lcom/transsion/athena/hatnea/anateh;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
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
.method protected abstract a()V
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Task-Athena-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->b()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/athena/hatnea/anateh;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p0}, Lcom/transsion/athena/hatnea/athena;->b(Lcom/transsion/athena/hatnea/anateh;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, p0}, Lcom/transsion/athena/hatnea/athena;->b(Lcom/transsion/athena/hatnea/anateh;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, p0}, Lcom/transsion/athena/hatnea/athena;->b(Lcom/transsion/athena/hatnea/anateh;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/transsion/athena/hatnea/anateh;->b:Ljava/lang/Thread;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method
