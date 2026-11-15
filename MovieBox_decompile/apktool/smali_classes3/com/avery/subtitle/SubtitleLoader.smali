.class public final Lcom/avery/subtitle/SubtitleLoader;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avery/subtitle/SubtitleLoader$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/avery/subtitle/SubtitleLoader;

.field private static final b:Ljava/lang/String;

.field private static c:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/avery/subtitle/SubtitleLoader;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/avery/subtitle/SubtitleLoader;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader;

    .line 7
    .line 8
    const-class v0, Lcom/avery/subtitle/SubtitleLoader;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/avery/subtitle/SubtitleLoader;Ljava/lang/String;Ljava/lang/String;)Lm5/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader;->d(Ljava/lang/String;Ljava/lang/String;)Lm5/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lcom/avery/subtitle/SubtitleLoader;Ljava/lang/String;Ljava/lang/String;)Lm5/d;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader;->f(Ljava/lang/String;Ljava/lang/String;)Lm5/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lm5/d;
    .locals 8

    .line 1
    const/4 v4, 0x6

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    move-object v0, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    add-int/2addr v0, v1

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "this as java.lang.String).substring(startIndex)"

    .line 19
    .line 20
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x6

    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v3, "."

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v2, p2

    .line 30
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "parse: name = "

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, ", ext = "

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ".srt"

    .line 63
    .line 64
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const-string v3, "FormatSRT().parseFile(fileName, unicode, `is`)"

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    new-instance v0, Ll5/b;

    .line 73
    .line 74
    invoke-direct {v0}, Ll5/b;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2, p3, p1}, Ll5/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_0
    const-string v0, ".ass"

    .line 86
    .line 87
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    const-string v0, ".ssa"

    .line 94
    .line 95
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    const-string v0, ".stl"

    .line 103
    .line 104
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const-string v4, "FormatSTL().parseFile(fileName, unicode, `is`)"

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    new-instance v0, Ll5/c;

    .line 113
    .line 114
    invoke-direct {v0}, Ll5/c;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p2, p3, p1}, Ll5/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :cond_2
    const-string v0, ".ttml"

    .line 126
    .line 127
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    new-instance v0, Ll5/c;

    .line 134
    .line 135
    invoke-direct {v0}, Ll5/c;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p2, p3, p1}, Ll5/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_3
    const-string v0, ".sub"

    .line 147
    .line 148
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    new-instance v0, Ll5/d;

    .line 155
    .line 156
    invoke-direct {v0}, Ll5/d;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p2, p3, p1}, Ll5/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    return-object p1

    .line 164
    :cond_4
    new-instance v0, Ll5/b;

    .line 165
    .line 166
    invoke-direct {v0}, Ll5/b;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p2, p3, p1}, Ll5/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :cond_5
    :goto_0
    new-instance v0, Ll5/a;

    .line 178
    .line 179
    invoke-direct {v0}, Ll5/a;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p2, p3, p1}, Ll5/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string p2, "FormatASS().parseFile(fileName, unicode, `is`)"

    .line 187
    .line 188
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-object p1
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;)Lm5/d;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseLocal: localSubtitlePath = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/io/FileInputStream;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "file.path"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1, v0, p2}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lm5/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, p2, p3, v1}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;)Lm5/d;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseRemote: remoteSubtitlePath = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/net/URL;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "url.openStream()"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "url.path"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1, v0, p2}, Lcom/avery/subtitle/SubtitleLoader;->c(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lm5/d;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private final g(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/avery/subtitle/SubtitleLoader;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/avery/subtitle/SubtitleLoader$loadFromRemoteAsync$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p1, p2, p3, v1}, Lcom/avery/subtitle/SubtitleLoader$loadFromRemoteAsync$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
    .locals 4

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "unicode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const-string v0, "http://"

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "https://"

    .line 35
    .line 36
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/SubtitleLoader;->e(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/avery/subtitle/SubtitleLoader;->g(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method
