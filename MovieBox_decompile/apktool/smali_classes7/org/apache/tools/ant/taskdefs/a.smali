.class public Lorg/apache/tools/ant/taskdefs/a;
.super Lorg/apache/tools/ant/u;
.source "source.java"

# interfaces
.implements Lorg/apache/tools/ant/v;


# static fields
.field static synthetic j:Ljava/lang/Class;


# instance fields
.field private g:Ljava/lang/ClassLoader;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/u;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->h:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->i:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic u(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static v(Lorg/apache/tools/ant/Project;Ljava/net/URL;Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/a;
    .locals 3

    .line 1
    const-string v0, "antlib"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/net/URLConnection;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->j(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/ComponentHelper;->g(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance p2, Liz/b;

    .line 24
    .line 25
    invoke-direct {p2}, Liz/b;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p0, p1}, Liz/b;->k(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/w;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    new-instance p2, Lorg/apache/tools/ant/taskdefs/a;

    .line 43
    .line 44
    invoke-direct {p2}, Lorg/apache/tools/ant/taskdefs/a;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2, p0}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/u;->s(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/apache/tools/ant/u;->m()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/w;->v(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lorg/apache/tools/ant/ComponentHelper;->h()V

    .line 67
    .line 68
    .line 69
    return-object p2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    :try_start_2
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "Unexpected tag "

    .line 80
    .line 81
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    const-string v2, " expecting "

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    .line 108
    .line 109
    .line 110
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_0
    invoke-virtual {v1}, Lorg/apache/tools/ant/ComponentHelper;->h()V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :catch_0
    move-exception p0

    .line 116
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "Unable to find "

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-direct {p2, p1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    throw p2
.end method

.method private w()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->g:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lorg/apache/tools/ant/taskdefs/a;->j:Ljava/lang/Class;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "org.apache.tools.ant.taskdefs.Antlib"

    .line 10
    .line 11
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/a;->u(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/apache/tools/ant/taskdefs/a;->j:Ljava/lang/Class;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->g:Ljava/lang/ClassLoader;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->g:Ljava/lang/ClassLoader;

    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public b(Lorg/apache/tools/ant/u;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/a;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/tools/ant/w;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/apache/tools/ant/q;->getLocation()Lorg/apache/tools/ant/Location;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/q;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/apache/tools/ant/w;->n()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/apache/tools/ant/w;->B()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    instance-of v3, v2, Lorg/apache/tools/ant/taskdefs/b;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v2, Lorg/apache/tools/ant/taskdefs/b;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/a;->h:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/b;->x(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/a;->w()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/b;->w(Ljava/lang/ClassLoader;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Lorg/apache/tools/ant/u;->m()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lorg/apache/tools/ant/u;->e()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 62
    .line 63
    new-instance v3, Ljava/lang/StringBuffer;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "Invalid task in antlib "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lorg/apache/tools/ant/w;->C()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    const-string v1, " "

    .line 81
    .line 82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    const-string v1, " does not "

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    const-string v1, "extend org.apache.tools.ant.taskdefs.AntlibDefinition"

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_2
    return-void
.end method

.method protected x(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/a;->g:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-void
.end method

.method protected y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
