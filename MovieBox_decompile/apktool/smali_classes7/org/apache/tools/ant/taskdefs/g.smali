.class public Lorg/apache/tools/ant/taskdefs/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/g$h;,
        Lorg/apache/tools/ant/taskdefs/g$f;,
        Lorg/apache/tools/ant/taskdefs/g$g;,
        Lorg/apache/tools/ant/taskdefs/g$d;,
        Lorg/apache/tools/ant/taskdefs/g$i;,
        Lorg/apache/tools/ant/taskdefs/g$e;,
        Lorg/apache/tools/ant/taskdefs/g$b;,
        Lorg/apache/tools/ant/taskdefs/g$c;,
        Lorg/apache/tools/ant/taskdefs/g$a;
    }
.end annotation


# static fields
.field private static final k:Lorg/apache/tools/ant/util/d;

.field private static l:Ljava/lang/String;

.field private static m:Lorg/apache/tools/ant/taskdefs/g$a;

.field private static n:Lorg/apache/tools/ant/taskdefs/g$a;

.field private static o:Ljava/util/Vector;

.field private static p:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

.field private static q:Z

.field static synthetic r:Ljava/lang/Class;

.field static synthetic s:Ljava/lang/Class;

.field static synthetic t:Ljava/lang/Class;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Lorg/apache/tools/ant/taskdefs/h;

.field private e:Lorg/apache/tools/ant/taskdefs/i;

.field private f:Ljava/io/File;

