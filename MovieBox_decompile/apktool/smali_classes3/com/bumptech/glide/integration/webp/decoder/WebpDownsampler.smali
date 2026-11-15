.class public final Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final DENSITY_PRECISION_MULTIPLIER:I = 0x3b9aca00

.field public static final DISABLE_DECODER:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

.field private static final MARK_POSITION:I = 0xa00000

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WebpDownsampler"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->DISABLE_DECODER:Lcom/bumptech/glide/load/Option;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler$1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler$1;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->parsers:Ljava/util/List;

    .line 5
    .line 6
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 21
    .line 22
    invoke-static {p4}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 29
    .line 30
    return-void
.end method

.method private static adjustTargetDensityForError(D)I
    .locals 3

    .line 1
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    mul-double/2addr v0, p0

    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->round(D)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    int-to-float v1, v0

    .line 12
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 13
    .line 14
    .line 15
    div-float/2addr v1, v2

    .line 16
    float-to-double v1, v1

    .line 17
    div-double/2addr p0, v1

    .line 18
    int-to-double v0, v0

    .line 19
    mul-double/2addr p0, v0

    .line 20
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->round(D)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method private calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p3, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    .line 2
    .line 3
    if-eq p2, p3, :cond_4

    .line 4
    .line 5
    :try_start_0
    iget-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->parsers:Ljava/util/List;

    .line 6
    .line 7
    iget-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 8
    .line 9
    invoke-static {p3, p1, p4}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p1, "WebpDownsampler"

    .line 19
    .line 20
    const/4 p3, 0x3

    .line 21
    invoke-static {p1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string p3, "Cannot determine whether the image has alpha or not from header, format "

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 47
    .line 48
    :goto_1
    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 49
    .line 50
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 55
    .line 56
    if-eq p1, p2, :cond_2

    .line 57
    .line 58
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 59
    .line 60
    if-ne p1, p2, :cond_3

    .line 61
    .line 62
    :cond_2
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 64
    .line 65
    :cond_3
    return-void

    .line 66
    :cond_4
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 67
    .line 68
    iput-object p1, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 69
    .line 70
    return-void
.end method

.method static calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p5

    .line 6
    .line 7
    move/from16 v3, p6

    .line 8
    .line 9
    move/from16 v4, p7

    .line 10
    .line 11
    move/from16 v5, p8

    .line 12
    .line 13
    move/from16 v6, p9

    .line 14
    .line 15
    move-object/from16 v7, p10

    .line 16
    .line 17
    if-lez v3, :cond_12

    .line 18
    .line 19
    if-gtz v4, :cond_0

    .line 20
    .line 21
    goto/16 :goto_9

    .line 22
    .line 23
    :cond_0
    const/16 v8, 0x5a

    .line 24
    .line 25
    if-eq v2, v8, :cond_2

    .line 26
    .line 27
    const/16 v8, 0x10e

    .line 28
    .line 29
    if-ne v2, v8, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :goto_1
    const/4 v8, 0x0

    .line 42
    cmpg-float v8, v2, v8

    .line 43
    .line 44
    const-string v9, "], target: ["

    .line 45
    .line 46
    const-string v10, "x"

    .line 47
    .line 48
    if-lez v8, :cond_11

    .line 49
    .line 50
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    if-eqz v8, :cond_10

    .line 55
    .line 56
    int-to-float v11, v3

    .line 57
    mul-float v12, v2, v11

    .line 58
    .line 59
    float-to-double v12, v12

    .line 60
    invoke-static {v12, v13}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->round(D)I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    int-to-float v13, v4

    .line 65
    mul-float v14, v2, v13

    .line 66
    .line 67
    float-to-double v14, v14

    .line 68
    invoke-static {v14, v15}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->round(D)I

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    div-int v12, v3, v12

    .line 73
    .line 74
    div-int v14, v4, v14

    .line 75
    .line 76
    sget-object v15, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 77
    .line 78
    if-ne v8, v15, :cond_3

    .line 79
    .line 80
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    const/4 v14, 0x1

    .line 94
    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    if-ne v8, v15, :cond_4

    .line 99
    .line 100
    int-to-float v8, v12

    .line 101
    const/high16 v15, 0x3f800000    # 1.0f

    .line 102
    .line 103
    div-float/2addr v15, v2

    .line 104
    cmpg-float v8, v8, v15

    .line 105
    .line 106
    if-gez v8, :cond_4

    .line 107
    .line 108
    shl-int/lit8 v12, v12, 0x1

    .line 109
    .line 110
    :cond_4
    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 111
    .line 112
    sget-object v8, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 113
    .line 114
    if-ne v0, v8, :cond_5

    .line 115
    .line 116
    const/16 v0, 0x8

    .line 117
    .line 118
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    int-to-float v0, v0

    .line 123
    div-float/2addr v11, v0

    .line 124
    float-to-double v14, v11

    .line 125
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    .line 126
    .line 127
    .line 128
    move-result-wide v14

    .line 129
    double-to-int v11, v14

    .line 130
    div-float/2addr v13, v0

    .line 131
    float-to-double v13, v13

    .line 132
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    .line 133
    .line 134
    .line 135
    move-result-wide v13

    .line 136
    double-to-int v0, v13

    .line 137
    div-int/lit8 v13, v12, 0x8

    .line 138
    .line 139
    if-lez v13, :cond_d

    .line 140
    .line 141
    div-int/2addr v11, v13

    .line 142
    div-int/2addr v0, v13

    .line 143
    goto :goto_7

    .line 144
    :cond_5
    sget-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 145
    .line 146
    if-eq v0, v14, :cond_c

    .line 147
    .line 148
    sget-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 149
    .line 150
    if-ne v0, v14, :cond_6

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_6
    sget-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 154
    .line 155
    if-eq v0, v14, :cond_a

    .line 156
    .line 157
    sget-object v14, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 158
    .line 159
    if-ne v0, v14, :cond_7

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    rem-int v0, v3, v12

    .line 163
    .line 164
    if-nez v0, :cond_8

    .line 165
    .line 166
    rem-int v0, v4, v12

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    :cond_8
    move-object/from16 v0, p1

    .line 171
    .line 172
    move-object/from16 v11, p2

    .line 173
    .line 174
    move-object/from16 v13, p3

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_9
    div-int v11, v3, v12

    .line 178
    .line 179
    div-int v0, v4, v12

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :goto_3
    invoke-static {v0, v7, v11, v13}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const/4 v8, 0x0

    .line 187
    aget v11, v0, v8

    .line 188
    .line 189
    const/4 v13, 0x1

    .line 190
    aget v0, v0, v13

    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .line 195
    const/16 v14, 0x18

    .line 196
    .line 197
    if-lt v0, v14, :cond_b

    .line 198
    .line 199
    int-to-float v0, v12

    .line 200
    div-float/2addr v11, v0

    .line 201
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    div-float/2addr v13, v0

    .line 206
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    goto :goto_7

    .line 211
    :cond_b
    int-to-float v0, v12

    .line 212
    div-float/2addr v11, v0

    .line 213
    float-to-double v14, v11

    .line 214
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 215
    .line 216
    .line 217
    move-result-wide v14

    .line 218
    double-to-int v11, v14

    .line 219
    div-float/2addr v13, v0

    .line 220
    float-to-double v13, v13

    .line 221
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 222
    .line 223
    .line 224
    move-result-wide v13

    .line 225
    :goto_5
    double-to-int v0, v13

    .line 226
    goto :goto_7

    .line 227
    :cond_c
    :goto_6
    int-to-float v0, v12

    .line 228
    div-float/2addr v11, v0

    .line 229
    float-to-double v14, v11

    .line 230
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    .line 231
    .line 232
    .line 233
    move-result-wide v14

    .line 234
    double-to-int v11, v14

    .line 235
    div-float/2addr v13, v0

    .line 236
    float-to-double v13, v13

    .line 237
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    .line 238
    .line 239
    .line 240
    move-result-wide v13

    .line 241
    goto :goto_5

    .line 242
    :cond_d
    :goto_7
    invoke-virtual {v1, v11, v0, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    float-to-double v13, v1

    .line 247
    invoke-static {v13, v14}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->adjustTargetDensityForError(D)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 252
    .line 253
    const v1, 0x3b9aca00

    .line 254
    .line 255
    .line 256
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 257
    .line 258
    invoke-static/range {p10 .. p10}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_e

    .line 263
    .line 264
    const/4 v1, 0x1

    .line 265
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_e
    const/4 v1, 0x0

    .line 269
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 270
    .line 271
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 272
    .line 273
    :goto_8
    const/4 v1, 0x2

    .line 274
    const-string v8, "WebpDownsampler"

    .line 275
    .line 276
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_f

    .line 281
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v15, "Calculate scaling, source: ["

    .line 288
    .line 289
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string v3, "], power of two scaled: ["

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, "], exact scale factor: "

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string v0, ", power of 2 sample size: "

    .line 336
    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, ", adjusted scale factor: "

    .line 344
    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, ", target density: "

    .line 352
    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 357
    .line 358
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, ", density: "

    .line 362
    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 367
    .line 368
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_f
    return-void

    .line 379
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 380
    .line 381
    const-string v1, "Cannot round with null rounding"

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 388
    .line 389
    new-instance v7, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v8, "Cannot scale with factor: "

    .line 395
    .line 396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v2, " from: "

    .line 403
    .line 404
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    const-string v1, ", source: ["

    .line 411
    .line 412
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string v1, "]"

    .line 437
    .line 438
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v1

    .line 445
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    throw v0

    .line 449
    :cond_12
    :goto_9
    return-void
.end method

.method private decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v5, p9

    .line 8
    .line 9
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v20

    .line 13
    iget-object v0, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    .line 15
    invoke-static {v7, v6, v5, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    aget v4, v0, v1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget v3, v0, v2

    .line 24
    .line 25
    iget-object v2, v6, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    if-eq v4, v0, :cond_1

    .line 29
    .line 30
    if-ne v3, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move/from16 v22, p5

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move/from16 v22, v1

    .line 37
    .line 38
    :goto_1
    iget-object v0, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->parsers:Ljava/util/List;

    .line 39
    .line 40
    iget-object v1, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 41
    .line 42
    invoke-static {v0, v7, v1}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    invoke-static {v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->isExifOrientationRequired(I)Z

    .line 51
    .line 52
    .line 53
    move-result v23

    .line 54
    const/high16 v0, -0x80000000

    .line 55
    .line 56
    move/from16 v15, p6

    .line 57
    .line 58
    move/from16 v13, p7

    .line 59
    .line 60
    if-ne v15, v0, :cond_2

    .line 61
    .line 62
    move/from16 v24, v4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move/from16 v24, v15

    .line 66
    .line 67
    :goto_2
    if-ne v13, v0, :cond_3

    .line 68
    .line 69
    move/from16 v25, v3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    move/from16 v25, v13

    .line 73
    .line 74
    :goto_3
    iget-object v0, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->parsers:Ljava/util/List;

    .line 75
    .line 76
    iget-object v9, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 77
    .line 78
    invoke-static {v0, v7, v9}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v12, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 83
    .line 84
    move-object v9, v0

    .line 85
    move-object/from16 v10, p1

    .line 86
    .line 87
    move-object/from16 v11, p9

    .line 88
    .line 89
    move-object/from16 v13, p3

    .line 90
    .line 91
    move v15, v4

    .line 92
    move/from16 v16, v3

    .line 93
    .line 94
    move/from16 v17, v24

    .line 95
    .line 96
    move/from16 v18, v25

    .line 97
    .line 98
    move-object/from16 v19, p2

    .line 99
    .line 100
    invoke-static/range {v9 .. v19}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->calculateScaling(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;Ljava/io/InputStream;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;IIIIILandroid/graphics/BitmapFactory$Options;)V

    .line 101
    .line 102
    .line 103
    move-object/from16 v0, p0

    .line 104
    .line 105
    move v15, v1

    .line 106
    move-object/from16 v1, p1

    .line 107
    .line 108
    move-object v11, v2

    .line 109
    move-object/from16 v2, p4

    .line 110
    .line 111
    move v10, v3

    .line 112
    move/from16 v3, v22

    .line 113
    .line 114
    move v12, v4

    .line 115
    move/from16 v4, v23

    .line 116
    .line 117
    move-object v13, v5

    .line 118
    move-object/from16 v5, p2

    .line 119
    .line 120
    move-object v14, v6

    .line 121
    move/from16 v6, v24

    .line 122
    .line 123
    move/from16 p3, v15

    .line 124
    .line 125
    move-object v15, v7

    .line 126
    move/from16 v7, v25

    .line 127
    .line 128
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->calculateConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;ZZLandroid/graphics/BitmapFactory$Options;II)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v8, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v1, 0x2

    .line 136
    const-string v2, "WebpDownsampler"

    .line 137
    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    if-eqz p8, :cond_4

    .line 141
    .line 142
    move/from16 v4, v24

    .line 143
    .line 144
    move/from16 v5, v25

    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->isScaling(Landroid/graphics/BitmapFactory$Options;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    .line 154
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 155
    .line 156
    int-to-float v0, v0

    .line 157
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 158
    .line 159
    int-to-float v3, v3

    .line 160
    div-float/2addr v0, v3

    .line 161
    goto :goto_4

    .line 162
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 163
    .line 164
    :goto_4
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 165
    .line 166
    int-to-float v4, v12

    .line 167
    int-to-float v5, v3

    .line 168
    div-float/2addr v4, v5

    .line 169
    float-to-double v6, v4

    .line 170
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 171
    .line 172
    .line 173
    move-result-wide v6

    .line 174
    double-to-int v4, v6

    .line 175
    int-to-float v6, v10

    .line 176
    div-float/2addr v6, v5

    .line 177
    float-to-double v5, v6

    .line 178
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v5

    .line 182
    double-to-int v5, v5

    .line 183
    int-to-float v4, v4

    .line 184
    mul-float/2addr v4, v0

    .line 185
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    int-to-float v5, v5

    .line 190
    mul-float/2addr v5, v0

    .line 191
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_6

    .line 200
    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v7, "Calculated target ["

    .line 207
    .line 208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v7, "x"

    .line 215
    .line 216
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v9, "] for source ["

    .line 223
    .line 224
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v7, "], sampleSize: "

    .line 237
    .line 238
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v3, ", targetDensity: "

    .line 245
    .line 246
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 250
    .line 251
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v3, ", density: "

    .line 255
    .line 256
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 260
    .line 261
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v3, ", density multiplier: "

    .line 265
    .line 266
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_6
    :goto_5
    if-lez v4, :cond_7

    .line 280
    .line 281
    if-lez v5, :cond_7

    .line 282
    .line 283
    iget-object v0, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 284
    .line 285
    invoke-static {v14, v0, v4, v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V

    .line 286
    .line 287
    .line 288
    :cond_7
    iget-object v0, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 289
    .line 290
    invoke-static {v15, v14, v13, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-object v3, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 295
    .line 296
    invoke-interface {v13, v3, v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_8

    .line 304
    .line 305
    move v9, v12

    .line 306
    move-object/from16 v12, p2

    .line 307
    .line 308
    move-object v13, v0

    .line 309
    move/from16 v14, p6

    .line 310
    .line 311
    move/from16 v1, p3

    .line 312
    .line 313
    move/from16 v15, p7

    .line 314
    .line 315
    move-wide/from16 v16, v20

    .line 316
    .line 317
    invoke-static/range {v9 .. v17}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V

    .line 318
    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_8
    move/from16 v1, p3

    .line 322
    .line 323
    :goto_6
    if-eqz v0, :cond_9

    .line 324
    .line 325
    iget-object v2, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 326
    .line 327
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 328
    .line 329
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 330
    .line 331
    .line 332
    iget-object v2, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 333
    .line 334
    invoke-static {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-nez v2, :cond_a

    .line 343
    .line 344
    iget-object v2, v8, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 345
    .line 346
    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 347
    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_9
    const/4 v1, 0x0

    .line 351
    :cond_a
    :goto_7
    return-object v1
.end method

.method private static decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0xa00000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;->onObtainBounds()V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 15
    .line 16
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 17
    .line 18
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :try_start_0
    invoke-static {p0, v3, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    .line 38
    .line 39
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object p2

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v4

    .line 50
    :try_start_1
    invoke-static {v4, v0, v1, v2, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "WebpDownsampler"

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    invoke-interface {p3, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 70
    .line 71
    .line 72
    iput-object v3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 73
    .line 74
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :catch_1
    :try_start_3
    throw v0

    .line 87
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    :goto_1
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getBitmapDrawableLock()Ljava/util/concurrent/locks/Lock;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, " ("

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ")"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "["

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "x"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "] "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 1
    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 5
    .line 6
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 12
    .line 13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-object v2

    .line 29
    :catchall_1
    move-exception v2

    .line 30
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :try_start_4
    throw v2

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    throw v1
.end method

.method private static getDimensions(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Landroid/graphics/Bitmap;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 9
    .line 10
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 11
    .line 12
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 13
    .line 14
    filled-new-array {p0, p1}, [I

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static isScaling(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 6
    .line 7
    if-lez p0, :cond_0

    .line 8
    .line 9
    if-eq v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private static logDecode(IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;IIJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Decoded "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p4, " from ["

    .line 19
    .line 20
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, "x"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "] "

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " with inBitmap "

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " for ["

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p0, "], sample size: "

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, ", density: "

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, ", target density: "

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget p0, p3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p0, ", thread: "

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string p0, ", duration: "

    .line 115
    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {p7, p8}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 120
    .line 121
    .line 122
    move-result-wide p0

    .line 123
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    const-string p1, "WebpDownsampler"

    .line 131
    .line 132
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private static newIoExceptionForInBitmapAssertion(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Exception decoding bitmap, outWidth: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, ", outHeight: "

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ", outMimeType: "

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", inBitmap: "

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getInBitmapString(Landroid/graphics/BitmapFactory$Options;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    .line 16
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 17
    .line 18
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 19
    .line 20
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 21
    .line 22
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 23
    .line 24
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 29
    .line 30
    return-void
.end method

.method private static round(D)I
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 2
    .line 3
    add-double/2addr p0, v0

    .line 4
    double-to-int p0, p0

    .line 5
    return p0
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    invoke-static {}, Landroidx/compose/ui/graphics/p0;->a()Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 17
    .line 18
    invoke-interface {p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 23
    .line 24
    return-void
.end method

.method private shouldUsePool(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v5, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->EMPTY_CALLBACKS:Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/io/InputStream;IILcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p4

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    const-string v2, "You must provide an InputStream that supports mark()"

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 3
    iget-object v1, v11, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    const/high16 v2, 0x10000

    const-class v12, [B

    invoke-interface {v1, v2, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 4
    invoke-static {}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 5
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 6
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/bumptech/glide/load/DecodeFormat;

    .line 7
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->DOWNSAMPLE_STRATEGY:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    .line 8
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 9
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    .line 10
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p5

    .line 11
    :try_start_0
    invoke-direct/range {v1 .. v10}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->decodeFromWrappedStreams(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;Lcom/bumptech/glide/load/DecodeFormat;ZIIZLcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    iget-object v1, v11, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v14}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 14
    iget-object v1, v11, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v13, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v14}, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 16
    iget-object v1, v11, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {v1, v13, v12}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    throw v0
.end method

.method public handles(Ljava/io/InputStream;Lcom/bumptech/glide/load/Options;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->DISABLE_DECODER:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->sIsExtendedWebpSupported:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {p1, p2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->getType(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->isStaticWebpType(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public handles(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/Options;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDownsampler;->DISABLE_DECODER:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->sIsExtendedWebpSupported:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->getType(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->isStaticWebpType(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
