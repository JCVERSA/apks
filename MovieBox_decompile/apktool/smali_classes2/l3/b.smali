.class public final Ll3/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lh3/s;


# static fields
.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Z

.field private final b:Ll3/a;

.field private final c:Landroidx/media3/common/util/j0;

.field private d:Ljava/util/Map;

.field private e:F

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ll3/b;->g:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ll3/b;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    .line 3
    iput v0, p0, Ll3/b;->e:F

    .line 4
    iput v0, p0, Ll3/b;->f:F

    .line 5
    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-direct {v0}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object v0, p0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Ll3/b;->a:Z

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/media3/common/util/a1;->H([B)Ljava/lang/String;

    move-result-object v0

    .line 9
    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    .line 10
    invoke-static {v0}, Ll3/a;->a(Ljava/lang/String;)Ll3/a;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/a;

    iput-object v0, p0, Ll3/b;->b:Ll3/a;

    .line 11
    new-instance v0, Landroidx/media3/common/util/j0;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ll3/b;->j(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v0, p0, Ll3/b;->a:Z

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Ll3/b;->b:Ll3/a;

    :goto_0
    return-void
.end method

.method private static d(JLjava/util/List;Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v1, v1, p0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v1, v1, p0

    .line 35
    .line 36
    if-gez v1, :cond_1

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    add-int/lit8 p1, v0, -0x1

    .line 61
    .line 62
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Ljava/util/Collection;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .line 70
    .line 71
    :goto_2
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method private static e(I)F
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const p0, -0x800001

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    const p0, 0x3f733333    # 0.95f

    .line 14
    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    .line 21
    .line 22
    .line 23
    return p0
.end method

.method private static f(Ljava/lang/String;Ll3/c;Ll3/c$b;FF)Lu1/a;
    .locals 8

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lu1/a$b;

    .line 7
    .line 8
    invoke-direct {p0}, Lu1/a$b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lu1/a$b;->o(Ljava/lang/CharSequence;)Lu1/a$b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const v1, -0x800001

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz p1, :cond_7

    .line 20
    .line 21
    iget-object v3, p1, Ll3/c;->c:Ljava/lang/Integer;

    .line 22
    .line 23
    const/16 v4, 0x21

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 28
    .line 29
    iget-object v5, p1, Ll3/c;->c:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget v3, p1, Ll3/c;->j:I

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    if-ne v3, v5, :cond_1

    .line 49
    .line 50
    iget-object v3, p1, Ll3/c;->d:Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 55
    .line 56
    iget-object v6, p1, Ll3/c;->d:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-direct {v3, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget v3, p1, Ll3/c;->e:F

    .line 73
    .line 74
    cmpl-float v6, v3, v1

    .line 75
    .line 76
    const/4 v7, 0x1

    .line 77
    if-eqz v6, :cond_2

    .line 78
    .line 79
    cmpl-float v6, p4, v1

    .line 80
    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    div-float/2addr v3, p4

    .line 84
    invoke-virtual {p0, v3, v7}, Lu1/a$b;->q(FI)Lu1/a$b;

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-boolean v3, p1, Ll3/c;->f:Z

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    iget-boolean v6, p1, Ll3/c;->g:Z

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 96
    .line 97
    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    if-eqz v3, :cond_4

    .line 109
    .line 110
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 111
    .line 112
    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-boolean v3, p1, Ll3/c;->g:Z

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 128
    .line 129
    const/4 v5, 0x2

    .line 130
    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_0
    iget-boolean v3, p1, Ll3/c;->h:Z

    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 145
    .line 146
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    .line 155
    .line 156
    :cond_6
    iget-boolean v3, p1, Ll3/c;->i:Z

    .line 157
    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    new-instance v3, Landroid/text/style/StrikethroughSpan;

    .line 161
    .line 162
    invoke-direct {v3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    invoke-virtual {v0, v3, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    .line 171
    .line 172
    :cond_7
    iget v0, p2, Ll3/c$b;->a:I

    .line 173
    .line 174
    const/4 v3, -0x1

    .line 175
    if-eq v0, v3, :cond_8

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    if-eqz p1, :cond_9

    .line 179
    .line 180
    iget v0, p1, Ll3/c;->b:I

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_9
    move v0, v3

    .line 184
    :goto_1
    invoke-static {v0}, Ll3/b;->p(I)Landroid/text/Layout$Alignment;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lu1/a$b;->p(Landroid/text/Layout$Alignment;)Lu1/a$b;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-static {v0}, Ll3/b;->o(I)I

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    invoke-virtual {p1, v3}, Lu1/a$b;->l(I)Lu1/a$b;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {v0}, Ll3/b;->n(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {p1, v0}, Lu1/a$b;->i(I)Lu1/a$b;

    .line 205
    .line 206
    .line 207
    iget-object p1, p2, Ll3/c$b;->b:Landroid/graphics/PointF;

    .line 208
    .line 209
    if-eqz p1, :cond_a

    .line 210
    .line 211
    cmpl-float v0, p4, v1

    .line 212
    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    cmpl-float v0, p3, v1

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget p1, p1, Landroid/graphics/PointF;->x:F

    .line 220
    .line 221
    div-float/2addr p1, p3

    .line 222
    invoke-virtual {p0, p1}, Lu1/a$b;->k(F)Lu1/a$b;

    .line 223
    .line 224
    .line 225
    iget-object p1, p2, Ll3/c$b;->b:Landroid/graphics/PointF;

    .line 226
    .line 227
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 228
    .line 229
    div-float/2addr p1, p4

    .line 230
    invoke-virtual {p0, p1, v2}, Lu1/a$b;->h(FI)Lu1/a$b;

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_a
    invoke-virtual {p0}, Lu1/a$b;->d()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-static {p1}, Ll3/b;->e(I)F

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {p0, p1}, Lu1/a$b;->k(F)Lu1/a$b;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0}, Lu1/a$b;->c()I

    .line 246
    .line 247
    .line 248
    move-result p1

    .line 249
    invoke-static {p1}, Ll3/b;->e(I)F

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    invoke-virtual {p0, p1, v2}, Lu1/a$b;->h(FI)Lu1/a$b;

    .line 254
    .line 255
    .line 256
    :goto_2
    invoke-virtual {p0}, Lu1/a$b;->a()Lu1/a;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0
.end method

.method private g(Landroidx/media3/common/util/j0;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->R()Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    :goto_0
    return-object p1
.end method

.method private h(Ljava/lang/String;Ll3/a;Ljava/util/List;Ljava/util/List;)V
    .locals 10

    .line 1
    const-string v0, "Dialogue:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p2, Ll3/a;->e:I

    .line 17
    .line 18
    const-string v2, ","

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    iget v2, p2, Ll3/a;->e:I

    .line 26
    .line 27
    const-string v3, "SsaParser"

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string p3, "Skipping dialogue line with fewer columns than format: "

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v3, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget v1, p2, Ll3/a;->a:I

    .line 53
    .line 54
    aget-object v1, v0, v1

    .line 55
    .line 56
    invoke-static {v1}, Ll3/b;->m(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmp-long v6, v1, v4

    .line 66
    .line 67
    const-string v7, "Skipping invalid timing: "

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v3, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_1
    iget v6, p2, Ll3/a;->b:I

    .line 91
    .line 92
    aget-object v6, v0, v6

    .line 93
    .line 94
    invoke-static {v6}, Ll3/b;->m(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    cmp-long v4, v8, v4

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    cmp-long v4, v8, v1

    .line 103
    .line 104
    if-gtz v4, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    iget-object p1, p0, Ll3/b;->d:Ljava/util/Map;

    .line 108
    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    iget v3, p2, Ll3/a;->c:I

    .line 112
    .line 113
    const/4 v4, -0x1

    .line 114
    if-eq v3, v4, :cond_3

    .line 115
    .line 116
    aget-object v3, v0, v3

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Ll3/c;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    const/4 p1, 0x0

    .line 130
    :goto_0
    iget p2, p2, Ll3/a;->d:I

    .line 131
    .line 132
    aget-object p2, v0, p2

    .line 133
    .line 134
    invoke-static {p2}, Ll3/c$b;->b(Ljava/lang/String;)Ll3/c$b;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p2}, Ll3/c$b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const-string v3, "\\N"

    .line 143
    .line 144
    const-string v4, "\n"

    .line 145
    .line 146
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string v3, "\\n"

    .line 151
    .line 152
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    const-string v3, "\\h"

    .line 157
    .line 158
    const-string v4, "\u00a0"

    .line 159
    .line 160
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    iget v3, p0, Ll3/b;->e:F

    .line 165
    .line 166
    iget v4, p0, Ll3/b;->f:F

    .line 167
    .line 168
    invoke-static {p2, p1, v0, v3, v4}, Ll3/b;->f(Ljava/lang/String;Ll3/c;Ll3/c$b;FF)Lu1/a;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {v1, v2, p4, p3}, Ll3/b;->d(JLjava/util/List;Ljava/util/List;)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-static {v8, v9, p4, p3}, Ll3/b;->d(JLjava/util/List;Ljava/util/List;)I

    .line 177
    .line 178
    .line 179
    move-result p4

    .line 180
    :goto_1
    if-ge p2, p4, :cond_4

    .line 181
    .line 182
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    add-int/lit8 p2, p2, 0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_4
    return-void

    .line 195
    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {v3, p1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method

.method private i(Landroidx/media3/common/util/j0;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ll3/b;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll3/b;->b:Ll3/a;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p1, p4}, Landroidx/media3/common/util/j0;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    const-string v2, "Format:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-static {v1}, Ll3/a;->a(Ljava/lang/String;)Ll3/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string v2, "Dialogue:"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v3, "Skipping dialogue line before complete format: "

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "SsaParser"

    .line 56
    .line 57
    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-direct {p0, v1, v0, p2, p3}, Ll3/b;->h(Ljava/lang/String;Ll3/a;Ljava/util/List;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return-void
.end method

.method private j(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const-string v1, "[Script Info]"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Ll3/b;->k(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v1, "[V4+ Styles]"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {p1, p2}, Ll3/b;->l(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)Ljava/util/Map;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Ll3/b;->d:Ljava/util/Map;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v1, "[V4 Styles]"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const-string v0, "SsaParser"

    .line 43
    .line 44
    const-string v1, "[V4 Styles] are not supported"

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v1, "[Events]"

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method private k(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)V
    .locals 4

    .line 1
    :catch_0
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/j0;->h(Ljava/nio/charset/Charset;)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x5b

    .line 18
    .line 19
    if-eq v1, v2, :cond_4

    .line 20
    .line 21
    :cond_0
    const-string v1, ":"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v1, v0

    .line 28
    const/4 v2, 0x2

    .line 29
    if-eq v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    aget-object v1, v0, v1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/google/common/base/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    const-string v3, "playresx"

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string v3, "playresy"

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :try_start_0
    aget-object v0, v0, v2

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Ll3/b;->f:F

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    aget-object v0, v0, v2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Ll3/b;->e:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-void
.end method

.method private static l(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->h(Ljava/nio/charset/Charset;)C

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/16 v4, 0x5b

    .line 24
    .line 25
    if-eq v3, v4, :cond_4

    .line 26
    .line 27
    :cond_1
    const-string v3, "Format:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Ll3/c$a;->a(Ljava/lang/String;)Ll3/c$a;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v3, "Style:"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "Skipping \'Style:\' line before \'Format:\' line: "

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "SsaParser"

    .line 68
    .line 69
    invoke-static {v3, v2}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static {v2, v1}, Ll3/c;->b(Ljava/lang/String;Ll3/c$a;)Ll3/c;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    if-eqz v2, :cond_0

    .line 78
    .line 79
    iget-object v3, v2, Ll3/c;->a:Ljava/lang/String;

    .line 80
    .line 81
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    return-object v0
.end method

.method private static m(Ljava/lang/String;)J
    .locals 6

    .line 1
    sget-object v0, Ll3/b;->g:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-wide v2, 0xd693a400L

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    mul-long/2addr v0, v2

    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    const-wide/32 v4, 0x3938700

    .line 60
    .line 61
    .line 62
    mul-long/2addr v2, v4

    .line 63
    add-long/2addr v0, v2

    .line 64
    const/4 v2, 0x3

    .line 65
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    const-wide/32 v4, 0xf4240

    .line 80
    .line 81
    .line 82
    mul-long/2addr v2, v4

    .line 83
    add-long/2addr v0, v2

    .line 84
    const/4 v2, 0x4

    .line 85
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    const-wide/16 v4, 0x2710

    .line 100
    .line 101
    mul-long/2addr v2, v4

    .line 102
    add-long/2addr v0, v2

    .line 103
    return-wide v0
.end method

.method private static n(I)I
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Unknown alignment: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "SsaParser"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :pswitch_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :pswitch_2
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :pswitch_3
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :pswitch_4
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static o(I)I
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Unknown alignment: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "SsaParser"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return v0

    .line 29
    :pswitch_1
    const/4 p0, 0x2

    .line 30
    return p0

    .line 31
    :pswitch_2
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :pswitch_3
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :pswitch_4
    return v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static p(I)Landroid/text/Layout$Alignment;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Unknown alignment: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v1, "SsaParser"

    .line 23
    .line 24
    invoke-static {v1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 32
    .line 33
    return-object p0

    .line 34
    :pswitch_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_4
    return-object v0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public synthetic a([BII)Lh3/k;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lh3/r;->a(Lh3/s;[BII)Lh3/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b([BIILh3/s$b;Landroidx/media3/common/util/m;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    new-instance v4, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v6, v0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    .line 20
    .line 21
    add-int v7, v1, p3

    .line 22
    .line 23
    move-object/from16 v8, p1

    .line 24
    .line 25
    invoke-virtual {v6, v8, v7}, Landroidx/media3/common/util/j0;->U([BI)V

    .line 26
    .line 27
    .line 28
    iget-object v6, v0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    .line 29
    .line 30
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/j0;->W(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ll3/b;->g(Landroidx/media3/common/util/j0;)Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-boolean v6, v0, Ll3/b;->a:Z

    .line 40
    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    iget-object v6, v0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    .line 44
    .line 45
    invoke-direct {v0, v6, v1}, Ll3/b;->j(Landroidx/media3/common/util/j0;Ljava/nio/charset/Charset;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v6, v0, Ll3/b;->c:Landroidx/media3/common/util/j0;

    .line 49
    .line 50
    invoke-direct {v0, v6, v4, v5, v1}, Ll3/b;->i(Landroidx/media3/common/util/j0;Ljava/util/List;Ljava/util/List;Ljava/nio/charset/Charset;)V

    .line 51
    .line 52
    .line 53
    iget-wide v6, v2, Lh3/s$b;->a:J

    .line 54
    .line 55
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v1, v6, v8

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-boolean v1, v2, Lh3/s$b;->b:Z

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_0
    const/4 v6, 0x0

    .line 76
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-ge v6, v7, :cond_7

    .line 81
    .line 82
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    move-object v11, v7

    .line 87
    check-cast v11, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    if-eqz v6, :cond_2

    .line 96
    .line 97
    move-object v7, v4

    .line 98
    move-object/from16 v16, v5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    add-int/lit8 v7, v7, -0x1

    .line 106
    .line 107
    if-eq v6, v7, :cond_6

    .line 108
    .line 109
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Ljava/lang/Long;

    .line 114
    .line 115
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    add-int/lit8 v7, v6, 0x1

    .line 120
    .line 121
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Ljava/lang/Long;

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 128
    .line 129
    .line 130
    move-result-wide v14

    .line 131
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v16

    .line 141
    sub-long v14, v14, v16

    .line 142
    .line 143
    move-object v7, v4

    .line 144
    move-object/from16 v16, v5

    .line 145
    .line 146
    iget-wide v4, v2, Lh3/s$b;->a:J

    .line 147
    .line 148
    cmp-long v10, v4, v8

    .line 149
    .line 150
    if-eqz v10, :cond_4

    .line 151
    .line 152
    cmp-long v4, v12, v4

    .line 153
    .line 154
    if-ltz v4, :cond_3

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    if-eqz v1, :cond_5

    .line 158
    .line 159
    new-instance v4, Lh3/e;

    .line 160
    .line 161
    move-object v10, v4

    .line 162
    invoke-direct/range {v10 .. v15}, Lh3/e;-><init>(Ljava/util/List;JJ)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    :goto_2
    new-instance v4, Lh3/e;

    .line 170
    .line 171
    move-object v10, v4

    .line 172
    invoke-direct/range {v10 .. v15}, Lh3/e;-><init>(Ljava/util/List;JJ)V

    .line 173
    .line 174
    .line 175
    invoke-interface {v3, v4}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 179
    .line 180
    move-object v4, v7

    .line 181
    move-object/from16 v5, v16

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :cond_7
    if-eqz v1, :cond_8

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_8

    .line 201
    .line 202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Lh3/e;

    .line 207
    .line 208
    invoke-interface {v3, v2}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_8
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public synthetic reset()V
    .locals 0

    .line 1
    invoke-static {p0}, Lh3/r;->b(Lh3/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
