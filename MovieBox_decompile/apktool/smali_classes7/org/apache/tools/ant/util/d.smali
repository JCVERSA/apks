.class public Lorg/apache/tools/ant/util/d;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final d:Lorg/apache/tools/ant/util/d;

.field private static e:Ljava/util/Random;

.field private static final f:Z

.field private static final g:Z

.field private static final h:Z

.field private static final i:Z

.field static synthetic j:Ljava/lang/Class;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/util/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/tools/ant/util/d;->d:Lorg/apache/tools/ant/util/d;

    .line 7
    .line 8
    new-instance v0, Ljava/util/Random;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    add-long/2addr v1, v3

    .line 23
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lorg/apache/tools/ant/util/d;->e:Ljava/util/Random;

    .line 27
    .line 28
    const-string v0, "netware"

    .line 29
    .line 30
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput-boolean v0, Lorg/apache/tools/ant/util/d;->f:Z

    .line 35
    .line 36
    const-string v0, "dos"

    .line 37
    .line 38
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput-boolean v0, Lorg/apache/tools/ant/util/d;->g:Z

    .line 43
    .line 44
    const-string v0, "win9x"

    .line 45
    .line 46
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sput-boolean v0, Lorg/apache/tools/ant/util/d;->h:Z

    .line 51
    .line 52
    const-string v0, "windows"

    .line 53
    .line 54
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput-boolean v0, Lorg/apache/tools/ant/util/d;->i:Z

    .line 59
    .line 60
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/util/d;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lorg/apache/tools/ant/util/d;->b:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/apache/tools/ant/util/d;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static b(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static d(Ljava/io/Reader;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static e(Ljava/io/Writer;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static g(Ljava/io/File;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static k()Lorg/apache/tools/ant/util/d;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/util/d;->d:Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-char v2, Ljava/io/File;->separatorChar:C

    .line 10
    .line 11
    const/16 v3, 0x2f

    .line 12
    .line 13
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/16 v3, 0x5c

    .line 18
    .line 19
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sget-boolean v4, Lorg/apache/tools/ant/util/d;->g:Z

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    sget-boolean v6, Lorg/apache/tools/ant/util/d;->f:Z

    .line 33
    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    if-ne v3, v2, :cond_1

    .line 37
    .line 38
    move v1, v5

    .line 39
    :cond_1
    return v1

    .line 40
    :cond_2
    const/4 v6, 0x2

    .line 41
    if-ne v3, v2, :cond_5

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    if-le v0, v3, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v3, v2, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->indexOf(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-le p0, v6, :cond_4

    .line 60
    .line 61
    add-int/2addr p0, v5

    .line 62
    if-ge p0, v0, :cond_4

    .line 63
    .line 64
    move v1, v5

    .line 65
    :cond_4
    :goto_0
    return v1

    .line 66
    :cond_5
    const/16 v0, 0x3a

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    if-ne v0, v5, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-le v3, v6, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eq p0, v2, :cond_7

    .line 91
    .line 92
    :cond_6
    sget-boolean p0, Lorg/apache/tools/ant/util/d;->f:Z

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    if-lez v0, :cond_8

    .line 97
    .line 98
    :cond_7
    move v1, v5

    .line 99
    :cond_8
    return v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lorg/apache/tools/ant/util/d;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lorg/apache/tools/ant/util/d;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    :cond_1
    return v1

    .line 17
    :cond_2
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 18
    .line 19
    const/16 v2, 0x2f

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    const/16 v2, 0x5c

    .line 26
    .line 27
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v2, v0, :cond_3

    .line 41
    .line 42
    if-eq v3, v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ne v5, v0, :cond_4

    .line 49
    .line 50
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_5

    .line 55
    .line 56
    if-le v3, v4, :cond_5

    .line 57
    .line 58
    const/16 v2, 0x3a

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v2, v4, :cond_5

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-eq v3, v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eq p0, v0, :cond_5

    .line 74
    .line 75
    :cond_4
    move v1, v4

    .line 76
    :cond_5
    return v1
.end method


# virtual methods
.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, "java.io.tmpdir"

    .line 4
    .line 5
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :goto_0
    if-eqz p5, :cond_1

    .line 15
    .line 16
    :try_start_0
    new-instance p5, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {p5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2, p5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 28
    .line 29
    new-instance p4, Ljava/lang/StringBuffer;

    .line 30
    .line 31
    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p5, "Could not create tempfile in "

    .line 35
    .line 36
    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p2

    .line 50
    :cond_1
    new-instance p5, Ljava/text/DecimalFormat;

    .line 51
    .line 52
    const-string v0, "#####"

    .line 53
    .line 54
    invoke-direct {p5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lorg/apache/tools/ant/util/d;->e:Ljava/util/Random;

    .line 58
    .line 59
    monitor-enter v0

    .line 60
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    sget-object v3, Lorg/apache/tools/ant/util/d;->e:Ljava/util/Random;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    int-to-long v3, v3

    .line 81
    invoke-virtual {p5, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_2

    .line 103
    .line 104
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    move-object p1, v1

    .line 106
    :goto_1
    if-eqz p4, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 109
    .line 110
    .line 111
    :cond_3
    return-object p1

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    throw p1
.end method

.method public h(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v1, 0x5c

    .line 10
    .line 11
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lorg/apache/tools/ant/util/d;->l(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    const/16 v1, 0x3a

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x2

    .line 29
    if-lez v1, :cond_5

    .line 30
    .line 31
    sget-boolean v4, Lorg/apache/tools/ant/util/d;->g:Z

    .line 32
    .line 33
    if-nez v4, :cond_0

    .line 34
    .line 35
    sget-boolean v4, Lorg/apache/tools/ant/util/d;->f:Z

    .line 36
    .line 37
    if-eqz v4, :cond_5

    .line 38
    .line 39
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 40
    .line 41
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v5, Ljava/lang/StringBuffer;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    aget-char v5, p1, v4

    .line 65
    .line 66
    if-ne v5, v0, :cond_1

    .line 67
    .line 68
    add-int/lit8 v4, v1, 0x2

    .line 69
    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .line 74
    .line 75
    :goto_0
    array-length v3, p1

    .line 76
    if-ge v4, v3, :cond_4

    .line 77
    .line 78
    aget-char v3, p1, v4

    .line 79
    .line 80
    if-ne v3, v0, :cond_2

    .line 81
    .line 82
    add-int/lit8 v5, v4, -0x1

    .line 83
    .line 84
    aget-char v5, p1, v5

    .line 85
    .line 86
    if-eq v5, v0, :cond_3

    .line 87
    .line 88
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/4 v4, 0x1

    .line 104
    if-le v1, v4, :cond_7

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-ne v1, v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/2addr v1, v4

    .line 117
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-le v0, v3, :cond_6

    .line 122
    .line 123
    add-int/2addr v0, v4

    .line 124
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    move-object v2, v0

    .line 129
    goto :goto_1

    .line 130
    :cond_6
    move-object v2, p1

    .line 131
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_2
    filled-new-array {v2, p1}, [Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuffer;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    .line 160
    .line 161
    const-string p1, " is not an absolute path"

    .line 162
    .line 163
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/d;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lorg/apache/tools/ant/util/d;->c:Ljava/lang/String;

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lkz/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->l(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/util/d;->b:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v1, p0, Lorg/apache/tools/ant/util/d;->c:Ljava/lang/String;

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public j(Ljava/io/File;)Ljava/net/URL;
    .locals 1

    .line 1
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public n(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public o(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Stack;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/d;->h(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aget-object v3, v1, v2

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v3, Ljava/util/StringTokenizer;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    aget-object v1, v1, v4

    .line 20
    .line 21
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v3, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v5, "."

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v5, ".."

    .line 46
    .line 47
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v5, 0x2

    .line 58
    if-ge v1, v5, :cond_1

    .line 59
    .line 60
    new-instance v0, Ljava/io/File;

    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-ge v2, v1, :cond_5

    .line 84
    .line 85
    if-le v2, v4, :cond_4

    .line 86
    .line 87
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    new-instance v0, Ljava/io/File;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object v0
.end method

.method public p(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :cond_2
    return-object p2
.end method

.method public q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {p2}, Lorg/apache/tools/ant/util/d;->l(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 8
    .line 9
    const/16 v1, 0x2f

    .line 10
    .line 11
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/16 v1, 0x5c

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {p2}, Lorg/apache/tools/ant/util/d;->m(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string p1, "user.dir"

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-ne v2, v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne v2, v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/d;->h(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    aget-object p1, p1, v1

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :cond_0
    move-object p1, v3

    .line 74
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public r(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "java.net.URI"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-object v1, v0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 13
    .line 14
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lorg/apache/tools/ant/util/d;->j:Ljava/lang/Class;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const-string v3, "java.io.File"

    .line 26
    .line 27
    invoke-static {v3}, Lorg/apache/tools/ant/util/d;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sput-object v3, Lorg/apache/tools/ant/util/d;->j:Ljava/lang/Class;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_1
    move-exception v1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_1
    const-string v4, "toURI"

    .line 37
    .line 38
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "toASCIIString"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    return-object v1

    .line 59
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    .line 72
    .line 73
    const-string v3, "file:"

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v0, "//"

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const-string v3, "/"

    .line 98
    .line 99
    if-nez v0, :cond_2

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    :cond_2
    const/16 v0, 0x5c

    .line 105
    .line 106
    const/16 v4, 0x2f

    .line 107
    .line 108
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :try_start_2
    invoke-static {p1}, Lkz/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    .line 118
    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :catch_2
    move-exception p1

    .line 136
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 137
    .line 138
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    throw v0
.end method
