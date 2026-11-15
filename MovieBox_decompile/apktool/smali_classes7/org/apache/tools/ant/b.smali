.class public Lorg/apache/tools/ant/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static synthetic g:Ljava/lang/Class;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Class;

.field private d:Ljava/lang/Class;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/Class;
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

.method private d(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, " as the class "

    .line 2
    .line 3
    const-string v1, " due to "

    .line 4
    .line 5
    const-string v2, "Could not create type "

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lorg/apache/tools/ant/b;->l(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p2

    .line 42
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    .line 56
    .line 57
    const-string v1, " as the constructor "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    const-string p2, " is not accessible"

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :catch_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    const-string p2, " is abstract"

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :catch_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuffer;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 131
    .line 132
    .line 133
    const-string p2, " has no compatible constructor"

    .line 134
    .line 135
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :catch_3
    move-exception p1

    .line 147
    new-instance v0, Ljava/lang/StringBuffer;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "Type "

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    const-string v1, ": A class needed by class "

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    const-string p2, " cannot be found: "

    .line 171
    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 187
    .line 188
    invoke-direct {v0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    throw v0

    .line 192
    :catch_4
    move-exception p1

    .line 193
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 198
    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-direct {p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    .line 224
    .line 225
    throw p2
.end method

.method private e(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "<null>"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method private k(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/b;->d(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v2, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/b;->d(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lorg/apache/tools/ant/Project;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "Unable to create class for "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/apache/tools/ant/b;->i()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 59
    .line 60
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/b;->d(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 68
    .line 69
    const-string v0, "Unable to create adapter object"

    .line 70
    .line 71
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    :goto_1
    return-void
.end method

.method public c(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/b;->k(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->f:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;
    .locals 5

    .line 1
    const-string v0, ") for type "

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/b;->m()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-object p1

    .line 9
    :catch_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "Could not load class ("

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception v2

    .line 41
    new-instance v3, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "Could not load a dependent class ("

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 74
    return-object p1
.end method

.method public l(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    move v2, v1

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    sget-object v2, Lorg/apache/tools/ant/b;->g:Ljava/lang/Class;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "org.apache.tools.ant.Project"

    .line 15
    .line 16
    invoke-static {v2}, Lorg/apache/tools/ant/b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sput-object v2, Lorg/apache/tools/ant/b;->g:Ljava/lang/Class;

    .line 21
    .line 22
    :cond_0
    new-array v3, v1, [Ljava/lang/Class;

    .line 23
    .line 24
    aput-object v2, v3, v0

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move v2, v0

    .line 31
    :goto_0
    if-eqz v2, :cond_1

    .line 32
    .line 33
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object p2, v1, v0

    .line 39
    .line 40
    move-object v0, v1

    .line 41
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->K(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public m()Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/b;->f:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 28
    .line 29
    return-object v0
.end method

.method public n(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/Project;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/b;->j(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/b;->h(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    iget-object p2, p1, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 42
    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne p2, v0, :cond_0

    .line 46
    .line 47
    iget-object p1, p1, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 48
    .line 49
    iget-object p2, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 50
    .line 51
    if-ne p1, p2, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    return p1
.end method

.method public o(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public p(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->b:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/b;->f:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/b;->f:Ljava/lang/ClassLoader;

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_2
    iput-object v0, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public r(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->f:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public u(Lorg/apache/tools/ant/b;Lorg/apache/tools/ant/Project;)Z
    .locals 2

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/apache/tools/ant/b;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lorg/apache/tools/ant/b;->g()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/b;->e(Ljava/lang/Class;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p1, Lorg/apache/tools/ant/b;->c:Ljava/lang/Class;

    .line 35
    .line 36
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/b;->e(Ljava/lang/Class;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/b;->e(Ljava/lang/Class;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p1, Lorg/apache/tools/ant/b;->d:Ljava/lang/Class;

    .line 53
    .line 54
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/b;->e(Ljava/lang/Class;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/b;->f()Ljava/lang/ClassLoader;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lorg/apache/tools/ant/b;->f()Ljava/lang/ClassLoader;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eq p1, v0, :cond_1

    .line 74
    .line 75
    instance-of v1, p1, Lorg/apache/tools/ant/a;

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    instance-of v1, v0, Lorg/apache/tools/ant/a;

    .line 80
    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    check-cast p1, Lorg/apache/tools/ant/a;

    .line 84
    .line 85
    invoke-virtual {p1}, Lorg/apache/tools/ant/a;->s()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast v0, Lorg/apache/tools/ant/a;

    .line 90
    .line 91
    invoke-virtual {v0}, Lorg/apache/tools/ant/a;->s()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    :cond_1
    const/4 p2, 0x1

    .line 102
    :cond_2
    :goto_0
    return p2
.end method