.field private g:Lorg/apache/tools/ant/Project;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "os/2"

    .line 2
    .line 3
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->k:Lorg/apache/tools/ant/util/d;

    .line 8
    .line 9
    const-string v1, "user.dir"

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->l:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->m:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 19
    .line 20
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 21
    .line 22
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;

    .line 23
    .line 24
    new-instance v2, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 25
    .line 26
    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lorg/apache/tools/ant/taskdefs/g;->p:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    sput-boolean v2, Lorg/apache/tools/ant/taskdefs/g;->q:Z

    .line 33
    .line 34
    :try_start_0
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g$c;

    .line 41
    .line 42
    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/g$c;-><init>()V

    .line 43
    .line 44
    .line 45
    sput-object v2, Lorg/apache/tools/ant/taskdefs/g;->m:Lorg/apache/tools/ant/taskdefs/g$a;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    :catch_0
    :cond_0
    const-string v2, "mac"

    .line 48
    .line 49
    invoke-static {v2}, Llz/a;->a(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const-string v2, "unix"

    .line 56
    .line 57
    invoke-static {v2}, Llz/a;->a(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$d;

    .line 64
    .line 65
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g$a;

    .line 66
    .line 67
    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/g$d;-><init>(Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_1
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$e;

    .line 84
    .line 85
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g$a;

    .line 86
    .line 87
    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v2}, Lorg/apache/tools/ant/taskdefs/g$e;-><init>(Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "windows"

    .line 97
    .line 98
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lorg/apache/tools/ant/taskdefs/g;->q:Z

    .line 106
    .line 107
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$a;

    .line 108
    .line 109
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "win9x"

    .line 113
    .line 114
    invoke-static {v1}, Llz/a;->a(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    new-instance v1, Lorg/apache/tools/ant/taskdefs/g$i;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/g$i;-><init>(Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 123
    .line 124
    .line 125
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/g$g;

    .line 129
    .line 130
    const-string v2, "bin/antRun.bat"

    .line 131
    .line 132
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/g$g;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 133
    .line 134
    .line 135
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    const-string v0, "netware"

    .line 139
    .line 140
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$a;

    .line 147
    .line 148
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Lorg/apache/tools/ant/taskdefs/g$f;

    .line 152
    .line 153
    const-string v2, "bin/antRun.pl"

    .line 154
    .line 155
    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/g$f;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 156
    .line 157
    .line 158
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    const-string v0, "openvms"

    .line 162
    .line 163
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$h;

    .line 170
    .line 171
    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/g$h;-><init>()V

    .line 172
    .line 173
    .line 174
    sput-object v0, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/g$g;

    .line 178
    .line 179
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g$a;

    .line 180
    .line 181
    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/g$a;-><init>(Lorg/apache/tools/ant/taskdefs/f;)V

    .line 182
    .line 183
    .line 184
    const-string v1, "bin/antRun"

    .line 185
    .line 186
    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/g$g;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/g$a;)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 190
    .line 191
    :catch_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/l;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/l;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/g;-><init>(Lorg/apache/tools/ant/taskdefs/h;Lorg/apache/tools/ant/taskdefs/i;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/g;-><init>(Lorg/apache/tools/ant/taskdefs/h;Lorg/apache/tools/ant/taskdefs/i;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/h;Lorg/apache/tools/ant/taskdefs/i;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->a:[Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->b:[Ljava/lang/String;

    const v1, 0x7fffffff

    .line 6
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/g;->c:I

    .line 7
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->f:Ljava/io/File;

    .line 8
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->g:Lorg/apache/tools/ant/Project;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/g;->h:Z

    .line 10
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/g;->i:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/g;->j:Z

    .line 12
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/g;->s(Lorg/apache/tools/ant/taskdefs/h;)V

    .line 13
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/g;->e:Lorg/apache/tools/ant/taskdefs/i;

    .line 14
    const-string p1, "openvms"

    invoke-static {p1}, Llz/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/g;->j:Z

    :cond_0
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/taskdefs/g;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Lorg/apache/tools/ant/util/d;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/tools/ant/taskdefs/g;->k:Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    return-object v0
.end method

.method private static c(Ljava/util/Vector;Ljava/io/BufferedReader;)Ljava/util/Vector;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v2, v1

    .line 8
    move-object v3, v2

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_4

    .line 14
    .line 15
    const-string v5, "\t="

    .line 16
    .line 17
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_1

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v3, ","

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-int/lit8 v3, v3, -0x1

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v5, "  \""

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    const/16 v2, 0x3d

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    add-int/lit8 v5, v2, -0x2

    .line 77
    .line 78
    const/4 v6, 0x3

    .line 79
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    move-object v2, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    add-int/lit8 v2, v2, 0x3

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    add-int/lit8 v3, v3, -0x1

    .line 98
    .line 99
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    move-object v3, v2

    .line 104
    move-object v2, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    if-eqz v2, :cond_5

    .line 107
    .line 108
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuffer;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    const-string v3, "="

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    return-object p0
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

.method public static e(Ljava/lang/Process;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lorg/apache/tools/ant/util/d;->c(Ljava/io/OutputStream;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static j()[Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "os/2"

    .line 2
    .line 3
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "cmd"

    .line 8
    .line 9
    const-string v2, "set"

    .line 10
    .line 11
    const-string v3, "/c"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v0, "windows"

    .line 21
    .line 22
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string v0, "win9x"

    .line 29
    .line 30
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "command.com"

    .line 37
    .line 38
    filled-new-array {v0, v3, v2}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0

    .line 43
    :cond_1
    filled-new-array {v1, v3, v2}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :cond_2
    const-string v0, "z/os"

    .line 49
    .line 50
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "env"

    .line 55
    .line 56
    if-nez v0, :cond_7

    .line 57
    .line 58
    const-string v0, "unix"

    .line 59
    .line 60
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const-string v0, "netware"

    .line 68
    .line 69
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_6

    .line 74
    .line 75
    const-string v0, "os/400"

    .line 76
    .line 77
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    const-string v0, "openvms"

    .line 85
    .line 86
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    const-string v0, "show"

    .line 93
    .line 94
    const-string v1, "logical"

    .line 95
    .line 96
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0

    .line 101
    :cond_5
    const/4 v0, 0x0

    .line 102
    return-object v0

    .line 103
    :cond_6
    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0

    .line 108
    :cond_7
    :goto_1
    const/4 v0, 0x1

    .line 109
    new-array v0, v0, [Ljava/lang/String;

    .line 110
    .line 111
    new-instance v2, Ljava/io/File;

    .line 112
    .line 113
    const-string v3, "/bin/env"

    .line 114
    .line 115
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    const/4 v4, 0x0

    .line 123
    if-eqz v2, :cond_8

    .line 124
    .line 125
    aput-object v3, v0, v4

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_8
    new-instance v2, Ljava/io/File;

    .line 129
    .line 130
    const-string v3, "/usr/bin/env"

    .line 131
    .line 132
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_9

    .line 140
    .line 141
    aput-object v3, v0, v4

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_9
    aput-object v1, v0, v4

    .line 145
    .line 146
    :goto_2
    return-object v0
.end method

.method public static declared-synchronized k()Ljava/util/Vector;
    .locals 7

    .line 1
    const-class v0, Lorg/apache/tools/ant/taskdefs/g;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/Vector;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lorg/apache/tools/ant/taskdefs/g;

    .line 23
    .line 24
    new-instance v3, Lorg/apache/tools/ant/taskdefs/l;

    .line 25
    .line 26
    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/l;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/g;-><init>(Lorg/apache/tools/ant/taskdefs/h;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/g;->j()[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/g;->p([Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/g;->r(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/g;->f()I

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/io/BufferedReader;

    .line 47
    .line 48
    new-instance v3, Ljava/io/StringReader;

    .line 49
    .line 50
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/g;->u(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "openvms"

    .line 61
    .line 62
    invoke-static {v1}, Llz/a;->a(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;

    .line 69
    .line 70
    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/g;->c(Ljava/util/Vector;Ljava/io/BufferedReader;)Ljava/util/Vector;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sput-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    goto :goto_3

    .line 80
    :catch_0
    move-exception v1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :try_start_3
    sget-object v1, Lorg/apache/tools/ant/util/p;->a:Ljava/lang/String;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-eqz v4, :cond_5

    .line 90
    .line 91
    const/16 v5, 0x3d

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    const/4 v6, -0x1

    .line 98
    if-ne v5, v6, :cond_3

    .line 99
    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuffer;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    .line 119
    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    goto :goto_0

    .line 137
    :cond_3
    if-eqz v3, :cond_4

    .line 138
    .line 139
    sget-object v5, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;

    .line 140
    .line 141
    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    move-object v3, v4

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    if-eqz v3, :cond_6

    .line 147
    .line 148
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_2
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->o:Ljava/util/Vector;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .line 159
    monitor-exit v0

    .line 160
    return-object v1

    .line 161
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    throw v1
.end method

.method public static m(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;
    .locals 1

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    const-string p2, " doesn\'t exist."

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 34
    .line 35
    sget-object p4, Lorg/apache/tools/ant/taskdefs/g;->m:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 36
    .line 37
    if-eqz p4, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    sget-object p4, Lorg/apache/tools/ant/taskdefs/g;->n:Lorg/apache/tools/ant/taskdefs/g$a;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p4, p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/g$a;->b(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private n()[Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "openvms"

    .line 2
    .line 3
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->b:[Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/g;->k()Ljava/util/Vector;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/Vector;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/g;->b:[Ljava/lang/String;

    .line 25
    .line 26
    array-length v4, v3

    .line 27
    if-ge v2, v4, :cond_5

    .line 28
    .line 29
    aget-object v3, v3, v2

    .line 30
    .line 31
    const/16 v4, 0x3d

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    sget-boolean v5, Lorg/apache/tools/ant/taskdefs/g;->q:Z

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    move v6, v1

    .line 56
    :goto_1
    if-ge v6, v5, :cond_4

    .line 57
    .line 58
    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Ljava/lang/String;

    .line 63
    .line 64
    sget-boolean v8, Lorg/apache/tools/ant/taskdefs/g;->q:Z

    .line 65
    .line 66
    if-eqz v8, :cond_2

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-object v8, v7

    .line 74
    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eqz v8, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 81
    .line 82
    .line 83
    sget-boolean v5, Lorg/apache/tools/ant/taskdefs/g;->q:Z

    .line 84
    .line 85
    if-eqz v5, :cond_4

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuffer;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    new-array v1, v1, [Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, [Ljava/lang/String;

    .line 139
    .line 140
    return-object v0
.end method

.method public static u(Ljava/io/ByteArrayOutputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "z/os"

    .line 2
    .line 3
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v0, "Cp1047"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "os/400"

    .line 17
    .line 18
    invoke-static {v0}, Llz/a;->a(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_1
    const-string v0, "Cp500"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    return-object p0

    .line 31
    :catch_0
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public f()I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->f:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/g;->f:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 22
    .line 23
    .line 24
    const-string v2, " doesn\'t exist."

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->g:Lorg/apache/tools/ant/Project;

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/g;->g()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/g;->h()[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/g;->f:Ljava/io/File;

    .line 48
    .line 49
    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/g;->j:Z

    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/g;->m(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;Z)Ljava/lang/Process;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Lorg/apache/tools/ant/taskdefs/h;->b(Ljava/io/OutputStream;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v1, v2}, Lorg/apache/tools/ant/taskdefs/h;->c(Ljava/io/InputStream;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Lorg/apache/tools/ant/taskdefs/h;->a(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 83
    .line 84
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/h;->start()V

    .line 85
    .line 86
    .line 87
    :try_start_1
    sget-object v1, Lorg/apache/tools/ant/taskdefs/g;->p:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->add(Ljava/lang/Process;)Z

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->e:Lorg/apache/tools/ant/taskdefs/i;

    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/i;->d(Ljava/lang/Process;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_0
    move-exception v1

    .line 101
    goto :goto_3

    .line 102
    :catch_0
    move-exception v1

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/g;->v(Ljava/lang/Process;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->e:Lorg/apache/tools/ant/taskdefs/i;

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/i;->e()V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 115
    .line 116
    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/h;->stop()V

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/g;->e(Ljava/lang/Process;)V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/g;->e:Lorg/apache/tools/ant/taskdefs/i;

    .line 123
    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/i;->a()V

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/g;->i()I

    .line 130
    .line 131
    .line 132
    move-result v1
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    sget-object v2, Lorg/apache/tools/ant/taskdefs/g;->p:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    .line 136
    .line 137
    .line 138
    return v1

    .line 139
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 140
    .line 141
    .line 142
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_3
    sget-object v2, Lorg/apache/tools/ant/taskdefs/g;->p:Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;

    .line 144
    .line 145
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/ProcessDestroyer;->remove(Ljava/lang/Process;)Z

    .line 146
    .line 147
    .line 148
    throw v1

    .line 149
    :catch_1
    move-exception v1

    .line 150
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 151
    .line 152
    .line 153
    throw v1
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->a:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->b:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/g;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/g;->n()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_1
    :goto_0
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/g;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/g;->e:Lorg/apache/tools/ant/taskdefs/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/i;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public o(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/g;->g:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method

.method public p([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/g;->a:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/g;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/g;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public s(Lorg/apache/tools/ant/taskdefs/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/g;->d:Lorg/apache/tools/ant/taskdefs/h;

    .line 2
    .line 3
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/g;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method protected v(Ljava/lang/Process;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/g;->q(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
