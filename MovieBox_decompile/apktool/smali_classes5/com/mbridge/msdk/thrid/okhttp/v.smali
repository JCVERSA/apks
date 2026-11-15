.class final Lcom/mbridge/msdk/thrid/okhttp/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/v$b;
    }
.end annotation


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/t;

.field final b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

.field final c:Lcom/mbridge/msdk/thrid/okio/a;

.field private d:Lcom/mbridge/msdk/thrid/okhttp/n;

.field final e:Lcom/mbridge/msdk/thrid/okhttp/w;

.field final f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    .line 9
    .line 10
    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 11
    .line 12
    invoke-direct {p2, p1, p3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;Z)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 16
    .line 17
    new-instance p2, Lcom/mbridge/msdk/thrid/okhttp/v$a;

    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/mbridge/msdk/thrid/okhttp/v$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->b()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    int-to-long v0, p1

    .line 29
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    invoke-virtual {p2, v0, v1, p1}, Lcom/mbridge/msdk/thrid/okio/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okio/t;

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/thrid/okhttp/v;)Lcom/mbridge/msdk/thrid/okhttp/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-object p0
.end method

.method static a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)Lcom/mbridge/msdk/thrid/okhttp/v;
    .locals 1

    .line 2
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/v;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/t;->l()Lcom/mbridge/msdk/thrid/okhttp/n$c;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/n$c;->a(Lcom/mbridge/msdk/thrid/okhttp/d;)Lcom/mbridge/msdk/thrid/okhttp/n;

    move-result-object p0

    iput-object p0, v0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->d()Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method public b()Lcom/mbridge/msdk/thrid/okhttp/v;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/w;Z)Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method c()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->p()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/t;->i()Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/k;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/t;->q()Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/cache/c;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 51
    .line 52
    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/t;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    .line 59
    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->r()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->f:Z

    .line 74
    .line 75
    invoke-direct {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/b;-><init>(Z)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    new-instance v12, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;

    .line 82
    .line 83
    iget-object v6, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 84
    .line 85
    iget-object v8, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->e()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->y()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->C()I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v3, 0x0

    .line 109
    move-object v0, v12

    .line 110
    move-object v7, p0

    .line 111
    invoke-direct/range {v0 .. v11}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/g;-><init>(Ljava/util/List;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/c;ILcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/d;Lcom/mbridge/msdk/thrid/okhttp/n;III)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->e:Lcom/mbridge/msdk/thrid/okhttp/w;

    .line 115
    .line 116
    invoke-interface {v12, v0}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->b()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_1

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_1
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/io/Closeable;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/io/IOException;

    .line 133
    .line 134
    const-string v1, "Canceled"

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->b()Lcom/mbridge/msdk/thrid/okhttp/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->g:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->g:Z

    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->c:Lcom/mbridge/msdk/thrid/okio/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/a;->h()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/n;->callStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    .line 21
    .line 22
    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->a(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/v;->c()Lcom/mbridge/msdk/thrid/okhttp/y;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    .line 49
    .line 50
    const-string v1, "Canceled"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/v;->a(Ljava/io/IOException;)Ljava/io/IOException;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->d:Lcom/mbridge/msdk/thrid/okhttp/n;

    .line 64
    .line 65
    invoke-virtual {v1, p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->callFailed(Lcom/mbridge/msdk/thrid/okhttp/d;Ljava/io/IOException;)V

    .line 66
    .line 67
    .line 68
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->a:Lcom/mbridge/msdk/thrid/okhttp/t;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/t;->j()Lcom/mbridge/msdk/thrid/okhttp/l;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, p0}, Lcom/mbridge/msdk/thrid/okhttp/l;->b(Lcom/mbridge/msdk/thrid/okhttp/v;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v1, "Already Executed"

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 90
    throw v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/v;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/j;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
