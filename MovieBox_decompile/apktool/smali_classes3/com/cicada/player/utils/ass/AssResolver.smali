.class public Lcom/cicada/player/utils/ass/AssResolver;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;,
        Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssResolver"

.field public static final TEXT_PATTERN:Ljava/lang/String; = "\\{[^\\{]+\\}"

.field public static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

.field private mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

.field private videoDisplayHeight:I

.field private videoDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\{[^\\{]+\\}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    .line 6
    .line 7
    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    .line 8
    .line 9
    new-instance v0, Lcom/cicada/player/utils/ass/TextViewPool;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    .line 15
    .line 16
    return-void
.end method

.method private convertRgbColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x6

    .line 7
    const/4 v3, 0x4

    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    if-ne v0, v4, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1
.end method

.method private fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;",
            "Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_d

    .line 8
    .line 9
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 14
    .line 15
    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "\\N"

    .line 18
    .line 19
    const-string v6, "\n"

    .line 20
    .line 21
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "\\n"

    .line 26
    .line 27
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iput-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontName:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 36
    .line 37
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    .line 38
    .line 39
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 44
    .line 45
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    if-ne v4, v5, :cond_0

    .line 49
    .line 50
    move v4, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move v4, v1

    .line 53
    :goto_1
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 54
    .line 55
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    .line 56
    .line 57
    if-ne v4, v5, :cond_1

    .line 58
    .line 59
    move v4, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move v4, v1

    .line 62
    :goto_2
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 63
    .line 64
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    .line 65
    .line 66
    if-ne v4, v5, :cond_2

    .line 67
    .line 68
    move v4, v5

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    move v4, v1

    .line 71
    :goto_3
    iput-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 72
    .line 73
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    .line 74
    .line 75
    if-ne v4, v5, :cond_3

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_3
    move v5, v1

    .line 79
    :goto_4
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 80
    .line 81
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    .line 82
    .line 83
    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    .line 84
    .line 85
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    .line 86
    .line 87
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    .line 92
    .line 93
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    .line 94
    .line 95
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v4

    .line 99
    iput-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    .line 100
    .line 101
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    .line 102
    .line 103
    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    .line 108
    .line 109
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    .line 110
    .line 111
    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    .line 116
    .line 117
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    .line 118
    .line 119
    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 124
    .line 125
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    .line 126
    .line 127
    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iput v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    .line 132
    .line 133
    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-nez v4, :cond_c

    .line 140
    .line 141
    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    if-eqz v4, :cond_c

    .line 148
    .line 149
    const-string v5, "primaryColour"

    .line 150
    .line 151
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_4

    .line 156
    .line 157
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    iput v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 168
    .line 169
    :cond_4
    const-string v5, "strikeOut"

    .line 170
    .line 171
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_5

    .line 176
    .line 177
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 188
    .line 189
    :cond_5
    const-string v5, "underline"

    .line 190
    .line 191
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    if-eqz v6, :cond_6

    .line 196
    .line 197
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 208
    .line 209
    :cond_6
    const-string v5, "italic"

    .line 210
    .line 211
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_7

    .line 216
    .line 217
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 228
    .line 229
    :cond_7
    const-string v5, "bold"

    .line 230
    .line 231
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_8

    .line 236
    .line 237
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    iput-boolean v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 248
    .line 249
    :cond_8
    const-string v5, "fontSize"

    .line 250
    .line 251
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_9

    .line 256
    .line 257
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    check-cast v5, Ljava/lang/Double;

    .line 262
    .line 263
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    invoke-direct {p0, v5, v6}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 268
    .line 269
    .line 270
    move-result-wide v5

    .line 271
    iput-wide v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 272
    .line 273
    :cond_9
    const-string v5, "fontName"

    .line 274
    .line 275
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_a

    .line 280
    .line 281
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Ljava/lang/String;

    .line 286
    .line 287
    iput-object v5, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 288
    .line 289
    :cond_a
    const-string v3, "posX"

    .line 290
    .line 291
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_b

    .line 296
    .line 297
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/Double;

    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 304
    .line 305
    .line 306
    move-result-wide v5

    .line 307
    iput-wide v5, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    .line 308
    .line 309
    :cond_b
    const-string v3, "posY"

    .line 310
    .line 311
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_c

    .line 316
    .line 317
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    check-cast v3, Ljava/lang/Double;

    .line 322
    .line 323
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 324
    .line 325
    .line 326
    move-result-wide v3

    .line 327
    iput-wide v3, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    .line 328
    .line 329
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :cond_d
    return-void
.end method

.method private getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_7

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v1, v4

    .line 31
    iget-object v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    .line 37
    .line 38
    const-wide/16 v6, 0x0

    .line 39
    .line 40
    cmpl-double v4, v4, v6

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    const/16 v6, 0x21

    .line 44
    .line 45
    if-lez v4, :cond_1

    .line 46
    .line 47
    new-instance v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    .line 48
    .line 49
    invoke-direct {v4}, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontName:Ljava/lang/String;

    .line 55
    .line 56
    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 57
    .line 58
    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontSize:D

    .line 59
    .line 60
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 61
    .line 62
    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mPrimaryColour:I

    .line 63
    .line 64
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    .line 65
    .line 66
    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mSecondaryColour:I

    .line 67
    .line 68
    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 69
    .line 70
    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mBold:Z

    .line 71
    .line 72
    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 73
    .line 74
    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mItalic:Z

    .line 75
    .line 76
    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 77
    .line 78
    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mUnderline:Z

    .line 79
    .line 80
    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 81
    .line 82
    iput-boolean v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mStrikeOut:Z

    .line 83
    .line 84
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    .line 85
    .line 86
    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineColour:I

    .line 87
    .line 88
    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    .line 89
    .line 90
    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    .line 91
    .line 92
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    .line 93
    .line 94
    if-ne v7, v5, :cond_0

    .line 95
    .line 96
    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    .line 97
    .line 98
    iput-wide v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowWidth:D

    .line 99
    .line 100
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    .line 101
    .line 102
    iput v7, v4, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowColor:I

    .line 103
    .line 104
    :cond_0
    new-instance v7, Lcom/cicada/player/utils/ass/BorderedSpan;

    .line 105
    .line 106
    invoke-direct {v7, v4}, Lcom/cicada/player/utils/ass/BorderedSpan;-><init>(Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v7, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    .line 111
    .line 112
    :cond_1
    new-instance v4, Landroid/text/style/TypefaceSpan;

    .line 113
    .line 114
    iget-object v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct {v4, v7}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    .line 121
    .line 122
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 123
    .line 124
    iget-wide v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 125
    .line 126
    double-to-int v7, v7

    .line 127
    invoke-direct {v4, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .line 132
    .line 133
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 134
    .line 135
    iget v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 136
    .line 137
    invoke-direct {v4, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    .line 142
    .line 143
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 144
    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    iget-boolean v7, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 148
    .line 149
    if-eqz v7, :cond_2

    .line 150
    .line 151
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 152
    .line 153
    const/4 v5, 0x3

    .line 154
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    if-eqz v4, :cond_3

    .line 162
    .line 163
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 164
    .line 165
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 173
    .line 174
    if-eqz v4, :cond_4

    .line 175
    .line 176
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 177
    .line 178
    const/4 v5, 0x2

    .line 179
    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 183
    .line 184
    .line 185
    :cond_4
    :goto_1
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 186
    .line 187
    if-eqz v4, :cond_5

    .line 188
    .line 189
    new-instance v4, Landroid/text/style/UnderlineSpan;

    .line 190
    .line 191
    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 195
    .line 196
    .line 197
    :cond_5
    iget-boolean v4, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 198
    .line 199
    if-eqz v4, :cond_6

    .line 200
    .line 201
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    .line 202
    .line 203
    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 207
    .line 208
    .line 209
    :cond_6
    iget-object v3, v3, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    add-int/2addr v2, v3

    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_7
    return-object v0
.end method

.method private getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmpl-double v5, v1, v3

    .line 12
    .line 13
    if-gtz v5, :cond_1

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    .line 16
    .line 17
    cmpl-double v3, v5, v3

    .line 18
    .line 19
    if-lez v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 23
    .line 24
    const/16 p3, 0xf

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    const/16 v2, 0xb

    .line 29
    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    const/16 v4, 0xe

    .line 33
    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    packed-switch p2, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_4
    const/16 p2, 0xd

    .line 75
    .line 76
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_5
    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_6
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_7
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_8
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    .line 108
    .line 109
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 110
    .line 111
    iget p2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    .line 112
    .line 113
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 114
    .line 115
    iget p1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    .line 116
    .line 117
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_1
    :goto_1
    iget v3, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 122
    .line 123
    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    .line 124
    .line 125
    .line 126
    move-result-wide v1

    .line 127
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    .line 128
    .line 129
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 130
    .line 131
    .line 132
    move-result-wide v4

    .line 133
    const/high16 p1, 0x40000000    # 2.0f

    .line 134
    .line 135
    packed-switch v3, :pswitch_data_1

    .line 136
    .line 137
    .line 138
    div-float/2addr p2, p1

    .line 139
    float-to-double p1, p2

    .line 140
    sub-double/2addr v1, p1

    .line 141
    double-to-int p1, v1

    .line 142
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 143
    .line 144
    float-to-double p1, p3

    .line 145
    sub-double/2addr v4, p1

    .line 146
    double-to-int p1, v4

    .line 147
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :pswitch_9
    float-to-double p1, p2

    .line 151
    sub-double/2addr v1, p1

    .line 152
    double-to-int p1, v1

    .line 153
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 154
    .line 155
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide p1

    .line 159
    double-to-int p1, p1

    .line 160
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :pswitch_a
    div-float/2addr p2, p1

    .line 164
    float-to-double p1, p2

    .line 165
    sub-double/2addr v1, p1

    .line 166
    double-to-int p1, v1

    .line 167
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 168
    .line 169
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 170
    .line 171
    .line 172
    move-result-wide p1

    .line 173
    double-to-int p1, p1

    .line 174
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_b
    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    double-to-int p1, p1

    .line 182
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 183
    .line 184
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    .line 185
    .line 186
    .line 187
    move-result-wide p1

    .line 188
    double-to-int p1, p1

    .line 189
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :pswitch_c
    float-to-double v6, p2

    .line 193
    sub-double/2addr v1, v6

    .line 194
    double-to-int p2, v1

    .line 195
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 196
    .line 197
    div-float/2addr p3, p1

    .line 198
    float-to-double p1, p3

    .line 199
    sub-double/2addr v4, p1

    .line 200
    double-to-int p1, v4

    .line 201
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :pswitch_d
    div-float/2addr p2, p1

    .line 205
    float-to-double v6, p2

    .line 206
    sub-double/2addr v1, v6

    .line 207
    double-to-int p2, v1

    .line 208
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 209
    .line 210
    div-float/2addr p3, p1

    .line 211
    float-to-double p1, p3

    .line 212
    sub-double/2addr v4, p1

    .line 213
    double-to-int p1, v4

    .line 214
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :pswitch_e
    double-to-int p2, v1

    .line 218
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 219
    .line 220
    div-float/2addr p3, p1

    .line 221
    float-to-double p1, p3

    .line 222
    sub-double/2addr v4, p1

    .line 223
    double-to-int p1, v4

    .line 224
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :pswitch_f
    float-to-double p1, p2

    .line 228
    sub-double/2addr v1, p1

    .line 229
    double-to-int p1, v1

    .line 230
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 231
    .line 232
    float-to-double p1, p3

    .line 233
    sub-double/2addr v4, p1

    .line 234
    double-to-int p1, v4

    .line 235
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :pswitch_10
    div-float/2addr p2, p1

    .line 239
    float-to-double p1, p2

    .line 240
    sub-double/2addr v1, p1

    .line 241
    double-to-int p1, v1

    .line 242
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 243
    .line 244
    float-to-double p1, p3

    .line 245
    sub-double/2addr v4, p1

    .line 246
    double-to-int p1, v4

    .line 247
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :pswitch_11
    double-to-int p1, v1

    .line 251
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 252
    .line 253
    float-to-double p1, p3

    .line 254
    sub-double/2addr v4, p1

    .line 255
    double-to-int p1, v4

    .line 256
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 257
    .line 258
    :goto_2
    return-object v0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    .locals 3

    .line 1
    new-instance v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    .line 5
    .line 6
    .line 7
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    .line 8
    .line 9
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 10
    .line 11
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    .line 12
    .line 13
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    .line 14
    .line 15
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    .line 16
    .line 17
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    .line 18
    .line 19
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    .line 20
    .line 21
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    .line 22
    .line 23
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginL:I

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    .line 28
    .line 29
    :cond_0
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginR:I

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    .line 34
    .line 35
    :cond_1
    iget p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginV:I

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iput p1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    .line 40
    .line 41
    :cond_2
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    .line 42
    .line 43
    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    .line 44
    .line 45
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    .line 46
    .line 47
    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    .line 48
    .line 49
    iget-wide p1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    .line 50
    .line 51
    iput-wide p1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    .line 52
    .line 53
    return-object v0
.end method

.method private parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "{"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "}"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    add-int/2addr v0, v2

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "\\\\"

    .line 20
    .line 21
    const-string v1, "\\$"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "$"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_b

    .line 34
    .line 35
    new-instance v0, Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    array-length v1, p1

    .line 45
    const/4 v3, 0x0

    .line 46
    move v4, v3

    .line 47
    :goto_0
    if-ge v4, v1, :cond_a

    .line 48
    .line 49
    aget-object v5, p1, v4

    .line 50
    .line 51
    const-string v6, "fn"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, 0x2

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "fontName"

    .line 69
    .line 70
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_0
    const-string v6, "fs"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v6, "fontSize"

    .line 92
    .line 93
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_1
    const-string v6, "b"

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_2

    .line 109
    .line 110
    const-string v6, "b1"

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v6, "bold"

    .line 121
    .line 122
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_2
    const-string v6, "i"

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_3

    .line 134
    .line 135
    const-string v6, "i1"

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    const-string v6, "italic"

    .line 146
    .line 147
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_3
    const-string v6, "u"

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_4

    .line 159
    .line 160
    const-string v6, "u1"

    .line 161
    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v6, "underline"

    .line 171
    .line 172
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_4
    const-string v6, "s"

    .line 178
    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_5

    .line 184
    .line 185
    const-string v6, "s1"

    .line 186
    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    const-string v6, "strikeOut"

    .line 196
    .line 197
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto/16 :goto_3

    .line 201
    .line 202
    :cond_5
    const-string v6, "c&H"

    .line 203
    .line 204
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    const/4 v8, 0x4

    .line 209
    if-nez v7, :cond_7

    .line 210
    .line 211
    const-string v7, "1c&H"

    .line 212
    .line 213
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_6

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_6
    const-string v6, "pos"

    .line 221
    .line 222
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    if-eqz v6, :cond_9

    .line 227
    .line 228
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    sub-int/2addr v6, v2

    .line 233
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    const-string v6, ","

    .line 238
    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    aget-object v6, v5, v3

    .line 244
    .line 245
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    const-string v7, "posX"

    .line 250
    .line 251
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    aget-object v5, v5, v2

    .line 255
    .line 256
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    const-string v6, "posY"

    .line 261
    .line 262
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_7
    :goto_1
    const-string v7, "&"

    .line 267
    .line 268
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    const-string v7, "#"

    .line 285
    .line 286
    if-eqz v6, :cond_8

    .line 287
    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const/4 v7, 0x3

    .line 297
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-direct {p0, v5}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    goto :goto_2

    .line 317
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-direct {p0, v5}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v5

    .line 344
    :goto_2
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    const-string v6, "primaryColour"

    .line 353
    .line 354
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    :catch_0
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 358
    .line 359
    goto/16 :goto_0

    .line 360
    .line 361
    :cond_a
    return-object v0

    .line 362
    :cond_b
    const/4 p1, 0x0

    .line 363
    return-object p1
.end method

.method private rgbaToArgb(I)I
    .locals 5

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    rsub-int v0, v0, 0xff

    .line 4
    .line 5
    ushr-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "#"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-object v0, v3, v4

    .line 26
    .line 27
    const-string v0, "%02x"

    .line 28
    .line 29
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-array v0, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    aput-object p1, v0, v4

    .line 43
    .line 44
    const-string p1, "%06x"

    .line 45
    .line 46
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method

.method private scaleXSize(D)D
    .locals 4

    .line 1
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 6
    .line 7
    iget v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    int-to-double v2, v0

    .line 12
    mul-double/2addr p1, v2

    .line 13
    int-to-double v0, v1

    .line 14
    div-double/2addr p1, v0

    .line 15
    :cond_0
    return-wide p1
.end method

.method private scaleYSize(D)D
    .locals 4

    .line 1
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 6
    .line 7
    iget v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    int-to-double v2, v0

    .line 12
    mul-double/2addr p1, v2

    .line 13
    int-to-double v0, v1

    .line 14
    div-double/2addr p1, v0

    .line 15
    :cond_0
    return-wide p1
.end method

.method private splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssDialogue;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_3

    .line 20
    .line 21
    iget-object p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "\\{[^\\{]+\\}"

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    array-length v4, p1

    .line 32
    if-ge v2, v4, :cond_4

    .line 33
    .line 34
    aget-object v4, p1, v2

    .line 35
    .line 36
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    new-instance v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 43
    .line 44
    invoke-direct {v4, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    .line 45
    .line 46
    .line 47
    aget-object v5, p1, v2

    .line 48
    .line 49
    iput-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move-object v4, v3

    .line 53
    :goto_1
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    iput-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    .line 62
    .line 63
    :cond_1
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    new-instance v1, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 72
    .line 73
    invoke-direct {v1, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p1, v1, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_4
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
.end method

.method public dismiss(Lcom/cicada/player/utils/ass/AssTextView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;->recycle(Lcom/cicada/player/utils/ass/AssTextView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAssDialog(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssTextView;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/TextViewPool;->obtain()Lcom/cicada/player/utils/ass/AssTextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssTextView;->setContent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssDialogue(Lcom/cicada/player/utils/ass/AssHeader;Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssDialogue;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mStyle:Ljava/lang/String;

    .line 21
    .line 22
    const-string v3, "*"

    .line 23
    .line 24
    const-string v4, ""

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/cicada/player/utils/ass/AssStyle;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    .line 37
    .line 38
    const-string v3, "{\\p0}"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-direct {p0, p1, v1}, Lcom/cicada/player/utils/ass/AssResolver;->getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, v1, v2, p1}, Lcom/cicada/player/utils/ass/AssResolver;->fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v2}, Lcom/cicada/player/utils/ass/AssResolver;->getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 65
    .line 66
    .line 67
    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    .line 68
    .line 69
    double-to-float v1, v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 71
    .line 72
    .line 73
    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    .line 74
    .line 75
    double-to-float v1, v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 77
    .line 78
    .line 79
    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    .line 80
    .line 81
    double-to-float v1, v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 83
    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    int-to-float v1, v1

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    int-to-float v2, v2

    .line 107
    invoke-direct {p0, p1, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    float-to-int v1, v1

    .line 112
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 113
    .line 114
    float-to-int v1, v2

    .line 115
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    const/16 p1, 0x11

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public setAssHeaders(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssHeader(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 6
    .line 7
    return-void
.end method

.method public setFontTypeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setVideoDisplaySize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    .line 2
    .line 3
    iput p2, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    .line 4
    .line 5
    return-void
.end method
