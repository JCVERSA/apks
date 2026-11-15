.class public Lorg/apache/tools/ant/util/h;
.super Ljava/io/OutputStream;
.source "source.java"


# instance fields
.field private a:Ljava/io/FileOutputStream;

.field private b:Ljava/io/File;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/h;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/h;->f:Z

    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/tools/ant/util/h;->b:Ljava/io/File;

    .line 10
    .line 11
    iput-boolean p2, p0, Lorg/apache/tools/ant/util/h;->c:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lorg/apache/tools/ant/util/h;->d:Z

    .line 14
    .line 15
    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/h;->f:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/h;->e:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/tools/ant/util/h;->b:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/h;->c:Z

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/apache/tools/ant/util/h;->a:Ljava/io/FileOutputStream;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/h;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lorg/apache/tools/ant/util/h;->b:Ljava/io/File;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string v2, " has already been closed."

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/h;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/h;->f:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/apache/tools/ant/util/h;->d()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/h;->e:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/apache/tools/ant/util/h;->a:Ljava/io/FileOutputStream;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/h;->d()V

    .line 6
    iget-object v0, p0, Lorg/apache/tools/ant/util/h;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/tools/ant/util/h;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/h;->d()V

    .line 3
    iget-object v0, p0, Lorg/apache/tools/ant/util/h;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
