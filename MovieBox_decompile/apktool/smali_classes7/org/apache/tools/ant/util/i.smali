.class public Lorg/apache/tools/ant/util/i;
.super Ljava/io/PipedInputStream;
.source "source.java"


# instance fields
.field private a:Lorg/apache/tools/ant/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/i;->a:Lorg/apache/tools/ant/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-le p2, v0, :cond_1

    .line 11
    .line 12
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public d(Lorg/apache/tools/ant/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/util/i;->a:Lorg/apache/tools/ant/q;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized read()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/io/PipedInputStream;->read()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    :try_start_1
    const-string v1, "write end dead"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 23
    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 27
    .line 28
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-ge v1, v3, :cond_1

    .line 32
    .line 33
    if-le v1, v0, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v1, 0x1

    .line 36
    .line 37
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 38
    .line 39
    aget-byte v0, v2, v1

    .line 40
    .line 41
    and-int/lit16 v0, v0, 0xff

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "error at LeadPipeInputStream.read():  "

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const/4 v1, 0x2

    .line 66
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/i;->b(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 v0, -0x1

    .line 70
    :goto_0
    monitor-exit p0

    .line 71
    return v0

    .line 72
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    throw v0
.end method
