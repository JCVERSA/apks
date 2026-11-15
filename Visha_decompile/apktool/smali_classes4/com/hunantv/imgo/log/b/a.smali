.class public Lcom/hunantv/imgo/log/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/imgo/log/b/f;


# static fields
.field public static a:Lcom/hunantv/imgo/log/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hunantv/imgo/log/b/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/hunantv/imgo/log/b/a;->a:Lcom/hunantv/imgo/log/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/hunantv/imgo/log/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/hunantv/imgo/log/b/a;->a:Lcom/hunantv/imgo/log/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/hunantv/imgo/log/b/a;

    invoke-direct {v1}, Lcom/hunantv/imgo/log/b/a;-><init>()V

    sput-object v1, Lcom/hunantv/imgo/log/b/a;->a:Lcom/hunantv/imgo/log/b/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/hunantv/imgo/log/b/a;->a:Lcom/hunantv/imgo/log/b/a;

    return-object v0
.end method

.method private a(Lcom/hunantv/imgo/log/LogConfig;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/LogConfig;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/a;->d()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/LogConfig;->d()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 22
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 23
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    .line 25
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_1
    :goto_2
    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/hunantv/imgo/log/c;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/config.conf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private d()Ljava/io/File;
    .locals 2

    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Lcom/hunantv/imgo/log/entity/b;)Lcom/hunantv/imgo/log/entity/c;
    .locals 3

    .line 7
    const-string v0, "ConfigRequestHandler"

    const-string v1, "handleRequest start"

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/hunantv/imgo/log/entity/b;->b:[B

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/hunantv/imgo/log/LogConfig;->a([BI)Lcom/hunantv/imgo/log/LogConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/hunantv/imgo/log/LogConfig;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    sput-object p1, Lcom/hunantv/imgo/log/c;->c:Lcom/hunantv/imgo/log/LogConfig;

    .line 12
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/b/a;->a(Lcom/hunantv/imgo/log/LogConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    const-string p0, "OK"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 15
    new-instance p1, Lcom/hunantv/imgo/log/entity/c;

    new-instance v0, Lcom/hunantv/imgo/log/entity/a;

    array-length v1, p0

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/hunantv/imgo/log/entity/a;-><init>(BI)V

    invoke-direct {p1, v0, p0}, Lcom/hunantv/imgo/log/entity/c;-><init>(Lcom/hunantv/imgo/log/entity/a;[B)V

    return-object p1
.end method

.method public b()V
    .locals 3

    invoke-direct {p0}, Lcom/hunantv/imgo/log/b/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    const/16 p0, 0x1000

    const/4 v1, 0x0

    :try_start_0
    new-array p0, p0, [B

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    invoke-static {p0, v0}, Lcom/hunantv/imgo/log/LogConfig;->a([BI)Lcom/hunantv/imgo/log/LogConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/LogConfig;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p0, Lcom/hunantv/imgo/log/c;->c:Lcom/hunantv/imgo/log/LogConfig;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    return-void
.end method
