.class public Lorg/apache/tools/ant/taskdefs/StreamPumper;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x80


# instance fields
.field private autoflush:Z

.field private bufferSize:I

.field private closeWhenExhausted:Z

.field private exception:Ljava/lang/Exception;

.field private volatile finish:Z

.field private volatile finished:Z

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private started:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    const/16 v1, 0x80

    .line 4
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 6
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    .line 7
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 8
    iput-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getBufferSize()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public declared-synchronized getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 8
    .line 9
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finish:Z

    .line 10
    .line 11
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    .line 12
    .line 13
    new-array v2, v2, [B

    .line 14
    .line 15
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-lez v3, :cond_1

    .line 22
    .line 23
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finish:Z

    .line 24
    .line 25
    if-nez v4, :cond_1

    .line 26
    .line 27
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {v4, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 30
    .line 31
    .line 32
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception v1

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    .line 59
    .line 60
    :catch_1
    :cond_2
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 61
    .line 62
    monitor-enter p0

    .line 63
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    .line 65
    .line 66
    monitor-exit p0

    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    throw v0

    .line 71
    :goto_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :try_start_5
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    .line 73
    .line 74
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 75
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    :try_start_6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 82
    .line 83
    .line 84
    :catch_2
    :cond_3
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 85
    .line 86
    monitor-enter p0

    .line 87
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 88
    .line 89
    .line 90
    monitor-exit p0

    .line 91
    :goto_2
    return-void

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 94
    throw v0

    .line 95
    :catchall_3
    move-exception v1

    .line 96
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 97
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 98
    :goto_3
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    .line 99
    .line 100
    if-eqz v2, :cond_4

    .line 101
    .line 102
    :try_start_a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 105
    .line 106
    .line 107
    :catch_3
    :cond_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 108
    .line 109
    monitor-enter p0

    .line 110
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    .line 112
    .line 113
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 114
    throw v1

    .line 115
    :catchall_4
    move-exception v0

    .line 116
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 117
    throw v0

    .line 118
    :catchall_5
    move-exception v0

    .line 119
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 120
    throw v0
.end method

.method setAutoflush(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setBufferSize(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Cannot set buffer size on a running StreamPumper"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method

.method declared-synchronized stop()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finish:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
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

.method public declared-synchronized waitFor()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method
