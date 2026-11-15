.class public Lorg/apache/tools/ant/taskdefs/m;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/m$a;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/String;


# instance fields
.field private A:Z

.field private a:[Ljava/io/File;

.field private b:[Ljava/io/File;

.field private c:[Ljava/io/File;

.field private d:Z

.field private e:Lorg/apache/tools/ant/taskdefs/m$a;

.field private f:Lorg/apache/tools/ant/taskdefs/m$a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lorg/apache/tools/ant/q;

.field private n:Ljava/io/OutputStream;

.field private o:Ljava/io/OutputStream;

.field private p:Ljava/io/InputStream;

.field private q:Ljava/io/PrintStream;

.field private r:Ljava/io/PrintStream;

.field private s:Ljava/util/Vector;

.field private t:Ljava/util/Vector;

.field private u:Ljava/util/Vector;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/ThreadGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "file.encoding"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/apache/tools/ant/taskdefs/m;->B:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/q;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 9
    .line 10
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->k:Z

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->l:Z

    .line 18
    .line 19
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 20
    .line 21
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->q:Ljava/io/PrintStream;

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->r:Ljava/io/PrintStream;

    .line 28
    .line 29
    sget-object v1, Lorg/apache/tools/ant/taskdefs/m;->B:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->v:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->w:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 36
    .line 37
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->y:Z

    .line 38
    .line 39
    new-instance v1, Ljava/lang/ThreadGroup;

    .line 40
    .line 41
    const-string v2, "redirector"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 47
    .line 48
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->A:Z

    .line 49
    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 51
    .line 52
    return-void
.end method

.method static synthetic a(Lorg/apache/tools/ant/taskdefs/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lorg/apache/tools/ant/taskdefs/m;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/apache/tools/ant/taskdefs/m;->y:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lorg/apache/tools/ant/taskdefs/m;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/m;->k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->c:[Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    const-string v2, "Error "

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v2, "appended"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v2, "redirected"

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v2, " to "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->c:[Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/m;->h([Ljava/io/File;Ljava/lang/String;I)Ljava/io/OutputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->d:Z

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    new-instance v2, Lorg/apache/tools/ant/util/m;

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    invoke-direct {v2, v0, v3, v4}, Lorg/apache/tools/ant/util/m;-><init>(Ljava/io/OutputStream;J)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/m;->g()Ljava/io/OutputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/m;->g()Ljava/io/OutputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 76
    .line 77
    const-string v2, "error splitting output/error streams"

    .line 78
    .line 79
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->h:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 88
    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    new-instance v0, Lorg/apache/tools/ant/taskdefs/m$a;

    .line 92
    .line 93
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->h:Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {v0, p0, v2}, Lorg/apache/tools/ant/taskdefs/m$a;-><init>(Lorg/apache/tools/ant/taskdefs/m;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 99
    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 101
    .line 102
    new-instance v2, Ljava/lang/StringBuffer;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v3, "Error redirected to property: "

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->h:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/util/g;

    .line 125
    .line 126
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/g;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->c:[Ljava/io/File;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    array-length v1, v1

    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/util/q;

    .line 140
    .line 141
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 142
    .line 143
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/q;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 144
    .line 145
    .line 146
    move-object v0, v1

    .line 147
    :cond_5
    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 152
    .line 153
    :goto_3
    return-void
.end method

.method private h([Ljava/io/File;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 8

    .line 1
    new-instance v0, Lorg/apache/tools/ant/util/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, p1, v1

    .line 5
    .line 6
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 7
    .line 8
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/m;->l:Z

    .line 9
    .line 10
    invoke-direct {v0, v2, v3, v4}, Lorg/apache/tools/ant/util/h;-><init>(Ljava/io/File;ZZ)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    aget-object v1, p1, v1

    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v2, v1, p3}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    new-array p2, p2, [C

    .line 40
    .line 41
    const/16 v1, 0x20

    .line 42
    .line 43
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x1

    .line 52
    :goto_0
    array-length v2, p1

    .line 53
    if-ge p2, v2, :cond_0

    .line 54
    .line 55
    new-instance v2, Lorg/apache/tools/ant/util/q;

    .line 56
    .line 57
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 58
    .line 59
    new-instance v4, Lorg/apache/tools/ant/util/h;

    .line 60
    .line 61
    aget-object v5, p1, p2

    .line 62
    .line 63
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 64
    .line 65
    iget-boolean v7, p0, Lorg/apache/tools/ant/taskdefs/m;->l:Z

    .line 66
    .line 67
    invoke-direct {v4, v5, v6, v7}, Lorg/apache/tools/ant/util/h;-><init>(Ljava/io/File;ZZ)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/util/q;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 74
    .line 75
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuffer;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    aget-object v4, p1, p2

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3, p3}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    return-object v0
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->b:[Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    const-string v2, "Output "

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/m;->j:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v2, "appended"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v2, "redirected"

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string v2, " to "

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->b:[Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/m;->h([Ljava/io/File;Ljava/lang/String;I)Ljava/io/OutputStream;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->g:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    new-instance v0, Lorg/apache/tools/ant/taskdefs/m$a;

    .line 54
    .line 55
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->g:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v0, p0, v2}, Lorg/apache/tools/ant/taskdefs/m$a;-><init>(Lorg/apache/tools/ant/taskdefs/m;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 61
    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuffer;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "Output redirected to property: "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->g:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/util/g;

    .line 87
    .line 88
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 89
    .line 90
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/g;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 94
    .line 95
    if-nez v1, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/util/q;

    .line 99
    .line 100
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 101
    .line 102
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/util/q;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 103
    .line 104
    .line 105
    move-object v0, v1

    .line 106
    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;

    .line 111
    .line 112
    :goto_2
    return-void
.end method

.method private k(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/StringReader;

    .line 4
    .line 5
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/g;->u(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    sget-object v2, Lorg/apache/tools/ant/util/p;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/Project;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public declared-synchronized d()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_3

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 40
    .line 41
    .line 42
    :catch_0
    :goto_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-lez v0, :cond_2

    .line 49
    .line 50
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuffer;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v2, "waiting for "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    const-string v2, " Threads:"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v2, 0x4

    .line 81
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    new-array v1, v0, [Ljava/lang/Thread;

    .line 91
    .line 92
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 95
    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    :goto_2
    if-ge v3, v0, :cond_1

    .line 99
    .line 100
    aget-object v4, v1, v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    :try_start_2
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v5, v4, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .line 112
    .line 113
    :catch_1
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_1
    const-wide/16 v0, 0x3e8

    .line 117
    .line 118
    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/m;->j()V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 127
    .line 128
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 129
    .line 130
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 131
    .line 132
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->q:Ljava/io/PrintStream;

    .line 133
    .line 134
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->r:Ljava/io/PrintStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .line 136
    monitor-exit p0

    .line 137
    return-void

    .line 138
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    throw v0
.end method

.method public declared-synchronized e()Lorg/apache/tools/ant/taskdefs/h;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/m;->f()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lorg/apache/tools/ant/taskdefs/l;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/l;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public declared-synchronized f()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/m;->i()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/m;->g()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->k:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto/16 :goto_d

    .line 19
    .line 20
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/j;

    .line 21
    .line 22
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/j;-><init>(Lorg/apache/tools/ant/q;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/util/q;

    .line 34
    .line 35
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 36
    .line 37
    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/util/q;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 38
    .line 39
    .line 40
    move-object v0, v1

    .line 41
    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 42
    .line 43
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/m;->k:Z

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 49
    .line 50
    if-nez v0, :cond_5

    .line 51
    .line 52
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/j;

    .line 53
    .line 54
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/j;-><init>(Lorg/apache/tools/ant/q;I)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 60
    .line 61
    if-nez v2, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    new-instance v2, Lorg/apache/tools/ant/util/q;

    .line 65
    .line 66
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 67
    .line 68
    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/util/q;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 69
    .line 70
    .line 71
    move-object v0, v2

    .line 72
    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 73
    .line 74
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->s:Ljava/util/Vector;

    .line 75
    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-gtz v0, :cond_7

    .line 85
    .line 86
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->v:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    :cond_7
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/i;

    .line 97
    .line 98
    invoke-direct {v0}, Lorg/apache/tools/ant/util/i;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/util/i;->d(Lorg/apache/tools/ant/q;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Ljava/io/InputStreamReader;

    .line 107
    .line 108
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 109
    .line 110
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->s:Ljava/util/Vector;

    .line 114
    .line 115
    if-eqz v4, :cond_8

    .line 116
    .line 117
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-lez v4, :cond_8

    .line 122
    .line 123
    new-instance v4, Lhz/a;

    .line 124
    .line 125
    invoke-direct {v4}, Lhz/a;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 129
    .line 130
    invoke-virtual {v5}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Lhz/a;->e(Lorg/apache/tools/ant/Project;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v3}, Lhz/a;->d(Ljava/io/Reader;)V

    .line 138
    .line 139
    .line 140
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->s:Ljava/util/Vector;

    .line 141
    .line 142
    invoke-virtual {v4, v3}, Lhz/a;->c(Ljava/util/Vector;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lhz/a;->b()Ljava/io/Reader;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    :goto_3
    new-instance v4, Lorg/apache/tools/ant/util/n;

    .line 153
    .line 154
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->v:Ljava/lang/String;

    .line 155
    .line 156
    invoke-direct {v4, v3, v5}, Lorg/apache/tools/ant/util/n;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v3, Ljava/lang/Thread;

    .line 160
    .line 161
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 162
    .line 163
    new-instance v6, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 164
    .line 165
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 166
    .line 167
    invoke-direct {v6, v4, v7, v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 168
    .line 169
    .line 170
    const-string v4, "output pumper"

    .line 171
    .line 172
    invoke-direct {v3, v5, v6, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 176
    .line 177
    .line 178
    new-instance v4, Ljava/io/PipedOutputStream;

    .line 179
    .line 180
    invoke-direct {v4, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 181
    .line 182
    .line 183
    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->n:Ljava/io/OutputStream;

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_4
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 190
    .line 191
    const-string v2, "error setting up output stream"

    .line 192
    .line 193
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw v1

    .line 197
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->t:Ljava/util/Vector;

    .line 198
    .line 199
    if-eqz v0, :cond_a

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-gtz v0, :cond_b

    .line 206
    .line 207
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->w:Ljava/lang/String;

    .line 208
    .line 209
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    if-nez v0, :cond_d

    .line 216
    .line 217
    :cond_b
    :try_start_3
    new-instance v0, Lorg/apache/tools/ant/util/i;

    .line 218
    .line 219
    invoke-direct {v0}, Lorg/apache/tools/ant/util/i;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 223
    .line 224
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/util/i;->d(Lorg/apache/tools/ant/q;)V

    .line 225
    .line 226
    .line 227
    new-instance v3, Ljava/io/InputStreamReader;

    .line 228
    .line 229
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->t:Ljava/util/Vector;

    .line 235
    .line 236
    if-eqz v4, :cond_c

    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-lez v4, :cond_c

    .line 243
    .line 244
    new-instance v4, Lhz/a;

    .line 245
    .line 246
    invoke-direct {v4}, Lhz/a;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 250
    .line 251
    invoke-virtual {v5}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v4, v5}, Lhz/a;->e(Lorg/apache/tools/ant/Project;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v4, v3}, Lhz/a;->d(Ljava/io/Reader;)V

    .line 259
    .line 260
    .line 261
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->t:Ljava/util/Vector;

    .line 262
    .line 263
    invoke-virtual {v4, v3}, Lhz/a;->c(Ljava/util/Vector;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Lhz/a;->b()Ljava/io/Reader;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    goto :goto_6

    .line 271
    :catch_1
    move-exception v0

    .line 272
    goto :goto_7

    .line 273
    :cond_c
    :goto_6
    new-instance v4, Lorg/apache/tools/ant/util/n;

    .line 274
    .line 275
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->w:Ljava/lang/String;

    .line 276
    .line 277
    invoke-direct {v4, v3, v5}, Lorg/apache/tools/ant/util/n;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    new-instance v3, Ljava/lang/Thread;

    .line 281
    .line 282
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/m;->z:Ljava/lang/ThreadGroup;

    .line 283
    .line 284
    new-instance v6, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    .line 285
    .line 286
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 287
    .line 288
    invoke-direct {v6, v4, v7, v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 289
    .line 290
    .line 291
    const-string v4, "error pumper"

    .line 292
    .line 293
    invoke-direct {v3, v5, v6, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 297
    .line 298
    .line 299
    new-instance v2, Ljava/io/PipedOutputStream;

    .line 300
    .line 301
    invoke-direct {v2, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    .line 302
    .line 303
    .line 304
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->o:Ljava/io/OutputStream;

    .line 305
    .line 306
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    .line 308
    .line 309
    goto :goto_8

    .line 310
    :goto_7
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 311
    .line 312
    const-string v2, "error setting up error stream"

    .line 313
    .line 314
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .line 316
    .line 317
    throw v1

    .line 318
    :cond_d
    :goto_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->a:[Ljava/io/File;

    .line 319
    .line 320
    const/4 v2, 0x3

    .line 321
    if-eqz v0, :cond_f

    .line 322
    .line 323
    array-length v0, v0

    .line 324
    if-lez v0, :cond_f

    .line 325
    .line 326
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 327
    .line 328
    new-instance v3, Ljava/lang/StringBuffer;

    .line 329
    .line 330
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 331
    .line 332
    .line 333
    const-string v4, "Redirecting input from file"

    .line 334
    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    .line 337
    .line 338
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/m;->a:[Ljava/io/File;

    .line 339
    .line 340
    array-length v4, v4

    .line 341
    if-ne v4, v1, :cond_e

    .line 342
    .line 343
    const-string v1, ""

    .line 344
    .line 345
    goto :goto_9

    .line 346
    :cond_e
    const-string v1, "s"

    .line 347
    .line 348
    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 356
    .line 357
    .line 358
    :try_start_5
    new-instance v0, Lorg/apache/tools/ant/util/c;

    .line 359
    .line 360
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->a:[Ljava/io/File;

    .line 361
    .line 362
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/util/c;-><init>([Ljava/io/File;)V

    .line 363
    .line 364
    .line 365
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 366
    .line 367
    :try_start_6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/c;->l(Lorg/apache/tools/ant/q;)V

    .line 370
    .line 371
    .line 372
    goto :goto_b

    .line 373
    :catch_2
    move-exception v0

    .line 374
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 375
    .line 376
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 377
    .line 378
    .line 379
    throw v1

    .line 380
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->i:Ljava/lang/String;

    .line 381
    .line 382
    if-eqz v0, :cond_11

    .line 383
    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    .line 385
    .line 386
    const-string v1, "Using input "

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/m;->A:Z

    .line 392
    .line 393
    if-eqz v1, :cond_10

    .line 394
    .line 395
    const/16 v1, 0x22

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 398
    .line 399
    .line 400
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->i:Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 406
    .line 407
    .line 408
    goto :goto_a

    .line 409
    :cond_10
    const-string v1, "string"

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    .line 413
    .line 414
    :goto_a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 415
    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 421
    .line 422
    .line 423
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 424
    .line 425
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->i:Ljava/lang/String;

    .line 426
    .line 427
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 432
    .line 433
    .line 434
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 435
    .line 436
    :cond_11
    :goto_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 437
    .line 438
    if-eqz v0, :cond_12

    .line 439
    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->u:Ljava/util/Vector;

    .line 441
    .line 442
    if-eqz v0, :cond_12

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-lez v0, :cond_12

    .line 449
    .line 450
    new-instance v0, Lhz/a;

    .line 451
    .line 452
    invoke-direct {v0}, Lhz/a;-><init>()V

    .line 453
    .line 454
    .line 455
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->m:Lorg/apache/tools/ant/q;

    .line 456
    .line 457
    invoke-virtual {v1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lhz/a;->e(Lorg/apache/tools/ant/Project;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 462
    .line 463
    .line 464
    :try_start_7
    new-instance v1, Ljava/io/InputStreamReader;

    .line 465
    .line 466
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 467
    .line 468
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 469
    .line 470
    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0, v1}, Lhz/a;->d(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 474
    .line 475
    .line 476
    :try_start_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->u:Ljava/util/Vector;

    .line 477
    .line 478
    invoke-virtual {v0, v1}, Lhz/a;->c(Ljava/util/Vector;)V

    .line 479
    .line 480
    .line 481
    new-instance v1, Lorg/apache/tools/ant/util/n;

    .line 482
    .line 483
    invoke-virtual {v0}, Lhz/a;->b()Ljava/io/Reader;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/m;->x:Ljava/lang/String;

    .line 488
    .line 489
    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/util/n;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/m;->p:Ljava/io/InputStream;

    .line 493
    .line 494
    goto :goto_c

    .line 495
    :catch_3
    move-exception v0

    .line 496
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 497
    .line 498
    const-string v2, "error setting up input stream"

    .line 499
    .line 500
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    .line 502
    .line 503
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 504
    :cond_12
    :goto_c
    monitor-exit p0

    .line 505
    return-void

    .line 506
    :goto_d
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 507
    throw v0
.end method

.method public declared-synchronized j()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->e:Lorg/apache/tools/ant/taskdefs/m$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/m$a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/m;->f:Lorg/apache/tools/ant/taskdefs/m$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/m$a;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 17
    .line 18
    .line 19
    :catch_1
    :cond_1
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    throw v0
.end method
