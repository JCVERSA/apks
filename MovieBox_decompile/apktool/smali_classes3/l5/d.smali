.class public final Ll5/d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/d$a;
    }
.end annotation


# static fields
.field public static final a:Ll5/d$a;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll5/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ll5/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ll5/d;->a:Ll5/d$a;

    .line 8
    .line 9
    const-string v0, "\\{(\\d+)\\}\\{(\\d+)\\}(.*)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ll5/d;->b:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "(\\d+):(\\d+):(\\d+)[:\\.](\\d+)"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Ll5/d;->c:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;)I
    .locals 5

    .line 1
    sget-object v0, Ll5/d;->c:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    const/4 v2, 0x2

    .line 28
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :goto_1
    const/4 v3, 0x3

    .line 41
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move v3, v1

    .line 53
    :goto_2
    const/4 v4, 0x4

    .line 54
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_3
    mul-int/lit8 v1, v1, 0xa

    .line 65
    .line 66
    mul-int/lit16 v3, v3, 0x3e8

    .line 67
    .line 68
    add-int/2addr v1, v3

    .line 69
    const p1, 0xea60

    .line 70
    .line 71
    .line 72
    mul-int/2addr v2, p1

    .line 73
    add-int/2addr v1, v2

    .line 74
    const p1, 0x36ee80

    .line 75
    .line 76
    .line 77
    mul-int/2addr v0, p1

    .line 78
    add-int/2addr v1, v0

    .line 79
    :cond_4
    return v1
.end method

