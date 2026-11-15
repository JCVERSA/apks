.class public final Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J,\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0013H\u0014J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u0016\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;",
        "tl",
        "",
        "tr",
        "br",
        "bl",
        "(FFFF)V",
        "ID",
        "",
        "kotlin.jvm.PlatformType",
        "radius",
        "",
        "[Ljava/lang/Float;",
        "equals",
        "",
        "o",
        "",
        "hashCode",
        "",
        "transform",
        "Landroid/graphics/Bitmap;",
        "pool",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
        "source",
        "outWidth",
        "outHeight",
        "updateDiskCacheKey",
        "",
        "messageDigest",
        "Ljava/security/MessageDigest;",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ID:Ljava/lang/String;

.field private final radius:[Ljava/lang/Float;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Ljava/lang/Float;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x0

    .line 22
    aput-object p1, v0, v1

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x1

    .line 29
    aput-object p1, v0, p2

    .line 30
    .line 31
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x2

    .line 36
    aput-object p1, v0, p2

    .line 37
    .line 38
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x3

    .line 43
    aput-object p1, v0, p2

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 6
    .line 7
    check-cast p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string p3, "pool"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "source"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 20
    .line 21
    invoke-interface {p1, p3, p4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p3, "pool[source.width, sourc\u2026 Bitmap.Config.ARGB_8888]"

    .line 26
    .line 27
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance p3, Landroid/graphics/Canvas;

    .line 31
    .line 32
    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    new-instance p4, Landroid/graphics/Paint;

    .line 36
    .line 37
    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 41
    .line 42
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 43
    .line 44
    invoke-direct {v0, p2, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 48
    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Landroid/graphics/RectF;

    .line 55
    .line 56
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-float v1, v1

    .line 61
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    int-to-float v2, v2

    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    aget-object v1, v1, v2

    .line 74
    .line 75
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x2

    .line 83
    div-int/2addr v4, v5

    .line 84
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    div-int/2addr v6, v5

    .line 89
    invoke-virtual {p3, v2, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 90
    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    move v4, v3

    .line 100
    :goto_0
    if-eqz v1, :cond_1

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    move v1, v3

    .line 108
    :goto_1
    invoke-virtual {p3, v0, v4, v1, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 115
    .line 116
    aget-object p2, v1, p2

    .line 117
    .line 118
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    div-int/2addr v1, v5

    .line 126
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    div-int/2addr v6, v5

    .line 135
    invoke-virtual {p3, v1, v2, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 136
    .line 137
    .line 138
    if-eqz p2, :cond_2

    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    goto :goto_2

    .line 145
    :cond_2
    move v1, v3

    .line 146
    :goto_2
    if-eqz p2, :cond_3

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    goto :goto_3

    .line 153
    :cond_3
    move p2, v3

    .line 154
    :goto_3
    invoke-virtual {p3, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 158
    .line 159
    .line 160
    iget-object p2, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 161
    .line 162
    aget-object p2, p2, v5

    .line 163
    .line 164
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    div-int/2addr v1, v5

    .line 172
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    div-int/2addr v4, v5

    .line 177
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    invoke-virtual {p3, v1, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 186
    .line 187
    .line 188
    if-eqz p2, :cond_4

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    goto :goto_4

    .line 195
    :cond_4
    move v1, v3

    .line 196
    :goto_4
    if-eqz p2, :cond_5

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    goto :goto_5

    .line 203
    :cond_5
    move p2, v3

    .line 204
    :goto_5
    invoke-virtual {p3, v0, v1, p2, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 208
    .line 209
    .line 210
    iget-object p2, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 211
    .line 212
    const/4 v1, 0x3

    .line 213
    aget-object p2, p2, v1

    .line 214
    .line 215
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    div-int/2addr v1, v5

    .line 223
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    div-int/2addr v4, v5

    .line 228
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    invoke-virtual {p3, v2, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 233
    .line 234
    .line 235
    if-eqz p2, :cond_6

    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    goto :goto_6

    .line 242
    :cond_6
    move v1, v3

    .line 243
    :goto_6
    if-eqz p2, :cond_7

    .line 244
    .line 245
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    :cond_7
    invoke-virtual {p3, v0, v1, v3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 253
    .line 254
    .line 255
    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3

    .line 1
    const-string v0, "messageDigest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->ID:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "ID"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/bumptech/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    const-string v2, "CHARSET"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/cloud/tmc/ad/utils/RoundedCornersTransform;->radius:[Ljava/lang/Float;

    .line 38
    .line 39
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "allocate(4).putInt(Array\u2026hashCode(radius)).array()"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
