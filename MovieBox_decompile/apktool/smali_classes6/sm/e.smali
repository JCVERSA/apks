.class public final Lsm/e;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lsm/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsm/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lsm/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsm/e;->a:Lsm/e;

    .line 7
    .line 8
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

.method private final a(ILandroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v3, 0x1d

    .line 20
    .line 21
    if-lt v2, v3, :cond_0

    .line 22
    .line 23
    new-instance v1, Landroid/text/style/ImageSpan;

    .line 24
    .line 25
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-direct {v1, v2, p1, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v2, Landroid/text/style/ImageSpan;

    .line 35
    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-direct {v2, v3, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 41
    .line 42
    .line 43
    move-object v1, v2

    .line 44
    :goto_0
    add-int/lit8 p1, v0, 0x1

    .line 45
    .line 46
    const/16 v2, 0x11

    .line 47
    .line 48
    invoke-virtual {p2, v1, v0, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private final c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-direct {p2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 30
    .line 31
    .line 32
    add-int/2addr v1, v0

    .line 33
    const/16 p3, 0x11

    .line 34
    .line 35
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method static synthetic d(Lsm/e;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget p3, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsm/e;->c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 1
    const-string v0, "span"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, " I "

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 16
    .line 17
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget v3, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v0, 0x3

    .line 35
    .line 36
    const/16 v3, 0x11

    .line 37
    .line 38
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final e(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableString;
    .locals 11

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "subject"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v5, 0x4

    .line 21
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v5, "substring(...)"

    .line 26
    .line 27
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object v2, v3

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    new-array v6, p1, [C

    .line 40
    .line 41
    const/16 p1, 0x2c

    .line 42
    .line 43
    aput-char p1, v6, v4

    .line 44
    .line 45
    const/4 v9, 0x6

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    move-object v3, p1

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    :cond_1
    const-string p1, " | "

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :cond_4
    new-instance p1, Landroid/text/SpannableString;

    .line 88
    .line 89
    invoke-direct {p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const/16 v5, 0x11

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 104
    .line 105
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    sget v8, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 114
    .line 115
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 120
    .line 121
    .line 122
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 123
    .line 124
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    sget v9, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v6, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    add-int/2addr v2, v0

    .line 149
    invoke-virtual {p1, v7, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-lt v2, v0, :cond_7

    .line 159
    .line 160
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 161
    .line 162
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    sget v6, Lcom/tn/lib/widget/R$color;->white_20:I

    .line 171
    .line 172
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 177
    .line 178
    .line 179
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 180
    .line 181
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    .line 190
    .line 191
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 v0, v2, -0x3

    .line 199
    .line 200
    invoke-virtual {p1, v3, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-virtual {p1, v4, v2, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 208
    .line 209
    .line 210
    :cond_7
    return-object p1
.end method

.method public final f(Lcom/transsion/moviedetailapi/bean/Subject;)Landroid/text/SpannableStringBuilder;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "subject"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/transsion/moviedetailapi/h;->a(Ljava/lang/Integer;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {p0, v2, v1}, Lsm/e;->a(ILandroid/text/SpannableStringBuilder;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lsm/e;->b(Landroid/text/SpannableStringBuilder;)V

    .line 26
    .line 27
    .line 28
    sget v2, Lcom/tn/lib/widget/R$drawable;->ic_category_star:I

    .line 29
    .line 30
    invoke-direct {p0, v2, v1}, Lsm/e;->a(ILandroid/text/SpannableStringBuilder;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    sget v3, Lcom/tn/lib/widget/R$color;->yellow_light_60:I

    .line 38
    .line 39
    invoke-direct {p0, v1, v2, v3}, Lsm/e;->c(Landroid/text/SpannableStringBuilder;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lsm/e;->b(Landroid/text/SpannableStringBuilder;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    const/4 v3, 0x4

    .line 52
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v3, "substring(...)"

    .line 57
    .line 58
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    move-object v4, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v2, p0

    .line 69
    move-object v3, v1

    .line 70
    invoke-static/range {v2 .. v7}, Lsm/e;->d(Lsm/e;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    new-array v9, p1, [C

    .line 81
    .line 82
    const/16 p1, 0x2c

    .line 83
    .line 84
    aput-char p1, v9, v0

    .line 85
    .line 86
    const/4 v12, 0x6

    .line 87
    const/4 v13, 0x0

    .line 88
    const/4 v10, 0x0

    .line 89
    const/4 v11, 0x0

    .line 90
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->R0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    check-cast p1, Ljava/lang/Iterable;

    .line 97
    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    move-object v4, v0

    .line 113
    check-cast v4, Ljava/lang/String;

    .line 114
    .line 115
    sget-object v2, Lsm/e;->a:Lsm/e;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lsm/e;->b(Landroid/text/SpannableStringBuilder;)V

    .line 118
    .line 119
    .line 120
    const/4 v6, 0x4

    .line 121
    const/4 v7, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v3, v1

    .line 124
    invoke-static/range {v2 .. v7}, Lsm/e;->d(Lsm/e;Landroid/text/SpannableStringBuilder;Ljava/lang/String;IILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_1
    return-object v1
.end method

.method public final g(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "getString(...)"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ne v3, v1, :cond_1

    .line 25
    .line 26
    sget p1, Lcom/transsion/moviedetailapi/R$string;->subject_tv:I

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_5

    .line 36
    :cond_1
    :goto_0
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eq v3, v1, :cond_7

    .line 50
    .line 51
    :goto_1
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, v1, :cond_4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    :goto_2
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->EDUCATION:Lcom/transsion/moviedetailapi/SubjectType;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-ne p1, v1, :cond_6

    .line 81
    .line 82
    sget p1, Lcom/transsion/moviedetailapi/R$string;->subject_education:I

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_6
    :goto_3
    sget p1, Lcom/transsion/moviedetailapi/R$string;->subject_movie:I

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_5

    .line 102
    :cond_7
    :goto_4
    sget p1, Lcom/transsion/moviedetailapi/R$string;->subject_music:I

    .line 103
    .line 104
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_5
    return-object p1
.end method
