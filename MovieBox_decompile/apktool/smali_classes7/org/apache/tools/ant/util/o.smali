.class public Lorg/apache/tools/ant/util/o;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Lorg/apache/tools/ant/util/d;

.field private static final b:Lnz/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/apache/tools/ant/util/o;->a:Lorg/apache/tools/ant/util/d;

    .line 6
    .line 7
    new-instance v0, Lnz/b;

    .line 8
    .line 9
    new-instance v1, Lnz/a;

    .line 10
    .line 11
    invoke-direct {v1}, Lnz/a;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lnz/b;-><init>(Lnz/c;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/tools/ant/util/o;->b:Lnz/c;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    .line 10
    .line 11
    :try_start_1
    new-instance p0, Ljava/io/BufferedInputStream;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v0, -0x1

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    if-eq p1, v2, :cond_0

    .line 32
    .line 33
    if-le p1, v2, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :cond_1
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :goto_0
    move-object v0, v1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    :cond_3
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    move-object p0, v0

    .line 62
    goto :goto_0

    .line 63
    :catchall_2
    move-exception p1

    .line 64
    move-object p0, v0

    .line 65
    :goto_1
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public static b(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;Z)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/t;->equals(Ljava/lang/Object;)Z

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
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/t;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 v3, -0x1

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move v3, v4

    .line 29
    :cond_2
    return v3

    .line 30
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->j()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/t;->j()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    return v1

    .line 43
    :cond_4
    if-nez v0, :cond_7

    .line 44
    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_5
    if-eqz p2, :cond_6

    .line 49
    .line 50
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/o;->c(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    goto :goto_0

    .line 55
    :cond_6
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/o;->a(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    :goto_0
    return p0

    .line 60
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_8
    move v3, v4

    .line 64
    :goto_2
    return v3
.end method

.method private static c(Lorg/apache/tools/ant/types/t;Lorg/apache/tools/ant/types/t;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 3
    .line 4
    new-instance v2, Ljava/io/InputStreamReader;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    .line 15
    .line 16
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 17
    .line 18
    new-instance v2, Ljava/io/InputStreamReader;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/t;->e()Ljava/io/InputStream;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 54
    .line 55
    .line 56
    return p1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    :goto_1
    move-object v0, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 p1, -0x1

    .line 74
    :goto_2
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 78
    .line 79
    .line 80
    return p1

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    move-object p0, v0

    .line 83
    goto :goto_1

    .line 84
    :catchall_2
    move-exception p1

    .line 85
    move-object p0, v0

    .line 86
    :goto_3
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->d(Ljava/io/Reader;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method
