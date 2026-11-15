.class public Lorg/apache/tools/ant/util/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/a$a;
    }
.end annotation


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

.method static synthetic a(Lorg/apache/tools/ant/Project;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/apache/tools/ant/util/a;->e(Lorg/apache/tools/ant/Project;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/m;Ljava/lang/String;ZZ)Ljava/lang/ClassLoader;
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-eqz p4, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/Project;->t(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    instance-of v1, v0, Ljava/lang/ClassLoader;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p3, "The specified loader id "

    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    const-string p2, " does not reference a class loader"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/ClassLoader;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    :goto_1
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-static {p0, p1, p3}, Lorg/apache/tools/ant/util/a;->d(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/m;Z)Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    if-eqz p4, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, p2, v0}, Lorg/apache/tools/ant/Project;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-object v0
.end method

.method public static c(Lorg/apache/tools/ant/q;)Lorg/apache/tools/ant/util/a$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/tools/ant/util/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/apache/tools/ant/util/a$a;-><init>(Lorg/apache/tools/ant/q;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static d(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/m;Z)Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Project;->g(Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/a;->G(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/apache/tools/ant/a;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object p0
.end method

.method private static e(Lorg/apache/tools/ant/Project;)Z
    .locals 1

    .line 1
    const-string v0, "ant.reuse.loader"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Could not instantiate "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-static {p0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuffer;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Class of unexpected Type: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const-string v2, " expected :"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_2
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :catch_3
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :goto_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "Class "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    const-string p0, " could not be loaded because of an invalid dependency."

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw p2

    .line 86
    :goto_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    const-string p0, ". Specified class should have a "

    .line 100
    .line 101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    const-string p0, "public constructor."

    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    throw p2

    .line 117
    :goto_2
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    .line 129
    .line 130
    const-string p0, ". Specified class should have a no "

    .line 131
    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    .line 134
    .line 135
    const-string p0, "argument constructor."

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    throw p2

    .line 148
    :goto_3
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 149
    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    .line 151
    .line 152
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v1, "Class not found: "

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-direct {p2, p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    throw p2
.end method
