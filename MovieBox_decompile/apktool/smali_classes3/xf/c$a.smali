.class public final Lxf/c$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxf/c$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxf/c$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ls7/b;)Ls7/b;
    .locals 0

    .line 1
    invoke-static {p0}, Lxf/c$a;->j(Ls7/b;)Ls7/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lxf/c$a;Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;JILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x8

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    const-string p4, ""

    .line 6
    .line 7
    :cond_0
    move-object v4, p4

    .line 8
    and-int/lit8 p4, p7, 0x10

    .line 9
    .line 10
    if-eqz p4, :cond_1

    .line 11
    .line 12
    const-wide/16 p5, 0x0

    .line 13
    .line 14
    :cond_1
    move-wide v5, p5

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    move v3, p3

    .line 19
    invoke-virtual/range {v0 .. v6}, Lxf/c$a;->f(Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;J)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final h(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lxf/c$a;->i(Ljava/lang/String;JZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i(Ljava/lang/String;JZ)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x1

    .line 3
    invoke-virtual {p0}, Lxf/c$a;->b()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lxf/c$a;->c(Landroid/app/Application;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    new-instance v0, Ls7/a$a;

    .line 20
    .line 21
    invoke-direct {v0}, Ls7/a$a;-><init>()V

    .line 22
    .line 23
    .line 24
    const/high16 v1, -0x80000000

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ls7/a$a;->B(I)Ls7/a$a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "X-LOG"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ls7/a$a;->E(Ljava/lang/String;)Ls7/a$a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lw7/a;

    .line 37
    .line 38
    invoke-direct {v1}, Lw7/a;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ls7/a$a;->A(Lw7/b;)Ls7/a$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lz7/a;

    .line 46
    .line 47
    invoke-direct {v1}, Lz7/a;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ls7/a$a;->H(Lz7/b;)Ls7/a$a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Ly7/a;

    .line 55
    .line 56
    invoke-direct {v1}, Ly7/a;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ls7/a$a;->G(Ly7/b;)Ls7/a$a;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lyf/b;

    .line 64
    .line 65
    invoke-direct {v1}, Lyf/b;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ls7/a$a;->F(Lb8/b;)Ls7/a$a;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, La8/a;

    .line 73
    .line 74
    invoke-direct {v1}, La8/a;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ls7/a$a;->D(La8/b;)Ls7/a$a;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    new-instance v1, Lv7/b;

    .line 82
    .line 83
    invoke-direct {v1}, Lv7/b;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ls7/a$a;->q(Lv7/a;)Ls7/a$a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lxf/b;

    .line 91
    .line 92
    invoke-direct {v1}, Lxf/b;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ls7/a$a;->p(Lc8/a;)Ls7/a$a;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ls7/a$a;->r()Ls7/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-instance v1, Lg8/a;

    .line 104
    .line 105
    invoke-direct {v1}, Lg8/a;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-lez v2, :cond_1

    .line 113
    .line 114
    new-instance v2, Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    .line 115
    .line 116
    invoke-direct {v2, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lyf/a;

    .line 120
    .line 121
    invoke-direct {p1}, Lyf/a;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d(Lj8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v2, Lh8/d;

    .line 129
    .line 130
    invoke-direct {v2}, Lh8/d;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->a(Lh8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    new-instance v2, Lyf/c;

    .line 138
    .line 139
    invoke-direct {v2}, Lyf/c;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c(Li8/a;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    new-instance v2, Lt7/a;

    .line 147
    .line 148
    invoke-direct {v2}, Lt7/a;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f(Lt7/c;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b()Lcom/elvishew/xlog/printer/file/FilePrinter;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    const/4 p1, 0x0

    .line 161
    :goto_1
    if-eqz p4, :cond_3

    .line 162
    .line 163
    if-nez p1, :cond_2

    .line 164
    .line 165
    new-array p1, p3, [Lg8/c;

    .line 166
    .line 167
    aput-object v1, p1, p2

    .line 168
    .line 169
    invoke-static {v0, p1}, Ls7/e;->f(Ls7/a;[Lg8/c;)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_2
    const/4 p4, 0x2

    .line 174
    new-array p4, p4, [Lg8/c;

    .line 175
    .line 176
    aput-object v1, p4, p2

    .line 177
    .line 178
    aput-object p1, p4, p3

    .line 179
    .line 180
    invoke-static {v0, p4}, Ls7/e;->f(Ls7/a;[Lg8/c;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    if-nez p1, :cond_4

    .line 185
    .line 186
    invoke-static {v0}, Ls7/e;->e(Ls7/a;)V

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    new-array p3, p3, [Lg8/c;

    .line 191
    .line 192
    aput-object p1, p3, p2

    .line 193
    .line 194
    invoke-static {v0, p3}, Ls7/e;->f(Ls7/a;[Lg8/c;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    return-void
.end method

.method private static final j(Ls7/b;)Ls7/b;
    .locals 0

    .line 1
    return-object p0
.end method

.method private final k()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public final b()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lxf/c;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(Landroid/app/Application;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-direct {p0}, Lxf/c$a;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "log"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_0
    return-object p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string v0, "\u65e5\u5fd7\u5e93\u4f20\u5165Application\u4e3a\u7a7a"

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public final d()Lcom/tn/lib/logger/xlog/LogType;
    .locals 1

    .line 1
    invoke-static {}, Lxf/c;->b()Lcom/tn/lib/logger/xlog/LogType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    invoke-static {}, Lxf/c;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final f(Landroid/app/Application;Lcom/tn/lib/logger/xlog/LogType;ZLjava/lang/String;J)V
    .locals 4

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "logType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "loggerPath"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lxf/c;->a:Lxf/c$a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lxf/c$a;->b()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {p2}, Lxf/c;->f(Lcom/tn/lib/logger/xlog/LogType;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-nez p3, :cond_2

    .line 30
    .line 31
    const-string v2, "oneroom_logger"

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    move v2, v1

    .line 44
    :goto_1
    invoke-static {v2}, Lxf/c;->e(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lxf/c$a;->l(Landroid/app/Application;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lxf/c$a$a;->a:[I

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    aget p1, p1, p2

    .line 57
    .line 58
    if-eq p1, v1, :cond_4

    .line 59
    .line 60
    const/4 p2, 0x2

    .line 61
    if-ne p1, p2, :cond_3

    .line 62
    .line 63
    invoke-direct {p0, p4, p5, p6, p3}, Lxf/c$a;->i(Ljava/lang/String;JZ)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 68
    .line 69
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_4
    invoke-direct {p0, p4, p5, p6, p3}, Lxf/c$a;->h(Ljava/lang/String;JZ)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-void
.end method

.method public final l(Landroid/app/Application;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lxf/c;->d(Landroid/app/Application;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
