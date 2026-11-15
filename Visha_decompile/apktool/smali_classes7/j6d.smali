.class public Lj6d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfkd;


# instance fields
.field public a:Lmfd;

.field public final b:Labd;

.field public final c:Ldld;

.field public d:Ljava/io/File;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labd;

    invoke-direct {v0}, Labd;-><init>()V

    iput-object v0, p0, Lj6d;->b:Labd;

    new-instance v0, Ldld;

    invoke-direct {v0}, Ldld;-><init>()V

    iput-object v0, p0, Lj6d;->c:Ldld;

    iput-object p1, p0, Lj6d;->d:Ljava/io/File;

    iput-wide p2, p0, Lj6d;->e:J

    iput-wide p4, p0, Lj6d;->f:J

    return-void
.end method


# virtual methods
.method public a(Lzad;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lj6d;->c:Ldld;

    invoke-virtual {v0, p1}, Ldld;->a(Lzad;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lj6d;->d()Lmfd;

    move-result-object p0

    invoke-virtual {p0, p1}, Lmfd;->E(Ljava/lang/String;)Lmfd$e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmfd$e;->a(I)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public b(Lzad;Lfkd$a;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lj6d;->b:Labd;

    invoke-virtual {v0, p1}, Labd;->a(Lzad;)V

    iget-object v0, p0, Lj6d;->c:Ldld;

    invoke-virtual {v0, p1}, Ldld;->a(Lzad;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lj6d;->d()Lmfd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmfd;->E(Ljava/lang/String;)Lmfd$e;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    iget-object p0, p0, Lj6d;->b:Labd;

    invoke-virtual {p0, p1}, Labd;->b(Lzad;)V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lj6d;->a:Lmfd;

    invoke-virtual {v2, v0}, Lmfd;->b(Ljava/lang/String;)Lmfd$c;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, v0}, Lmfd$c;->b(I)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast p2, Lgnd;

    :try_start_3
    invoke-virtual {p2, v0}, Lgnd;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lmfd$c;->f()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Lmfd$c;->d()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p0, p0, Lj6d;->b:Labd;

    invoke-virtual {p0, p1}, Labd;->b(Lzad;)V

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    goto :goto_2

    :goto_1
    :try_start_5
    invoke-virtual {v2}, Lmfd$c;->d()V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v3, "Had two simultaneous puts for: "

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object p0, p0, Lj6d;->b:Labd;

    invoke-virtual {p0, p1}, Labd;->b(Lzad;)V

    :goto_3
    return-object v1

    :goto_4
    iget-object p0, p0, Lj6d;->b:Labd;

    invoke-virtual {p0, p1}, Labd;->b(Lzad;)V

    throw p2
.end method

.method public c()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lj6d;->d()Lmfd;

    move-result-object p0

    invoke-virtual {p0}, Lmfd;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final d()Lmfd;
    .locals 8

    iget-object v0, p0, Lj6d;->a:Lmfd;

    if-nez v0, :cond_2

    const-class v0, Lj6d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj6d;->a:Lmfd;

    if-nez v1, :cond_1

    iget-object v1, p0, Lj6d;->d:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-static {}, Lxj1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzx9;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lj6d;->d:Ljava/io/File;

    iget-wide v4, p0, Lj6d;->e:J

    iget-wide v6, p0, Lj6d;->f:J

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static/range {v1 .. v7}, Lmfd;->e(Ljava/io/File;IIJJ)Lmfd;

    move-result-object v1

    iput-object v1, p0, Lj6d;->a:Lmfd;

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lj6d;->a:Lmfd;

    return-object p0
.end method
