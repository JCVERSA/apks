.class public Lfl/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lfl/h;


# instance fields
.field private a:Lfl/f;

.field private final b:Lfl/e;

.field private final c:Lfl/i;

.field private d:Ljava/io/File;

.field private final e:J

.field private final f:J


# direct methods
.method protected constructor <init>(Ljava/io/File;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfl/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lfl/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfl/b;->b:Lfl/e;

    .line 10
    .line 11
    new-instance v0, Lfl/i;

    .line 12
    .line 13
    invoke-direct {v0}, Lfl/i;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lfl/b;->c:Lfl/i;

    .line 17
    .line 18
    iput-object p1, p0, Lfl/b;->d:Ljava/io/File;

    .line 19
    .line 20
    iput-wide p2, p0, Lfl/b;->e:J

    .line 21
    .line 22
    iput-wide p4, p0, Lfl/b;->f:J

    .line 23
    .line 24
    return-void
.end method

.method private d()Lfl/f;
    .locals 9

    .line 1
    iget-object v0, p0, Lfl/b;->a:Lfl/f;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v0, Lfl/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lfl/b;->a:Lfl/f;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lfl/b;->d:Ljava/io/File;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lkl/i;->a(Landroid/content/Context;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    move-object v2, v1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :goto_0
    iput-object v2, p0, Lfl/b;->d:Ljava/io/File;

    .line 29
    .line 30
    iget-wide v5, p0, Lfl/b;->e:J

    .line 31
    .line 32
    iget-wide v7, p0, Lfl/b;->f:J

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-static/range {v2 .. v8}, Lfl/f;->h(Ljava/io/File;IIJJ)Lfl/f;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lfl/b;->a:Lfl/f;

    .line 41
    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1

    .line 46
    :cond_2
    :goto_2
    iget-object v0, p0, Lfl/b;->a:Lfl/f;

    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public a(Lel/e;)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lfl/b;->c:Lfl/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lfl/i;->a(Lel/e;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    invoke-direct {p0}, Lfl/b;->d()Lfl/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lfl/f;->p(Ljava/lang/String;)Lfl/f$e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lfl/f$e;->a(I)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    return-object p1
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lfl/b;->d()Lfl/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lfl/f;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public c(Lel/e;Lfl/h$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfl/b;->b:Lfl/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lfl/e;->a(Lel/e;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfl/b;->c:Lfl/i;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lfl/i;->a(Lel/e;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-direct {p0}, Lfl/b;->d()Lfl/f;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lfl/f;->p(Ljava/lang/String;)Lfl/f$e;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lfl/b;->b:Lfl/e;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Lfl/e;->b(Lel/e;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v1, p0, Lfl/b;->a:Lfl/f;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lfl/f;->d(Ljava/lang/String;)Lfl/f$c;

    .line 31
    .line 32
    .line 33
    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :try_start_2
    invoke-virtual {v1, v0}, Lfl/f$c;->b(I)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    check-cast p2, Lfl/j;

    .line 42
    .line 43
    :try_start_3
    invoke-virtual {p2, v0}, Lfl/j;->a(Ljava/io/File;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lfl/f$c;->f()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p2

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Lfl/f$c;->d()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lfl/b;->b:Lfl/e;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lfl/e;->b(Lel/e;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :catchall_1
    move-exception p2

    .line 65
    goto :goto_4

    .line 66
    :catch_0
    move-exception p2

    .line 67
    goto :goto_2

    .line 68
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Lfl/f$c;->d()V

    .line 69
    .line 70
    .line 71
    throw p2

    .line 72
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    .line 78
    .line 79
    const-string v2, "Had two simultaneous puts for: "

    .line 80
    .line 81
    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 95
    :goto_2
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lfl/b;->b:Lfl/e;

    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lfl/e;->b(Lel/e;)V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-void

    .line 104
    :goto_4
    iget-object v0, p0, Lfl/b;->b:Lfl/e;

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lfl/e;->b(Lel/e;)V

    .line 107
    .line 108
    .line 109
    throw p2
.end method
