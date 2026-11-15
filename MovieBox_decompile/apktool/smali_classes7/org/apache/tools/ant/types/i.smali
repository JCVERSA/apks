.class public Lorg/apache/tools/ant/types/i;
.super Lorg/apache/tools/ant/types/e;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/i$b;,
        Lorg/apache/tools/ant/types/i$a;
    }
.end annotation


# static fields
.field static synthetic k:Ljava/lang/Class;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Hashtable;

.field private f:Ljava/util/Vector;

.field private g:Lorg/apache/tools/ant/types/i$b;

.field private h:Z

.field private i:I

.field private j:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "@"

    .line 5
    .line 6
    iput-object v0, p0, Lorg/apache/tools/ant/types/i;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/tools/ant/types/i;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/i;->c:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/i;->d:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lorg/apache/tools/ant/types/i;->e:Ljava/util/Hashtable;

    .line 18
    .line 19
    new-instance v1, Ljava/util/Vector;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/apache/tools/ant/types/i;->f:Ljava/util/Vector;

    .line 25
    .line 26
    sget-object v1, Lorg/apache/tools/ant/types/i$b;->d:Lorg/apache/tools/ant/types/i$b;

    .line 27
    .line 28
    iput-object v1, p0, Lorg/apache/tools/ant/types/i;->g:Lorg/apache/tools/ant/types/i$b;

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/i;->h:Z

    .line 31
    .line 32
    iput v0, p0, Lorg/apache/tools/ant/types/i;->i:I

    .line 33
    .line 34
    new-instance v0, Ljava/util/Vector;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/i;->j:Ljava/util/Vector;

    .line 40
    .line 41
    return-void
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/Class;
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

.method private h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/types/i;->g:Lorg/apache/tools/ant/types/i$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/f;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 17
    .line 18
    const-string v0, "Invalid value for onMissingFiltersFile"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/i;->g()Lorg/apache/tools/ant/types/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/i;->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/tools/ant/types/e;->clone()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/apache/tools/ant/types/i;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/i;->e()Ljava/util/Vector;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/Vector;

    .line 35
    .line 36
    iput-object v1, v0, Lorg/apache/tools/ant/types/i;->j:Ljava/util/Vector;

    .line 37
    .line 38
    invoke-virtual {p0}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/q;->setProject(Lorg/apache/tools/ant/Project;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 49
    .line 50
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v0
.end method

.method protected declared-synchronized e()Ljava/util/Vector;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/i;->g()Lorg/apache/tools/ant/types/i;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/i;->e()Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/i;->h:Z

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/i;->h:Z

    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/tools/ant/types/i;->f:Ljava/util/Vector;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    move v2, v1

    .line 35
    :goto_0
    if-ge v2, v0, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lorg/apache/tools/ant/types/i;->f:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/types/i;->i(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/i;->f:Ljava/util/Vector;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 54
    .line 55
    .line 56
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/i;->h:Z

    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/i;->j:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    throw v0
.end method

.method protected g()Lorg/apache/tools/ant/types/i;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/tools/ant/types/i;->k:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.tools.ant.types.FilterSet"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/tools/ant/types/i;->d(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/tools/ant/types/i;->k:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "filterset"

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/types/e;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/apache/tools/ant/types/i;

    .line 20
    .line 21
    return-object v0
.end method

.method public declared-synchronized i(Ljava/io/File;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->isReference()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Could not read filters from file "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string v1, " as it doesn\'t exist."

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/i;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuffer;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, "Reading filters from "

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v2, 0x3

    .line 68
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/q;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/io/FileInputStream;

    .line 77
    .line 78
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/i;->e()Ljava/util/Vector;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_1

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    new-instance v7, Lorg/apache/tools/ant/types/i$a;

    .line 109
    .line 110
    invoke-direct {v7, v5, v6}, Lorg/apache/tools/ant/types/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :catchall_1
    move-exception p1

    .line 118
    move-object v1, v2

    .line 119
    goto :goto_3

    .line 120
    :catch_0
    move-exception v0

    .line 121
    move-object v1, v2

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    :try_start_3
    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :catchall_2
    move-exception p1

    .line 128
    goto :goto_3

    .line 129
    :catch_1
    move-exception v0

    .line 130
    :goto_2
    :try_start_4
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuffer;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v4, "Could not read filters from file: "

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 153
    :goto_3
    :try_start_5
    invoke-static {v1}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 154
    .line 155
    .line 156
    throw p1

    .line 157
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v2, "Must specify a file rather than a directory in the filtersfile attribute:"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/i;->h(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_4
    iput-object v1, p0, Lorg/apache/tools/ant/types/i;->e:Ljava/util/Hashtable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 181
    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/e;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    throw p1

    .line 186
    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    throw p1
.end method
