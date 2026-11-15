.class public Lorg/apache/tools/ant/taskdefs/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/h;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/Thread;

.field private c:Lorg/apache/tools/ant/taskdefs/StreamPumper;

.field private d:Ljava/io/OutputStream;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/l;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p1}, Lorg/apache/tools/ant/taskdefs/l;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/l;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/l;->d:Ljava/io/OutputStream;

    .line 3
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/l;->e:Ljava/io/OutputStream;

    .line 4
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/l;->f:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->e:Ljava/io/OutputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/l;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->f:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/tools/ant/taskdefs/l;->d(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/l;->c:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :goto_0
    return-void
.end method

.method public c(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->d:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/l;->f(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Lorg/apache/tools/ant/taskdefs/StreamPumper;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->setAutoflush(Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method protected e(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/l;->g(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/l;->b:Ljava/lang/Thread;

    .line 6
    .line 7
    return-void
.end method

.method protected f(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/l;->g(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/l;->a:Ljava/lang/Thread;

    .line 6
    .line 7
    return-void
.end method

.method protected g(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/l;->h(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected h(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->a:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->b:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->c:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/l;->c:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->a:Ljava/lang/Thread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->b:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9
    .line 10
    .line 11
    :catch_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->c:Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->stop()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->e:Ljava/io/OutputStream;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 21
    .line 22
    .line 23
    :catch_2
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/l;->d:Ljava/io/OutputStream;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    .line 27
    .line 28
    :catch_3
    return-void
.end method
