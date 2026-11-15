.class public Lorg/apache/tools/ant/util/c;
.super Ljava/io/InputStream;
.source "source.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:[Ljava/io/File;

.field private d:Ljava/io/InputStream;

.field private e:Lorg/apache/tools/ant/q;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/apache/tools/ant/util/c;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/c;->b:Z

    .line 9
    .line 10
    iput-object p1, p0, Lorg/apache/tools/ant/util/c;->c:[Ljava/io/File;

    .line 11
    .line 12
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/c;->d:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/apache/tools/ant/util/c;->d:Ljava/io/InputStream;

    .line 8
    .line 9
    return-void
.end method

.method private h(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/c;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/apache/tools/ant/util/c;->c:[Ljava/io/File;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Opening "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/apache/tools/ant/util/c;->c:[Ljava/io/File;

    .line 22
    .line 23
    aget-object v1, v1, p1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/c;->f(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 37
    .line 38
    new-instance v1, Ljava/io/FileInputStream;

    .line 39
    .line 40
    iget-object v2, p0, Lorg/apache/tools/ant/util/c;->c:[Ljava/io/File;

    .line 41
    .line 42
    aget-object v2, v2, p1

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/apache/tools/ant/util/c;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuffer;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v2, "Failed to open "

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lorg/apache/tools/ant/util/c;->c:[Ljava/io/File;

    .line 65
    .line 66
    aget-object p1, v2, p1

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/util/c;->f(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_0
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/c;->b:Z

    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method private k()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/c;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/tools/ant/util/c;->d:Ljava/io/InputStream;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 16
    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/c;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/c;->b:Z

    .line 6
    .line 7
    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/util/c;->e:Lorg/apache/tools/ant/q;

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

.method public l(Lorg/apache/tools/ant/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/util/c;->e:Lorg/apache/tools/ant/q;

    .line 2
    .line 3
    return-void
.end method

.method public read()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/util/c;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/c;->b:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lorg/apache/tools/ant/util/c;->a:I

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    iput v0, p0, Lorg/apache/tools/ant/util/c;->a:I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/c;->h(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lorg/apache/tools/ant/util/c;->k()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_0
    return v0
.end method
