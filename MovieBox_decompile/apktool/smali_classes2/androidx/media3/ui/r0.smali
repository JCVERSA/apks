.class abstract Landroidx/media3/ui/r0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/r0$b;,
        Landroidx/media3/ui/r0$d;,
        Landroidx/media3/ui/r0$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(&#13;)?&#10;"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/media3/ui/r0;->a:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;F)Landroidx/media3/ui/r0$b;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    new-instance p0, Landroidx/media3/ui/r0$b;

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, p1, v0, v2}, Landroidx/media3/ui/r0$b;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/r0$a;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    instance-of v3, p0, Landroid/text/Spanned;

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroidx/media3/ui/r0$b;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/media3/ui/r0;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, p0, v0, v2}, Landroidx/media3/ui/r0$b;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/r0$a;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    check-cast p0, Landroid/text/Spanned;

    .line 37
    .line 38
    new-instance v3, Ljava/util/HashSet;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const-class v5, Landroid/text/style/BackgroundColorSpan;

    .line 48
    .line 49
    invoke-interface {p0, v0, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, [Landroid/text/style/BackgroundColorSpan;

    .line 54
    .line 55
    array-length v5, v4

    .line 56
    move v6, v0

    .line 57
    :goto_0
    if-ge v6, v5, :cond_2

    .line 58
    .line 59
    aget-object v7, v4, v6

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    add-int/2addr v6, v1

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    check-cast v5, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v7, "bg_"

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v6}, Landroidx/media3/ui/g;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v5}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    new-array v7, v1, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v5, v7, v0

    .line 127
    .line 128
    const-string v5, "background-color:%s;"

    .line 129
    .line 130
    invoke-static {v5, v7}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-static {p0, p1}, Landroidx/media3/ui/r0;->c(Landroid/text/Spanned;F)Landroid/util/SparseArray;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 149
    .line 150
    .line 151
    move v5, v0

    .line 152
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-ge v0, v6, :cond_6

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5}, Landroidx/media3/ui/r0;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    check-cast v5, Landroidx/media3/ui/r0$d;

    .line 178
    .line 179
    invoke-static {v5}, Landroidx/media3/ui/r0$d;->a(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-static {}, Landroidx/media3/ui/r0$c;->c()Ljava/util/Comparator;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v5}, Landroidx/media3/ui/r0$d;->a(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_4

    .line 203
    .line 204
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    check-cast v8, Landroidx/media3/ui/r0$c;

    .line 209
    .line 210
    iget-object v8, v8, Landroidx/media3/ui/r0$c;->d:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_4
    invoke-static {v5}, Landroidx/media3/ui/r0$d;->b(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-static {}, Landroidx/media3/ui/r0$c;->d()Ljava/util/Comparator;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    .line 226
    .line 227
    invoke-static {v5}, Landroidx/media3/ui/r0$d;->b(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-eqz v7, :cond_5

    .line 240
    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    check-cast v7, Landroidx/media3/ui/r0$c;

    .line 246
    .line 247
    iget-object v7, v7, Landroidx/media3/ui/r0$c;->c:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_5
    add-int/2addr v0, v1

    .line 254
    move v5, v6

    .line 255
    goto :goto_2

    .line 256
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-interface {p0, v5, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {p0}, Landroidx/media3/ui/r0;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    new-instance p0, Landroidx/media3/ui/r0$b;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-direct {p0, p1, v4, v2}, Landroidx/media3/ui/r0$b;-><init>(Ljava/lang/String;Ljava/util/Map;Landroidx/media3/ui/r0$a;)V

    .line 278
    .line 279
    .line 280
    return-object p0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Landroidx/media3/ui/r0;->a:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "<br>"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static c(Landroid/text/Spanned;F)Landroid/util/SparseArray;
    .locals 13

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-class v2, Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v2, v1

    .line 18
    :goto_0
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, v1, v3

    .line 21
    .line 22
    invoke-static {v4, p1}, Landroidx/media3/ui/r0;->e(Ljava/lang/Object;F)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-static {v4}, Landroidx/media3/ui/r0;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v11

    .line 34
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v12, Landroidx/media3/ui/r0$c;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v5, v12

    .line 47
    move v6, v11

    .line 48
    move v7, v4

    .line 49
    invoke-direct/range {v5 .. v10}, Landroidx/media3/ui/r0$c;-><init>(IILjava/lang/String;Ljava/lang/String;Landroidx/media3/ui/r0$a;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v11}, Landroidx/media3/ui/r0;->f(Landroid/util/SparseArray;I)Landroidx/media3/ui/r0$d;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-static {v5}, Landroidx/media3/ui/r0$d;->b(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v4}, Landroidx/media3/ui/r0;->f(Landroid/util/SparseArray;I)Landroidx/media3/ui/r0$d;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v4}, Landroidx/media3/ui/r0$d;->a(Landroidx/media3/ui/r0$d;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    return-object v0
.end method

.method private static d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p0, Landroid/text/style/StrikethroughSpan;

    .line 2
    .line 3
    const-string v1, "</span>"

    .line 4
    .line 5
    if-nez v0, :cond_9

    .line 6
    .line 7
    instance-of v0, p0, Landroid/text/style/ForegroundColorSpan;

    .line 8
    .line 9
    if-nez v0, :cond_9

    .line 10
    .line 11
    instance-of v0, p0, Landroid/text/style/BackgroundColorSpan;

    .line 12
    .line 13
    if-nez v0, :cond_9

    .line 14
    .line 15
    instance-of v0, p0, Lu1/d;

    .line 16
    .line 17
    if-nez v0, :cond_9

    .line 18
    .line 19
    instance-of v0, p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 20
    .line 21
    if-nez v0, :cond_9

    .line 22
    .line 23
    instance-of v0, p0, Landroid/text/style/RelativeSizeSpan;

    .line 24
    .line 25
    if-nez v0, :cond_9

    .line 26
    .line 27
    instance-of v0, p0, Lu1/h;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    instance-of v0, p0, Landroid/text/style/TypefaceSpan;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p0, Landroid/text/style/TypefaceSpan;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v1, v2

    .line 47
    :goto_0
    return-object v1

    .line 48
    :cond_2
    instance-of v0, p0, Landroid/text/style/StyleSpan;

    .line 49
    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    check-cast p0, Landroid/text/style/StyleSpan;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 v0, 0x1

    .line 59
    if-eq p0, v0, :cond_5

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    if-eq p0, v0, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    if-eq p0, v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const-string p0, "</i></b>"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_4
    const-string p0, "</i>"

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_5
    const-string p0, "</b>"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_6
    instance-of v0, p0, Lu1/f;

    .line 78
    .line 79
    if-eqz v0, :cond_7

    .line 80
    .line 81
    check-cast p0, Lu1/f;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "<rt>"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lu1/f;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p0}, Landroidx/media3/ui/r0;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p0, "</rt></ruby>"

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :cond_7
    instance-of p0, p0, Landroid/text/style/UnderlineSpan;

    .line 113
    .line 114
    if-eqz p0, :cond_8

    .line 115
    .line 116
    const-string p0, "</u>"

    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_8
    :goto_1
    return-object v2

    .line 120
    :cond_9
    :goto_2
    return-object v1
.end method

.method private static e(Ljava/lang/Object;F)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    instance-of v3, p0, Landroid/text/style/StrikethroughSpan;

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    const-string p0, "<span style=\'text-decoration:line-through;\'>"

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    instance-of v3, p0, Landroid/text/style/ForegroundColorSpan;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    check-cast p0, Landroid/text/style/ForegroundColorSpan;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Landroidx/media3/ui/g;->b(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-array p1, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p0, p1, v1

    .line 28
    .line 29
    const-string p0, "<span style=\'color:%s;\'>"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    instance-of v3, p0, Landroid/text/style/BackgroundColorSpan;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    check-cast p0, Landroid/text/style/BackgroundColorSpan;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-array p1, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object p0, p1, v1

    .line 53
    .line 54
    const-string p0, "<span class=\'bg_%s\'>"

    .line 55
    .line 56
    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    instance-of v3, p0, Lu1/d;

    .line 62
    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-string p0, "<span style=\'text-combine-upright:all;\'>"

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_3
    instance-of v3, p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 69
    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    check-cast p0, Landroid/text/style/AbsoluteSizeSpan;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    int-to-float p0, p0

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    int-to-float p0, p0

    .line 91
    div-float/2addr p0, p1

    .line 92
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array p1, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p0, p1, v1

    .line 99
    .line 100
    const-string p0, "<span style=\'font-size:%.2fpx;\'>"

    .line 101
    .line 102
    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_5
    instance-of p1, p0, Landroid/text/style/RelativeSizeSpan;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    check-cast p0, Landroid/text/style/RelativeSizeSpan;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    const/high16 p1, 0x42c80000    # 100.0f

    .line 118
    .line 119
    mul-float/2addr p0, p1

    .line 120
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-array p1, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object p0, p1, v1

    .line 127
    .line 128
    const-string p0, "<span style=\'font-size:%.2f%%;\'>"

    .line 129
    .line 130
    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_6
    instance-of p1, p0, Landroid/text/style/TypefaceSpan;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    check-cast p0, Landroid/text/style/TypefaceSpan;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-eqz p0, :cond_7

    .line 147
    .line 148
    const-string p1, "<span style=\'font-family:\"%s\";\'>"

    .line 149
    .line 150
    new-array v0, v2, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object p0, v0, v1

    .line 153
    .line 154
    invoke-static {p1, v0}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    :cond_7
    return-object v3

    .line 159
    :cond_8
    instance-of p1, p0, Landroid/text/style/StyleSpan;

    .line 160
    .line 161
    if-eqz p1, :cond_c

    .line 162
    .line 163
    check-cast p0, Landroid/text/style/StyleSpan;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eq p0, v2, :cond_b

    .line 170
    .line 171
    if-eq p0, v0, :cond_a

    .line 172
    .line 173
    const/4 p1, 0x3

    .line 174
    if-eq p0, p1, :cond_9

    .line 175
    .line 176
    return-object v3

    .line 177
    :cond_9
    const-string p0, "<b><i>"

    .line 178
    .line 179
    return-object p0

    .line 180
    :cond_a
    const-string p0, "<i>"

    .line 181
    .line 182
    return-object p0

    .line 183
    :cond_b
    const-string p0, "<b>"

    .line 184
    .line 185
    return-object p0

    .line 186
    :cond_c
    instance-of p1, p0, Lu1/f;

    .line 187
    .line 188
    if-eqz p1, :cond_10

    .line 189
    .line 190
    check-cast p0, Lu1/f;

    .line 191
    .line 192
    iget p0, p0, Lu1/f;->b:I

    .line 193
    .line 194
    const/4 p1, -0x1

    .line 195
    if-eq p0, p1, :cond_f

    .line 196
    .line 197
    if-eq p0, v2, :cond_e

    .line 198
    .line 199
    if-eq p0, v0, :cond_d

    .line 200
    .line 201
    return-object v3

    .line 202
    :cond_d
    const-string p0, "<ruby style=\'ruby-position:under;\'>"

    .line 203
    .line 204
    return-object p0

    .line 205
    :cond_e
    const-string p0, "<ruby style=\'ruby-position:over;\'>"

    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_f
    const-string p0, "<ruby style=\'ruby-position:unset;\'>"

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_10
    instance-of p1, p0, Landroid/text/style/UnderlineSpan;

    .line 212
    .line 213
    if-eqz p1, :cond_11

    .line 214
    .line 215
    const-string p0, "<u>"

    .line 216
    .line 217
    return-object p0

    .line 218
    :cond_11
    instance-of p1, p0, Lu1/h;

    .line 219
    .line 220
    if-eqz p1, :cond_12

    .line 221
    .line 222
    check-cast p0, Lu1/h;

    .line 223
    .line 224
    iget p1, p0, Lu1/h;->a:I

    .line 225
    .line 226
    iget v3, p0, Lu1/h;->b:I

    .line 227
    .line 228
    invoke-static {p1, v3}, Landroidx/media3/ui/r0;->h(II)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget p0, p0, Lu1/h;->c:I

    .line 233
    .line 234
    invoke-static {p0}, Landroidx/media3/ui/r0;->g(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    const-string v3, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 239
    .line 240
    new-array v0, v0, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object p1, v0, v1

    .line 243
    .line 244
    aput-object p0, v0, v2

    .line 245
    .line 246
    invoke-static {v3, v0}, Landroidx/media3/common/util/a1;->G(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    return-object p0

    .line 251
    :cond_12
    return-object v3
.end method

.method private static f(Landroid/util/SparseArray;I)Landroidx/media3/ui/r0$d;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/media3/ui/r0$d;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/ui/r0$d;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/media3/ui/r0$d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method private static g(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "over right"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const-string p0, "under left"

    .line 8
    .line 9
    return-object p0
.end method

.method private static h(II)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq p1, v2, :cond_1

    .line 9
    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p1, "open "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string p1, "filled "

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_5

    .line 25
    .line 26
    if-eq p0, v2, :cond_4

    .line 27
    .line 28
    if-eq p0, v1, :cond_3

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    if-eq p0, p1, :cond_2

    .line 32
    .line 33
    const-string p0, "unset"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const-string p0, "sesame"

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string p0, "dot"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    const-string p0, "circle"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    const-string p0, "none"

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