.method private final c(Ljava/io/BufferedReader;Ljava/lang/String;Lm5/d;)V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lm5/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lm5/b;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    const/4 v2, 0x1

    .line 9
    if-eqz p2, :cond_c

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_b

    .line 18
    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    move v6, v5

    .line 27
    :goto_1
    if-gt v5, v3, :cond_6

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    move v7, v5

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    move v7, v3

    .line 34
    :goto_2
    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    const/16 v8, 0x20

    .line 39
    .line 40
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-gtz v7, :cond_2

    .line 45
    .line 46
    move v7, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_2
    move v7, v4

    .line 49
    :goto_3
    if-nez v6, :cond_4

    .line 50
    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    move v6, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    if-nez v7, :cond_5

    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    invoke-interface {p2, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object v3, Ll5/d;->b:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    :try_start_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_9

    .line 85
    .line 86
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/4 v3, 0x2

    .line 91
    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    goto :goto_5

    .line 102
    :catchall_0
    move-exception v2

    .line 103
    goto :goto_6

    .line 104
    :cond_7
    move v2, v4

    .line 105
    :goto_5
    int-to-long v5, v2

    .line 106
    const-wide/32 v7, 0xf4240

    .line 107
    .line 108
    .line 109
    mul-long/2addr v5, v7

    .line 110
    const/16 v2, 0x5da8

    .line 111
    .line 112
    int-to-long v9, v2

    .line 113
    div-long/2addr v5, v9

    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    :cond_8
    int-to-long v2, v4

    .line 121
    mul-long/2addr v2, v7

    .line 122
    div-long/2addr v2, v9

    .line 123
    new-instance v4, Lm5/c;

    .line 124
    .line 125
    invoke-direct {v4, v0, v0}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    long-to-int v5, v5

    .line 129
    iput v5, v4, Lm5/c;->a:I

    .line 130
    .line 131
    iput-object v4, v1, Lm5/b;->b:Lm5/c;

    .line 132
    .line 133
    new-instance v4, Lm5/c;

    .line 134
    .line 135
    invoke-direct {v4, v0, v0}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    long-to-int v2, v2

    .line 139
    iput v2, v4, Lm5/c;->a:I

    .line 140
    .line 141
    iput-object v4, v1, Lm5/b;->c:Lm5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    goto :goto_7

    .line 144
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    :cond_9
    :goto_7
    :try_start_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    const/4 v2, 0x3

    .line 154
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    iput-object p2, v1, Lm5/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .line 160
    goto :goto_8

    .line 161
    :catchall_1
    move-exception p2

    .line 162
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :cond_a
    :goto_8
    iget-object p2, v1, Lm5/b;->b:Lm5/c;

    .line 166
    .line 167
    iget p2, p2, Lm5/c;->a:I

    .line 168
    .line 169
    :goto_9
    iget-object v2, p3, Lm5/d;->i:Ljava/util/TreeMap;

    .line 170
    .line 171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_b

    .line 180
    .line 181
    add-int/lit8 p2, p2, 0x1

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    iget-object v2, p3, Lm5/d;->i:Ljava/util/TreeMap;

    .line 185
    .line 186
    const-string v3, "tto.captions"

    .line 187
    .line 188
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 202
    goto :goto_a

    .line 203
    :catchall_2
    move-object p2, v0

    .line 204
    :goto_a
    new-instance v1, Lm5/b;

    .line 205
    .line 206
    invoke-direct {v1}, Lm5/b;-><init>()V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_c
    :goto_b
    iput-boolean v2, p3, Lm5/d;->m:Z

    .line 212
    .line 213
    return-void
.end method

.method private final d(Ljava/io/BufferedReader;Ljava/lang/String;Lm5/d;)V
    .locals 12

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    new-instance v1, Lm5/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lm5/b;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    const-string v4, "[COLF]"

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    invoke-static {p2, v4, v3, v5, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :goto_1
    const/4 v4, 0x1

    .line 27
    if-eqz p2, :cond_12

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_1

    .line 34
    .line 35
    goto/16 :goto_10

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/16 v5, 0x20

    .line 42
    .line 43
    if-eqz p2, :cond_8

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    sub-int/2addr v6, v4

    .line 50
    move v7, v3

    .line 51
    move v8, v7

    .line 52
    :goto_2
    if-gt v7, v6, :cond_7

    .line 53
    .line 54
    if-nez v8, :cond_2

    .line 55
    .line 56
    move v9, v7

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    move v9, v6

    .line 59
    :goto_3
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-gtz v9, :cond_3

    .line 68
    .line 69
    move v9, v4

    .line 70
    goto :goto_4

    .line 71
    :cond_3
    move v9, v3

    .line 72
    :goto_4
    if-nez v8, :cond_5

    .line 73
    .line 74
    if-nez v9, :cond_4

    .line 75
    .line 76
    move v8, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    if-nez v9, :cond_6

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 88
    .line 89
    invoke-interface {p2, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    goto :goto_6

    .line 98
    :cond_8
    move-object p2, v2

    .line 99
    :goto_6
    if-eqz p2, :cond_9

    .line 100
    .line 101
    :try_start_0
    const-string v6, ","

    .line 102
    .line 103
    filled-new-array {v6}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const/4 v10, 0x6

    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v6, p2

    .line 112
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/lang/String;

    .line 129
    .line 130
    invoke-direct {p0, v7}, Ll5/d;->a(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    invoke-direct {p0, v6}, Ll5/d;->a(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    new-instance v8, Lm5/c;

    .line 139
    .line 140
    invoke-direct {v8, v0, v0}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iput v7, v8, Lm5/c;->a:I

    .line 144
    .line 145
    iput-object v8, v1, Lm5/b;->b:Lm5/c;

    .line 146
    .line 147
    new-instance v7, Lm5/c;

    .line 148
    .line 149
    invoke-direct {v7, v0, v0}, Lm5/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iput v6, v7, Lm5/c;->a:I

    .line 153
    .line 154
    iput-object v7, v1, Lm5/b;->c:Lm5/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :catchall_0
    move-exception v6

    .line 158
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_9
    :goto_7
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    if-eqz v6, :cond_10

    .line 166
    .line 167
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    sub-int/2addr v7, v4

    .line 172
    move v8, v3

    .line 173
    move v9, v8

    .line 174
    :goto_8
    if-gt v8, v7, :cond_f

    .line 175
    .line 176
    if-nez v9, :cond_a

    .line 177
    .line 178
    move v10, v8

    .line 179
    goto :goto_9

    .line 180
    :cond_a
    move v10, v7

    .line 181
    :goto_9
    invoke-interface {v6, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    if-gtz v10, :cond_b

    .line 190
    .line 191
    move v10, v4

    .line 192
    goto :goto_a

    .line 193
    :cond_b
    move v10, v3

    .line 194
    :goto_a
    if-nez v9, :cond_d

    .line 195
    .line 196
    if-nez v10, :cond_c

    .line 197
    .line 198
    move v9, v4

    .line 199
    goto :goto_8

    .line 200
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_d
    if-nez v10, :cond_e

    .line 204
    .line 205
    goto :goto_b

    .line 206
    :cond_e
    add-int/lit8 v7, v7, -0x1

    .line 207
    .line 208
    goto :goto_8

    .line 209
    :catchall_1
    move-exception v4

    .line 210
    goto :goto_d

    .line 211
    :cond_f
    :goto_b
    add-int/lit8 v7, v7, 0x1

    .line 212
    .line 213
    invoke-interface {v6, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    goto :goto_c

    .line 222
    :cond_10
    move-object p2, v2

    .line 223
    :goto_c
    iput-object p2, v1, Lm5/b;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    .line 225
    goto :goto_e

    .line 226
    :goto_d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    .line 228
    .line 229
    :goto_e
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 230
    .line 231
    .line 232
    :catchall_2
    iget-object v4, v1, Lm5/b;->b:Lm5/c;

    .line 233
    .line 234
    iget v4, v4, Lm5/c;->a:I

    .line 235
    .line 236
    :goto_f
    iget-object v5, p3, Lm5/d;->i:Ljava/util/TreeMap;

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v5

    .line 246
    if-eqz v5, :cond_11

    .line 247
    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    .line 250
    goto :goto_f

    .line 251
    :cond_11
    iget-object v5, p3, Lm5/d;->i:Ljava/util/TreeMap;

    .line 252
    .line 253
    const-string v6, "tto.captions"

    .line 254
    .line 255
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v1, Lm5/b;

    .line 266
    .line 267
    invoke-direct {v1}, Lm5/b;-><init>()V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_12
    :goto_10
    iput-boolean v4, p3, Lm5/d;->m:Z

    .line 273
    .line 274
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lm5/d;
    .locals 9

    .line 1
    const-string v0, "unicode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm5/d;

    .line 7
    .line 8
    invoke-direct {v0}, Lm5/d;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/io/InputStreamReader;

    .line 18
    .line 19
    invoke-direct {v1, p3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 24
    .line 25
    invoke-direct {v1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance p2, Ljava/io/BufferedReader;

    .line 29
    .line 30
    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, v0, Lm5/d;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz p1, :cond_7

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sub-int/2addr v4, v3

    .line 49
    move v5, v2

    .line 50
    move v6, v5

    .line 51
    :goto_1
    if-gt v5, v4, :cond_6

    .line 52
    .line 53
    if-nez v6, :cond_1

    .line 54
    .line 55
    move v7, v5

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    move v7, v4

    .line 58
    :goto_2
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/16 v8, 0x20

    .line 63
    .line 64
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-gtz v7, :cond_2

    .line 69
    .line 70
    move v7, v3

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    move v7, v2

    .line 73
    :goto_3
    if-nez v6, :cond_4

    .line 74
    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    move v6, v3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-nez v7, :cond_5

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    :goto_4
    add-int/2addr v4, v3

    .line 89
    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_5

    .line 98
    :cond_7
    move-object p1, v1

    .line 99
    :goto_5
    const/4 v4, 0x2

    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    :try_start_0
    const-string v5, "{"

    .line 103
    .line 104
    invoke-static {p1, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-ne v5, v3, :cond_8

    .line 109
    .line 110
    invoke-direct {p0, p2, p1, v0}, Ll5/d;->c(Ljava/io/BufferedReader;Ljava/lang/String;Lm5/d;)V

    .line 111
    .line 112
    .line 113
    goto :goto_8

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto :goto_6

    .line 116
    :cond_8
    if-eqz p1, :cond_a

    .line 117
    .line 118
    const-string v5, "[INFORMATION]"

    .line 119
    .line 120
    invoke-static {p1, v5, v2, v4, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v1, v3, :cond_a

    .line 125
    .line 126
    invoke-direct {p0, p2, p1, v0}, Ll5/d;->d(Ljava/io/BufferedReader;Ljava/lang/String;Lm5/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_8

    .line 130
    :goto_6
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .line 132
    .line 133
    if-eqz p3, :cond_b

    .line 134
    .line 135
    :goto_7
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 136
    .line 137
    .line 138
    goto :goto_9

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    if-eqz p3, :cond_9

    .line 141
    .line 142
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 143
    .line 144
    .line 145
    :cond_9
    throw p1

    .line 146
    :cond_a
    :goto_8
    if-eqz p3, :cond_b

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_b
    :goto_9
    return-object v0
.end method
