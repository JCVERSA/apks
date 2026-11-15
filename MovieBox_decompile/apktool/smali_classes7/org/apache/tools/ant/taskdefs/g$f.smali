.class Lorg/apache/tools/ant/taskdefs/g$f;
.super Lorg/apache/tools/ant/taskdefs/g$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/g$b;-><init>(Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/g$f;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$b;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 11
    .line 12
    const-string p2, "Cannot locate antRun script: No project provided"

    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    const-string v0, "ant.home"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/g;->b()Lorg/apache/tools/ant/util/d;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->m()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuffer;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g$f;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/util/d;->q(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-nez p4, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->m()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    :cond_2
    array-length v1, p2

    .line 71
    const/4 v2, 0x3

    .line 72
    add-int/2addr v1, v2

    .line 73
    new-array v1, v1, [Ljava/lang/String;

    .line 74
    .line 75
    const-string v3, "perl"

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    aput-object v3, v1, v4

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    aput-object v0, v1, v3

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    aput-object p4, v1, v0

    .line 89
    .line 90
    array-length p4, p2

    .line 91
    invoke-static {p2, v4, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/tools/ant/taskdefs/g$b;->a(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    return-object p1

    .line 99
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 100
    .line 101
    const-string p2, "Cannot locate antRun script: Property \'ant.home\' not found"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method
