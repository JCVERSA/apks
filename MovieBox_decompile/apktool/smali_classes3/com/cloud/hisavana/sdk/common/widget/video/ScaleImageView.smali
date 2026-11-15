.class public final Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u000bR\u0016\u0010\u0008\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "",
        "videoWidth",
        "videoHeight",
        "",
        "setSize",
        "(II)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "d",
        "I",
        "e",
        "",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private d:I

.field private e:I

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const-string p1, "ScaleImageView"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x42b40000    # 90.0f

    .line 6
    .line 7
    cmpg-float v1, v0, v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/high16 v1, 0x43870000    # 270.0f

    .line 13
    .line 14
    cmpg-float v0, v0, v1

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    move v6, p2

    .line 19
    move p2, p1

    .line 20
    move p1, v6

    .line 21
    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 22
    .line 23
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 28
    .line 29
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 34
    .line 35
    if-lez v2, :cond_b

    .line 36
    .line 37
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 38
    .line 39
    if-lez v2, :cond_b

    .line 40
    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v5, "widthSpecMode --->"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v5, "heightSpecMode --->"

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v2, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/high16 v2, 0x40000000    # 2.0f

    .line 110
    .line 111
    if-ne v0, v2, :cond_4

    .line 112
    .line 113
    if-ne v1, v2, :cond_4

    .line 114
    .line 115
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "onMeasure --->1"

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "widthSpecSize --->"

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v3, " heightSpecSize--->"

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 161
    .line 162
    mul-int v1, v0, p2

    .line 163
    .line 164
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 165
    .line 166
    mul-int v3, p1, v2

    .line 167
    .line 168
    if-ge v1, v3, :cond_2

    .line 169
    .line 170
    div-int/2addr v1, v2

    .line 171
    move v0, v1

    .line 172
    :goto_1
    move v1, p2

    .line 173
    goto :goto_2

    .line 174
    :cond_2
    if-le v1, v3, :cond_3

    .line 175
    .line 176
    div-int/2addr v3, v0

    .line 177
    move v0, p1

    .line 178
    move v1, v3

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    move v0, p1

    .line 181
    goto :goto_1

    .line 182
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v3, "width --->"

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v3, " height--->"

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {p1, p2, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_6

    .line 217
    .line 218
    :cond_4
    const/high16 v3, -0x80000000

    .line 219
    .line 220
    if-ne v0, v2, :cond_6

    .line 221
    .line 222
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 227
    .line 228
    const-string v4, "onMeasure --->2"

    .line 229
    .line 230
    invoke-virtual {v0, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 234
    .line 235
    mul-int v2, p1, v0

    .line 236
    .line 237
    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 238
    .line 239
    div-int/2addr v2, v4

    .line 240
    if-ne v1, v3, :cond_5

    .line 241
    .line 242
    if-le v2, p2, :cond_5

    .line 243
    .line 244
    mul-int/2addr v4, p2

    .line 245
    div-int v0, v4, v0

    .line 246
    .line 247
    :goto_3
    move v1, p2

    .line 248
    goto :goto_6

    .line 249
    :cond_5
    move v0, p1

    .line 250
    move v1, v2

    .line 251
    goto :goto_6

    .line 252
    :cond_6
    if-ne v1, v2, :cond_8

    .line 253
    .line 254
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 259
    .line 260
    const-string v4, "onMeasure --->3"

    .line 261
    .line 262
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 266
    .line 267
    mul-int v2, p2, v1

    .line 268
    .line 269
    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 270
    .line 271
    div-int/2addr v2, v4

    .line 272
    if-ne v0, v3, :cond_7

    .line 273
    .line 274
    if-le v2, p1, :cond_7

    .line 275
    .line 276
    mul-int/2addr v4, p1

    .line 277
    div-int v1, v4, v1

    .line 278
    .line 279
    :goto_4
    move v0, p1

    .line 280
    goto :goto_6

    .line 281
    :cond_7
    move v1, p2

    .line 282
    move v0, v2

    .line 283
    goto :goto_6

    .line 284
    :cond_8
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 285
    .line 286
    iget v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 287
    .line 288
    if-ne v1, v3, :cond_9

    .line 289
    .line 290
    if-le v4, p2, :cond_9

    .line 291
    .line 292
    mul-int v1, p2, v2

    .line 293
    .line 294
    div-int/2addr v1, v4

    .line 295
    goto :goto_5

    .line 296
    :cond_9
    move v1, v2

    .line 297
    move p2, v4

    .line 298
    :goto_5
    if-ne v0, v3, :cond_a

    .line 299
    .line 300
    if-le v1, p1, :cond_a

    .line 301
    .line 302
    mul-int/2addr v4, p1

    .line 303
    div-int v1, v4, v2

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_a
    move v0, v1

    .line 307
    goto :goto_3

    .line 308
    :cond_b
    :goto_6
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 309
    .line 310
    .line 311
    return-void
.end method

.method public final setSize(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->f:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "videoWidth = "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "    videoHeight="

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 36
    .line 37
    if-eq v0, p1, :cond_0

    .line 38
    .line 39
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 40
    .line 41
    if-eq v0, p2, :cond_0

    .line 42
    .line 43
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->e:I

    .line 44
    .line 45
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;->d:I

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method
