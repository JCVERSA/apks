.class public Lcom/pgl/ssdk/t0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/t0$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pgl/ssdk/t0;->a:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/pgl/ssdk/t0$a;
    .locals 6

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 9
    new-instance v1, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v1, v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 10
    :try_start_1
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/pgl/ssdk/t0;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p0, :cond_0

    .line 11
    :try_start_2
    sget-object p0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/pgl/ssdk/t0;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    :goto_0
    move-object v0, v1

    goto/16 :goto_5

    :cond_0
    :goto_1
    if-eqz p0, :cond_2

    .line 12
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 14
    :try_start_4
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v2, 0x4000

    .line 15
    :try_start_5
    new-array v2, v2, [B

    .line 16
    :goto_2
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 17
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_3

    .line 18
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x1ed

    invoke-static {p2, v2}, Lcom/pgl/ssdk/p0;->a(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 19
    invoke-static {p1}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 20
    invoke-static {p0}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 21
    invoke-static {v1}, Lcom/pgl/ssdk/p0;->a(Ljava/util/zip/ZipFile;)V

    return-object v0

    :goto_3
    move-object v0, v1

    move-object v5, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v5

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object p1, v0

    goto :goto_4

    .line 22
    :cond_2
    :try_start_6
    new-instance p0, Lcom/pgl/ssdk/t0$a;

    invoke-static {v1, p1}, Lcom/pgl/ssdk/t0;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lcom/pgl/ssdk/t0$a;-><init>(I[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 23
    invoke-static {v0}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 24
    invoke-static {v0}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 25
    invoke-static {v1}, Lcom/pgl/ssdk/p0;->a(Ljava/util/zip/ZipFile;)V

    return-object p0

    :goto_4
    move-object p2, v0

    goto :goto_0

    :catchall_4
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    .line 26
    :goto_5
    :try_start_7
    new-instance v1, Lcom/pgl/ssdk/t0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/pgl/ssdk/t0$a;-><init>(I[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 27
    invoke-static {p2}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 28
    invoke-static {p1}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 29
    invoke-static {v0}, Lcom/pgl/ssdk/p0;->a(Ljava/util/zip/ZipFile;)V

    return-object v1

    :catchall_5
    move-exception p0

    .line 30
    invoke-static {p2}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 31
    invoke-static {p1}, Lcom/pgl/ssdk/p0;->a(Ljava/io/Closeable;)V

    .line 32
    invoke-static {v0}, Lcom/pgl/ssdk/p0;->a(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libso"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pgl/ssdk/p0;->a(Ljava/lang/String;)Z

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 5
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p0}, Lcom/pgl/ssdk/t0;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const-string v1, "x86_64"

    const-string v2, "armeabi"

    const-string v3, "armeabi-v7a"

    const-string v4, "arm64-v8a"

    const-string v5, "x86"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 35
    aget-object v3, v1, v2

    .line 36
    invoke-static {p0, v3, p1}, Lcom/pgl/ssdk/t0;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_1
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_2
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 43
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "supportedABIS"

    .line 45
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "curABIs"

    .line 46
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "apkABIS"

    .line 47
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 49
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x2d

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-gtz v0, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {p2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Lcom/pgl/ssdk/t0$a;
    .locals 6

    .line 1
    const-class v0, Lcom/pgl/ssdk/t0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/t0;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v2

    .line 15
    :cond_0
    const/4 v1, 0x3

    .line 16
    :try_start_1
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v3, Lcom/pgl/ssdk/t0;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    goto :goto_1

    .line 29
    :goto_0
    :try_start_2
    new-instance p1, Lcom/pgl/ssdk/t0$a;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    filled-new-array {p0}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {p1, v1, p0}, Lcom/pgl/ssdk/t0$a;-><init>(I[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object p1

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    goto :goto_3

    .line 46
    :goto_1
    :try_start_3
    invoke-static {p0, p1}, Lcom/pgl/ssdk/t0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    .line 52
    new-instance p0, Lcom/pgl/ssdk/t0$a;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v2, "output null"

    .line 59
    .line 60
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, v1, p1}, Lcom/pgl/ssdk/t0$a;-><init>(I[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object p0

    .line 69
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {p0, p1, v4}, Lcom/pgl/ssdk/t0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/pgl/ssdk/t0$a;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 82
    if-eqz p0, :cond_3

    .line 83
    .line 84
    monitor-exit v0

    .line 85
    return-object p0

    .line 86
    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Lcom/pgl/ssdk/t0;->a:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 96
    .line 97
    .line 98
    :goto_2
    monitor-exit v0

    .line 99
    return-object v2

    .line 100
    :catchall_2
    move-exception p0

    .line 101
    :try_start_6
    new-instance p1, Lcom/pgl/ssdk/t0$a;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    filled-new-array {v2, p0}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {p1, v1, p0}, Lcom/pgl/ssdk/t0$a;-><init>(I[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    .line 117
    .line 118
    monitor-exit v0

    .line 119
    return-object p1

    .line 120
    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 121
    throw p0
.end method
