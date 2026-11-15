.class public Lorg/apache/tools/ant/taskdefs/ExecuteJava;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/apache/tools/ant/util/r;


# static fields
.field static synthetic array$Ljava$lang$String:Ljava/lang/Class;


# instance fields
.field private volatile caught:Ljava/lang/Throwable;

.field private classpath:Lorg/apache/tools/ant/types/m;

.field private javaCommand:Lorg/apache/tools/ant/types/c;

.field private main:Ljava/lang/reflect/Method;

.field private perm:Lorg/apache/tools/ant/types/o;

.field private sysProperties:Lorg/apache/tools/ant/types/d$a;

.field private thread:Ljava/lang/Thread;

.field private volatile timedOut:Z

.field private timeout:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/m;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 21
    .line 22
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/g;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/g;->t(Z)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    array-length v1, p1

    .line 6
    sub-int/2addr v1, v0

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    array-length v2, p1

    .line 10
    sub-int/2addr v2, v0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lorg/apache/tools/ant/util/f;->c([Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 20
    .line 21
    .line 22
    aget-object p1, p1, v3

    .line 23
    .line 24
    const-string v1, "-V"

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {p1, v1, v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/g;->p([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    .line 39
    .line 40
    const-string p1, "Failed to create a temporary file for \"-V\" switch"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/Project;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 4
    .line 5
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/c;->k()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {v4}, Lorg/apache/tools/ant/types/d$a;->i()V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :catch_1
    move-exception p1

    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :catch_2
    move-exception p1

    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/m;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v5, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1, v4}, Lorg/apache/tools/ant/Project;->g(Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/a;

    .line 41
    .line 42
    .line 43
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->o()Ljava/lang/ClassLoader;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/a;->F(Ljava/lang/ClassLoader;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/a;->G(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lorg/apache/tools/ant/a;->e()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/a;->E(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Lorg/apache/tools/ant/a;->I()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/a;->p(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 70
    move-object v9, v5

    .line 71
    move-object v5, v4

    .line 72
    move-object v4, v9

    .line 73
    :goto_1
    :try_start_3
    const-string v6, "main"

    .line 74
    .line 75
    sget-object v7, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->array$Ljava$lang$String:Ljava/lang/Class;

    .line 76
    .line 77
    if-nez v7, :cond_2

    .line 78
    .line 79
    const-string v7, "[Ljava.lang.String;"

    .line 80
    .line 81
    invoke-static {v7}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    sput-object v7, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->array$Ljava$lang$String:Ljava/lang/Class;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception p1

    .line 89
    move-object v3, v5

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :catch_3
    move-exception p1

    .line 93
    move-object v3, v5

    .line 94
    goto/16 :goto_8

    .line 95
    .line 96
    :catch_4
    move-exception p1

    .line 97
    move-object v3, v5

    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :catch_5
    move-exception p1

    .line 101
    move-object v3, v5

    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_2
    :goto_2
    new-array v8, v1, [Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v7, v8, v0

    .line 107
    .line 108
    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    and-int/lit8 v0, v0, 0x8

    .line 121
    .line 122
    if-eqz v0, :cond_8

    .line 123
    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 125
    .line 126
    if-nez v0, :cond_3

    .line 127
    .line 128
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->run()V

    .line 129
    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    .line 133
    .line 134
    const-string v2, "ExecuteJava"

    .line 135
    .line 136
    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 140
    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->v(Ljava/lang/Thread;)Lorg/apache/tools/ant/u;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 150
    .line 151
    invoke-virtual {p1, v2, v0}, Lorg/apache/tools/ant/Project;->A(Ljava/lang/Thread;Lorg/apache/tools/ant/u;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lorg/apache/tools/ant/util/Watchdog;

    .line 160
    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    invoke-direct {v0, v6, v7}, Lorg/apache/tools/ant/util/Watchdog;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/Watchdog;->addTimeoutObserver(Lorg/apache/tools/ant/util/r;)V

    .line 171
    .line 172
    .line 173
    monitor-enter p0
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :try_start_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 180
    .line 181
    .line 182
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :catchall_2
    move-exception p1

    .line 187
    goto :goto_6

    .line 188
    :catch_6
    :goto_3
    :try_start_6
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 189
    .line 190
    if-eqz v2, :cond_4

    .line 191
    .line 192
    const-string v0, "Timeout: sub-process interrupted"

    .line 193
    .line 194
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_4
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 199
    .line 200
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/Watchdog;->stop()V

    .line 201
    .line 202
    .line 203
    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 204
    :goto_5
    :try_start_7
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_7
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 205
    .line 206
    if-nez p1, :cond_7

    .line 207
    .line 208
    if-eqz v5, :cond_5

    .line 209
    .line 210
    invoke-virtual {v5}, Lorg/apache/tools/ant/a;->C()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5}, Lorg/apache/tools/ant/a;->j()V

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 217
    .line 218
    if-eqz p1, :cond_6

    .line 219
    .line 220
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/d$a;->g()V

    .line 221
    .line 222
    .line 223
    :cond_6
    return-void

    .line 224
    :cond_7
    :try_start_8
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;

    .line 225
    .line 226
    throw p1
    :try_end_8
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 227
    :goto_6
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 228
    :try_start_a
    throw p1

    .line 229
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 230
    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v1, "main() method in "

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    .line 243
    .line 244
    const-string v1, " is not declared static"

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p1

    .line 257
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 258
    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    .line 260
    .line 261
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v1, "Could not find main() method in "

    .line 265
    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p1
    :try_end_a
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/ThreadDeath; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 280
    :catchall_3
    move-exception p1

    .line 281
    move-object v3, v4

    .line 282
    goto :goto_7

    .line 283
    :catch_7
    move-exception p1

    .line 284
    move-object v3, v4

    .line 285
    goto :goto_8

    .line 286
    :catch_8
    move-exception p1

    .line 287
    move-object v3, v4

    .line 288
    goto :goto_9

    .line 289
    :catch_9
    move-exception p1

    .line 290
    move-object v3, v4

    .line 291
    goto :goto_a

    .line 292
    :catch_a
    move-object v3, v4

    .line 293
    :catch_b
    :try_start_b
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 294
    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    .line 296
    .line 297
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v1, "Could not find "

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    .line 307
    .line 308
    const-string v1, "."

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    const-string v1, " Make sure you have it in your"

    .line 314
    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    .line 317
    .line 318
    const-string v1, " classpath"

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p1
    :try_end_b
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/ThreadDeath; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 331
    :goto_7
    :try_start_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 332
    .line 333
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :catchall_4
    move-exception p1

    .line 338
    goto :goto_b

    .line 339
    :goto_8
    throw p1

    .line 340
    :goto_9
    throw p1

    .line 341
    :goto_a
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 342
    :goto_b
    if-eqz v3, :cond_a

    .line 343
    .line 344
    invoke-virtual {v3}, Lorg/apache/tools/ant/a;->C()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Lorg/apache/tools/ant/a;->j()V

    .line 348
    .line 349
    .line 350
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 351
    .line 352
    if-eqz v0, :cond_b

    .line 353
    .line 354
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/d$a;->g()V

    .line 355
    .line 356
    .line 357
    :cond_b
    throw p1
.end method

.method public fork(Lorg/apache/tools/ant/q;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/tools/ant/types/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/types/d;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/c;->k()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/d;->n(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/c;->i()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    array-length v3, v1

    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/d;->e()Lorg/apache/tools/ant/types/c$a;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aget-object v4, v1, v2

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/c$a;->g(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/m;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/d;->g(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/m;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/m;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/m;->i(Lorg/apache/tools/ant/types/m;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/d;->b(Lorg/apache/tools/ant/types/d$a;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/taskdefs/m;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/m;-><init>(Lorg/apache/tools/ant/q;)V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g;

    .line 67
    .line 68
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/m;->e()Lorg/apache/tools/ant/taskdefs/h;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    new-instance v5, Lorg/apache/tools/ant/taskdefs/i;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    invoke-direct {v5, v6, v7}, Lorg/apache/tools/ant/taskdefs/i;-><init>(J)V

    .line 85
    .line 86
    .line 87
    move-object v4, v5

    .line 88
    :goto_1
    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/g;-><init>(Lorg/apache/tools/ant/taskdefs/h;Lorg/apache/tools/ant/taskdefs/i;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/g;->o(Lorg/apache/tools/ant/Project;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "openvms"

    .line 99
    .line 100
    invoke-static {p1}, Llz/a;->a(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/d;->k()[Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {v2, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setupCommandLineForVMS(Lorg/apache/tools/ant/taskdefs/g;[Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/d;->k()[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/taskdefs/g;->p([Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_2
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/g;->f()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/m;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/g;->l()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 133
    .line 134
    return p1

    .line 135
    :catchall_0
    move-exception p1

    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-exception p1

    .line 138
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 139
    .line 140
    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_3
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/g;->l()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 149
    .line 150
    throw p1
.end method

.method public declared-synchronized killedProcess()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/c;->i()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/o;->j()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->main:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/o;->i()V

    .line 36
    .line 37
    .line 38
    :cond_1
    monitor-enter p0

    .line 39
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    goto :goto_3

    .line 44
    :catchall_1
    move-exception v0

    .line 45
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    throw v0

    .line 47
    :goto_1
    :try_start_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 48
    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/o;->i()V

    .line 54
    .line 55
    .line 56
    :cond_2
    monitor-enter p0

    .line 57
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 58
    .line 59
    .line 60
    monitor-exit p0

    .line 61
    goto :goto_3

    .line 62
    :catchall_2
    move-exception v0

    .line 63
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 64
    throw v0

    .line 65
    :catchall_3
    move-exception v0

    .line 66
    goto :goto_4

    .line 67
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 72
    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->caught:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/o;->i()V

    .line 82
    .line 83
    .line 84
    :cond_4
    monitor-enter p0

    .line 85
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    :goto_3
    return-void

    .line 90
    :catchall_4
    move-exception v0

    .line 91
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 92
    throw v0

    .line 93
    :goto_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/o;->i()V

    .line 98
    .line 99
    .line 100
    :cond_5
    monitor-enter p0

    .line 101
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    .line 103
    .line 104
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 105
    throw v0

    .line 106
    :catchall_5
    move-exception v0

    .line 107
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 108
    throw v0
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->classpath:Lorg/apache/tools/ant/types/m;

    .line 2
    .line 3
    return-void
.end method

.method public setJavaCommand(Lorg/apache/tools/ant/types/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->javaCommand:Lorg/apache/tools/ant/types/c;

    .line 2
    .line 3
    return-void
.end method

.method public setOutput(Ljava/io/PrintStream;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setPermissions(Lorg/apache/tools/ant/types/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->perm:Lorg/apache/tools/ant/types/o;

    .line 2
    .line 3
    return-void
.end method

.method public setSystemProperties(Lorg/apache/tools/ant/types/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->sysProperties:Lorg/apache/tools/ant/types/d$a;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized timeoutOccured(Lorg/apache/tools/ant/util/Watchdog;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->timedOut:Z

    .line 8
    .line 9
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->thread:Ljava/lang/Thread;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method
