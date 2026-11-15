.class public Lcom/mgtv/ssp/utils/language/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/utils/language/a$b;,
        Lcom/mgtv/ssp/utils/language/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/ssp/utils/language/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/mgtv/ssp/utils/language/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mgtv/ssp/utils/language/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "can\'t make dirs in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v7, Lcom/mgtv/ssp/utils/language/a$a;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mgtv/ssp/utils/language/a$a;-><init>(Lcom/mgtv/ssp/utils/language/a;Ljava/io/File;JILcom/mgtv/ssp/utils/language/a$1;)V

    iput-object v7, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mgtv/ssp/utils/language/a;
    .locals 2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 p0, 0x5f5e100

    const v1, 0x7fffffff

    .line 3
    invoke-static {v0, p0, p1, v1}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/io/File;JI)Lcom/mgtv/ssp/utils/language/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/File;JI)Lcom/mgtv/ssp/utils/language/a;
    .locals 3

    .line 4
    sget-object v0, Lcom/mgtv/ssp/utils/language/a;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/ssp/utils/language/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/utils/language/a;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/mgtv/ssp/utils/language/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mgtv/ssp/utils/language/a;-><init>(Ljava/io/File;JI)V

    .line 6
    sget-object p1, Lcom/mgtv/ssp/utils/language/a;->a:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/ssp/utils/language/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/mgtv/ssp/utils/language/a;Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/utils/language/a;->b(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 3

    const/4 v0, 0x0

    .line 20
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;[BI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 27
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_2
    return-void

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 29
    :catch_3
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 22
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->b(Lcom/mgtv/ssp/utils/language/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 24
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    const-string v0, ""

    .line 26
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    .line 28
    :cond_1
    invoke-static {v0}, Lcom/mgtv/ssp/utils/language/a$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 29
    invoke-static {v0}, Lcom/mgtv/ssp/utils/language/a$b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p0

    .line 32
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/a;->d(Ljava/lang/String;)Z

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, v2

    .line 35
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    .line 36
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return-object v2

    :goto_5
    if-eqz v2, :cond_4

    .line 38
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :cond_4
    :goto_6
    throw p0
.end method

.method public a()V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, p1, p2, v0}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/mgtv/ssp/utils/language/a$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mgtv/ssp/utils/language/a$1;-><init>(Lcom/mgtv/ssp/utils/language/a;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-static {v0}, Lcom/hunantv/imgo/util/ThreadManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/ssp/utils/language/a;->b(Ljava/lang/String;Ljava/io/Serializable;I)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 11
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 12
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/io/File;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 15
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 16
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    goto :goto_0

    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_1

    .line 17
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 18
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    :cond_1
    :goto_5
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/io/File;)V

    .line 21
    throw p2
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 46
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/io/File;)V

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    .line 48
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 49
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 50
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p2

    goto :goto_0

    :goto_3
    return-void

    :goto_4
    if-eqz v0, :cond_1

    .line 51
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 52
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    :cond_1
    :goto_5
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->a(Lcom/mgtv/ssp/utils/language/a$a;Ljava/io/File;)V

    .line 55
    throw p2
.end method

.method public a(Ljava/lang/String;[BI)V
    .locals 0

    .line 56
    invoke-static {p3, p2}, Lcom/mgtv/ssp/utils/language/a$b;->a(I[B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public b(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {v1, p1}, Lcom/mgtv/ssp/utils/language/a$a;->b(Lcom/mgtv/ssp/utils/language/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    .line 6
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 7
    invoke-static {v1}, Lcom/mgtv/ssp/utils/language/a$b;->a([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    invoke-static {v1}, Lcom/mgtv/ssp/utils/language/a$b;->b([B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    .line 11
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/a;->d(Ljava/lang/String;)Z

    return-object v0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 14
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    .line 15
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_3

    .line 17
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    :cond_3
    :goto_5
    throw p0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/a;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_5

    :catch_3
    move-exception v1

    move-object p0, p1

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object p0, p1

    move-object v0, p0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_3
    if-eqz p0, :cond_1

    :try_start_7
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_4
    return-object p1

    :goto_5
    if-eqz v0, :cond_2

    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz p0, :cond_3

    :try_start_9
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_7
    throw p1

    :cond_4
    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/a;->b:Lcom/mgtv/ssp/utils/language/a$a;

    invoke-static {p0, p1}, Lcom/mgtv/ssp/utils/language/a$a;->c(Lcom/mgtv/ssp/utils/language/a$a;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
