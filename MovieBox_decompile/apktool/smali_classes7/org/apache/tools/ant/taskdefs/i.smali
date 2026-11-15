.class public Lorg/apache/tools/ant/taskdefs/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/util/r;


# instance fields
.field private a:Ljava/lang/Process;

.field private volatile b:Z

.field private c:Ljava/lang/Exception;

.field private volatile d:Z

.field private e:Lorg/apache/tools/ant/util/Watchdog;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->b:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->d:Z

    .line 11
    .line 12
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->e:Lorg/apache/tools/ant/util/Watchdog;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/r;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Exception in ExecuteWatchdog.run: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v0
.end method

.method protected declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->b:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->a:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized d(Ljava/lang/Process;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->a:Ljava/lang/Process;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->d:Z

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/i;->b:Z

    .line 16
    .line 17
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/i;->a:Ljava/lang/Process;

    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/i;->e:Lorg/apache/tools/ant/util/Watchdog;

    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Already running."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 37
    .line 38
    const-string v0, "process is null."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public declared-synchronized e()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/i;->e:Lorg/apache/tools/ant/util/Watchdog;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public declared-synchronized timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/i;->a:Ljava/lang/Process;

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_3

    .line 10
    :catch_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :catch_1
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/i;->b:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/i;->d:Z

    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/i;->a:Ljava/lang/Process;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/i;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    goto :goto_4

    .line 30
    :goto_1
    :try_start_3
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/i;->c:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :goto_2
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/i;->b()V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    throw p1
.end method
