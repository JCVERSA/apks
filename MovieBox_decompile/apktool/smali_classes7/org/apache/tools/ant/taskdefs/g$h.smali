.class Lorg/apache/tools/ant/taskdefs/g$h;
.super Lorg/apache/tools/ant/taskdefs/g$c;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/g$c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c([Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    .locals 6

    .line 1
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/g;->b()Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x1

    .line 7
    const-string v1, "ANT"

    .line 8
    .line 9
    const-string v2, ".COM"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/apache/tools/ant/util/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    .line 18
    .line 19
    new-instance v3, Ljava/io/FileWriter;

    .line 20
    .line 21
    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    move v3, v1

    .line 31
    :goto_0
    :try_start_1
    array-length v4, p2

    .line 32
    if-ge v3, v4, :cond_1

    .line 33
    .line 34
    aget-object v4, p2, v3

    .line 35
    .line 36
    const/16 v5, 0x3d

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, -0x1

    .line 43
    if-eq v4, v5, :cond_0

    .line 44
    .line 45
    const-string v5, "$ DEFINE/NOLOG "

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    aget-object v5, p2, v3

    .line 51
    .line 52
    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v5, " \""

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    aget-object v5, p2, v3

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x1

    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/16 v4, 0x22

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    move-object v1, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "$ "

    .line 93
    .line 94
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    aget-object v1, p1, v1

    .line 98
    .line 99
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {v2, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p2, 0x1

    .line 110
    :goto_2
    array-length v1, p1

    .line 111
    if-ge p2, v1, :cond_2

    .line 112
    .line 113
    const-string v1, " -"

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    aget-object v1, p1, p2

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    .line 123
    add-int/lit8 p2, p2, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    :goto_3
    if-eqz v1, :cond_3

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 134
    .line 135
    .line 136
    :cond_3
    throw p1
.end method

.method private d(Ljava/io/File;Ljava/lang/Process;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/Execute$VmsCommandLauncher$1;-><init>(Lorg/apache/tools/ant/taskdefs/g$h;Ljava/lang/Process;Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$h;->c([Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-super {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/g$a;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/g$h;->d(Ljava/io/File;Ljava/lang/Process;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$h;->c([Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/g$c;->b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/g$h;->d(Ljava/io/File;Ljava/lang/Process;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method
