.class public Lorg/apache/tools/ant/a;
.super Ljava/lang/ClassLoader;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/a$a;
    }
.end annotation


# static fields
.field private static final k:Lorg/apache/tools/ant/util/d;

.field private static l:Ljava/util/Map;

.field static synthetic m:Ljava/lang/Class;

.field static synthetic n:Ljava/lang/Class;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Lorg/apache/tools/ant/Project;

.field private c:Z

.field private d:Ljava/util/Vector;

.field private e:Ljava/util/Vector;

.field private f:Z

.field private g:Ljava/lang/ClassLoader;

.field private h:Ljava/util/Hashtable;

.field private i:Ljava/lang/ClassLoader;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/tools/ant/a;->k:Lorg/apache/tools/ant/util/d;

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/apache/tools/ant/a;->l:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->c:Z

    .line 17
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->d:Ljava/util/Vector;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->e:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->f:Z

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 21
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 22
    iput-object v1, p0, Lorg/apache/tools/ant/a;->i:Ljava/lang/ClassLoader;

    .line 23
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 24
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/a;->F(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/m;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->c:Z

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->d:Ljava/util/Vector;

    .line 5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/a;->e:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->f:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 8
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 9
    iput-object v1, p0, Lorg/apache/tools/ant/a;->i:Ljava/lang/ClassLoader;

    .line 10
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->F(Ljava/lang/ClassLoader;)V

    .line 12
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/a;->D(Lorg/apache/tools/ant/types/m;)V

    .line 13
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/a;->H(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {p0, v1, p1}, Lorg/apache/tools/ant/a;->u(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v1
.end method

.method static synthetic d(Lorg/apache/tools/ant/a;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private n(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method private o(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    invoke-direct {p0, v3, v0}, Lorg/apache/tools/ant/a;->u(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v5, "Loaded from "

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v5, " "

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x4

    .line 56
    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v1, p1, v3}, Lorg/apache/tools/ant/a;->r(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception v4

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuffer;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "Exception reading component "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    const-string v3, " (reason: "

    .line 87
    .line 88
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .line 97
    .line 98
    const-string v3, ")"

    .line 99
    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v4, 0x3

    .line 108
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_2
    throw p1

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 114
    .line 115
    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_3
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method

.method private q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2e

    .line 7
    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string p1, ".class"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private r(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Class;
    .locals 6

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2000

    .line 7
    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    :goto_0
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x1

    .line 16
    if-eq v4, v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/tools/ant/a;->k(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private t(Ljava/io/File;)Ljava/util/jar/Manifest;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    move-object v1, v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception p1

    .line 26
    :goto_0
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 29
    .line 30
    .line 31
    :cond_1
    throw p1
.end method

.method private u(Ljava/io/File;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/zip/ZipFile;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_3

    .line 28
    .line 29
    new-instance v2, Ljava/io/FileInputStream;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :catch_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-nez v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 46
    .line 47
    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 51
    .line 52
    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/zip/ZipFile;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v0

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p1

    .line 76
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v3, "Ignoring Exception "

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    const-string v3, ": "

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    const-string v1, " reading resource "

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    const-string p2, " from "

    .line 118
    .line 119
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 p2, 0x3

    .line 130
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-object v0
.end method

.method private w()Ljava/lang/ClassLoader;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method private y(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/a;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/tools/ant/a;->d:Ljava/util/Vector;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/a;->e:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :cond_3
    return v0
.end method

.method private z(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method


# virtual methods
.method protected B(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/k;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/tools/ant/a;->i:Ljava/lang/ClassLoader;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/apache/tools/ant/util/k;->c(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lorg/apache/tools/ant/a;->i:Ljava/lang/ClassLoader;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public D(Lorg/apache/tools/ant/types/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v0, "ignore"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/m;->n(Ljava/lang/String;)Lorg/apache/tools/ant/types/m;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/m;->r()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v1, p1

    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    :try_start_0
    aget-object v1, p1, v0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public declared-synchronized E(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lorg/apache/tools/ant/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public F(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    sget-object p1, Lorg/apache/tools/ant/a;->m:Ljava/lang/Class;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "org.apache.tools.ant.AntClassLoader"

    .line 8
    .line 9
    invoke-static {p1}, Lorg/apache/tools/ant/a;->i(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sput-object p1, Lorg/apache/tools/ant/a;->m:Ljava/lang/Class;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/a;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public H(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->a(Lorg/apache/tools/ant/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lorg/apache/tools/ant/util/k;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lorg/apache/tools/ant/util/k;->a()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/apache/tools/ant/a;->i:Ljava/lang/ClassLoader;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v1, "build.sysclasspath"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "only"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object v0, p0

    .line 45
    :goto_0
    invoke-static {v0}, Lorg/apache/tools/ant/util/k;->c(Ljava/lang/ClassLoader;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/apache/tools/ant/a;->j:Z

    .line 50
    .line 51
    :cond_1
    return-void

    .line 52
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 53
    .line 54
    const-string v1, "Context loader has not been reset"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public a(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/apache/tools/ant/BuildEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/f;->h()Ljava/util/Vector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/a;->h(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->D(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p1, v0

    .line 16
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->g(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method

.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Finding class "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->o(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method protected findResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/tools/ant/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/a$a;-><init>(Lorg/apache/tools/ant/a;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/util/b$b;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/apache/tools/ant/util/b$b;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->y(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {v1, v0}, Lorg/apache/tools/ant/util/b;->a(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/a;->f:Z

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/a;->w()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-direct {p0}, Lorg/apache/tools/ant/a;->w()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Lorg/apache/tools/ant/util/b;->a(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    return-object v0

    .line 63
    :cond_3
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/b;->a(Ljava/util/Enumeration;Ljava/util/Enumeration;)Ljava/util/Enumeration;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected g(Ljava/io/File;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string v1, "-"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lorg/apache/tools/ant/a;->l:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, ""

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 62
    .line 63
    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    .line 65
    .line 66
    :try_start_1
    new-instance v5, Ljava/util/zip/ZipEntry;

    .line 67
    .line 68
    const-string v6, "META-INF/MANIFEST.MF"

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 74
    .line 75
    .line 76
    move-result-object v3
    :try_end_1
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    invoke-static {v3}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/InputStreamReader;

    .line 87
    .line 88
    const-string v6, "UTF-8"

    .line 89
    .line 90
    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Lorg/apache/tools/ant/taskdefs/k;

    .line 94
    .line 95
    invoke-direct {v6, v5}, Lorg/apache/tools/ant/taskdefs/k;-><init>(Ljava/io/Reader;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/k;->b()Lorg/apache/tools/ant/taskdefs/k$b;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    const-string v6, "Class-Path"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/taskdefs/k$b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1
    :try_end_2
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v3}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    move-object v4, v3

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-object v4, v3

    .line 121
    goto :goto_2

    .line 122
    :goto_1
    invoke-static {v3}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 123
    .line 124
    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 128
    .line 129
    .line 130
    :cond_2
    throw p1

    .line 131
    :catch_1
    :goto_2
    invoke-static {v3}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 132
    .line 133
    .line 134
    if-eqz v4, :cond_3

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 138
    .line 139
    move-object v1, v2

    .line 140
    :cond_4
    sget-object v3, Lorg/apache/tools/ant/a;->l:Ljava/util/Map;

    .line 141
    .line 142
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    sget-object v0, Lorg/apache/tools/ant/a;->k:Lorg/apache/tools/ant/util/d;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/d;->j(Ljava/io/File;)Ljava/net/URL;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v0, Ljava/util/StringTokenizer;

    .line 158
    .line 159
    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_6
    :goto_4
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Ljava/net/URL;

    .line 173
    .line 174
    invoke-direct {v2, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    const-string v4, "file"

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_7

    .line 188
    .line 189
    new-instance v2, Ljava/lang/StringBuffer;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "Skipping jar library "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    .line 201
    .line 202
    const-string v1, " since only relative URLs are supported by this"

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    const-string v1, " loader"

    .line 208
    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const/4 v2, 0x3

    .line 217
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_7
    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v1}, Lkz/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    new-instance v2, Ljava/io/File;

    .line 230
    .line 231
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/a;->x(Ljava/io/File;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_6

    .line 245
    .line 246
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/a;->g(Ljava/io/File;)V

    .line 247
    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_8
    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->y(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v0, v1

    .line 23
    :goto_0
    const-string v2, " loaded from parent loader"

    .line 24
    .line 25
    const-string v3, "Resource "

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuffer;

    .line 31
    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p0, v5, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v5, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/io/File;

    .line 71
    .line 72
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/a;->v(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    new-instance v6, Ljava/lang/StringBuffer;

    .line 79
    .line 80
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    .line 88
    .line 89
    const-string v7, " loaded from ant loader"

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {p0, v6, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    :goto_2
    if-nez v0, :cond_8

    .line 103
    .line 104
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->y(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_8

    .line 109
    .line 110
    iget-boolean v0, p0, Lorg/apache/tools/ant/a;->f:Z

    .line 111
    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-direct {p0}, Lorg/apache/tools/ant/a;->w()Ljava/lang/ClassLoader;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-direct {p0}, Lorg/apache/tools/ant/a;->w()Ljava/lang/ClassLoader;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_3
    move-object v0, v1

    .line 130
    goto :goto_4

    .line 131
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/a;->g:Ljava/lang/ClassLoader;

    .line 132
    .line 133
    if-nez v0, :cond_7

    .line 134
    .line 135
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_4
    if-eqz v0, :cond_8

    .line 145
    .line 146
    new-instance v1, Ljava/lang/StringBuffer;

    .line 147
    .line 148
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    :cond_8
    if-nez v0, :cond_9

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuffer;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "Couldn\'t load Resource "

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    :cond_9
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->y(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, " loaded from ant loader"

    .line 6
    .line 7
    const-string v2, " loaded from parent loader"

    .line 8
    .line 9
    const-string v3, "ResourceStream for "

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->z(Ljava/lang/String;)Ljava/io/InputStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->A(Ljava/lang/String;)Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->A(Ljava/lang/String;)Ljava/io/InputStream;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuffer;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->z(Ljava/lang/String;)Ljava/io/InputStream;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuffer;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuffer;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "Couldn\'t load ResourceStream for "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1, v4}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    :cond_4
    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->d:Ljava/util/Vector;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    const-string v2, "."

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public declared-synchronized j()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/util/zip/ZipFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/Hashtable;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 32
    .line 33
    iget-object v0, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/Project;->B(Lorg/apache/tools/ant/c;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/a;->b:Lorg/apache/tools/ant/Project;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    throw v0
.end method

.method protected k(Ljava/io/File;[BLjava/lang/String;)Ljava/lang/Class;
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p3}, Lorg/apache/tools/ant/a;->l(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    array-length v4, p2

    .line 5
    sget-object p1, Lorg/apache/tools/ant/a;->n:Ljava/lang/Class;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "org.apache.tools.ant.Project"

    .line 10
    .line 11
    invoke-static {p1}, Lorg/apache/tools/ant/a;->i(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sput-object p1, Lorg/apache/tools/ant/a;->n:Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v3, 0x0

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p3

    .line 24
    move-object v2, p2

    .line 25
    invoke-virtual/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method protected l(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->t(Ljava/io/File;)Ljava/util/jar/Manifest;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_2

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v2, p0

    .line 37
    invoke-virtual/range {v2 .. v10}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p0, p1, v3, p2}, Lorg/apache/tools/ant/a;->m(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->y(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    const/4 v1, 0x4

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->n(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/lang/StringBuffer;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Class "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const-string v3, " loaded from parent loader "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string v3, "(parentFirst)"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v2, Ljava/lang/StringBuffer;

    .line 59
    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v3, "Class "

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    const-string p1, " loaded from ant loader "

    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string p1, "(parentFirst)"

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v2, Ljava/lang/StringBuffer;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v3, "Class "

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    const-string v3, " loaded from ant loader"

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p0, v2, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    :try_start_5
    iget-boolean v2, p0, Lorg/apache/tools/ant/a;->f:Z

    .line 121
    .line 122
    if-nez v2, :cond_3

    .line 123
    .line 124
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/a;->n(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v2, Ljava/lang/StringBuffer;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "Class "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    const-string p1, " loaded from parent loader"

    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    :goto_0
    if-eqz p2, :cond_2

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    .line 157
    .line 158
    :cond_2
    monitor-exit p0

    .line 159
    return-object v0

    .line 160
    :cond_3
    :try_start_6
    throw v0

    .line 161
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    throw p1
.end method

.method protected m(Ljava/io/File;Ljava/lang/String;Ljava/util/jar/Manifest;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2e

    .line 7
    .line 8
    const/16 v2, 0x2f

    .line 9
    .line 10
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, "/"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p3, v0}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v3, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    sget-object v4, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 46
    .line 47
    invoke-virtual {v0, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v5, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 52
    .line 53
    invoke-virtual {v0, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object v6, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 58
    .line 59
    invoke-virtual {v0, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    sget-object v8, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 70
    .line 71
    invoke-virtual {v0, v8}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object v0, v1

    .line 77
    move-object v2, v0

    .line 78
    move-object v3, v2

    .line 79
    move-object v4, v3

    .line 80
    move-object v5, v4

    .line 81
    move-object v6, v5

    .line 82
    move-object v7, v6

    .line 83
    :goto_0
    invoke-virtual {p3}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    if-eqz p3, :cond_7

    .line 88
    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    sget-object v2, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 92
    .line 93
    invoke-virtual {p3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    :cond_1
    if-nez v3, :cond_2

    .line 98
    .line 99
    sget-object v3, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 100
    .line 101
    invoke-virtual {p3, v3}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    :cond_2
    if-nez v4, :cond_3

    .line 106
    .line 107
    sget-object v4, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 108
    .line 109
    invoke-virtual {p3, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    :cond_3
    if-nez v5, :cond_4

    .line 114
    .line 115
    sget-object v5, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 116
    .line 117
    invoke-virtual {p3, v5}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    :cond_4
    if-nez v6, :cond_5

    .line 122
    .line 123
    sget-object v6, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 124
    .line 125
    invoke-virtual {p3, v6}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    :cond_5
    if-nez v7, :cond_6

    .line 130
    .line 131
    sget-object v7, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 132
    .line 133
    invoke-virtual {p3, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    :cond_6
    if-nez v0, :cond_7

    .line 138
    .line 139
    sget-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 140
    .line 141
    invoke-virtual {p3, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :cond_7
    move-object v9, v6

    .line 146
    move-object v8, v7

    .line 147
    move-object v6, v3

    .line 148
    move-object v7, v5

    .line 149
    move-object v5, v4

    .line 150
    move-object v4, v2

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 154
    .line 155
    invoke-virtual {v0, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    const-string v0, "true"

    .line 160
    .line 161
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-eqz p3, :cond_8

    .line 166
    .line 167
    :try_start_0
    new-instance p3, Ljava/net/URL;

    .line 168
    .line 169
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    .line 184
    move-object v10, p3

    .line 185
    goto :goto_1

    .line 186
    :catch_0
    :cond_8
    move-object v10, v1

    .line 187
    :goto_1
    move-object v2, p0

    .line 188
    move-object v3, p2

    .line 189
    invoke-virtual/range {v2 .. v10}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "force loading "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x4

    .line 19
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/a;->B(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v3, "path.separator"

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/io/File;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AntClassLoader["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/tools/ant/a;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    const-string v1, "]"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method protected v(Ljava/io/File;Ljava/lang/String;)Ljava/net/URL;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/zip/ZipFile;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    :try_start_1
    sget-object p1, Lorg/apache/tools/ant/a;->k:Lorg/apache/tools/ant/util/d;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/util/d;->j(Ljava/io/File;)Ljava/net/URL;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_1
    return-object v0

    .line 39
    :cond_0
    if-nez v1, :cond_2

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 48
    .line 49
    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lorg/apache/tools/ant/a;->h:Ljava/util/Hashtable;

    .line 53
    .line 54
    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-object v0

    .line 59
    :cond_2
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 60
    .line 61
    .line 62
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    if-eqz p2, :cond_3

    .line 64
    .line 65
    :try_start_3
    new-instance v1, Ljava/net/URL;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "jar:"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    sget-object v3, Lorg/apache/tools/ant/a;->k:Lorg/apache/tools/ant/util/d;

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/util/d;->j(Ljava/io/File;)Ljava/net/URL;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    const-string p1, "!/"

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :catch_2
    return-object v0

    .line 103
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    .line 105
    .line 106
    :cond_3
    return-object v0
.end method

.method protected x(Ljava/io/File;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/a;->a:Ljava/util/Vector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return p1
.end method
