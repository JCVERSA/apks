.class Lcom/github/mmin18/widget/RealtimeBlurView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/mmin18/widget/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/github/mmin18/widget/RealtimeBlurView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/github/mmin18/widget/RealtimeBlurView;->a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->b(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 28
    .line 29
    invoke-virtual {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->l()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 36
    .line 37
    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const/4 v5, 0x0

    .line 42
    if-eq v4, v1, :cond_0

    .line 43
    .line 44
    move v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v1, v5

    .line 47
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 48
    .line 49
    .line 50
    aget v4, v0, v5

    .line 51
    .line 52
    neg-int v4, v4

    .line 53
    aget v6, v0, v3

    .line 54
    .line 55
    neg-int v6, v6

    .line 56
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 57
    .line 58
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 59
    .line 60
    .line 61
    aget v7, v0, v5

    .line 62
    .line 63
    add-int/2addr v4, v7

    .line 64
    aget v0, v0, v3

    .line 65
    .line 66
    add-int/2addr v6, v0

    .line 67
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 74
    .line 75
    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->c(Lcom/github/mmin18/widget/RealtimeBlurView;)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const v8, 0xffffff

    .line 80
    .line 81
    .line 82
    and-int/2addr v7, v8

    .line 83
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 97
    .line 98
    invoke-static {v7, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->f(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 99
    .line 100
    .line 101
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->g()I

    .line 102
    .line 103
    .line 104
    :try_start_0
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 105
    .line 106
    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    iget-object v8, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 111
    .line 112
    invoke-static {v8}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    int-to-float v8, v8

    .line 121
    const/high16 v9, 0x3f800000    # 1.0f

    .line 122
    .line 123
    mul-float/2addr v8, v9

    .line 124
    iget-object v10, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 125
    .line 126
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    int-to-float v10, v10

    .line 131
    div-float/2addr v8, v10

    .line 132
    iget-object v10, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 133
    .line 134
    invoke-static {v10}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    int-to-float v10, v10

    .line 143
    mul-float/2addr v10, v9

    .line 144
    iget-object v9, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 145
    .line 146
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    int-to-float v9, v9

    .line 151
    div-float/2addr v10, v9

    .line 152
    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 153
    .line 154
    .line 155
    iget-object v7, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 156
    .line 157
    invoke-static {v7}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    neg-int v4, v4

    .line 162
    int-to-float v4, v4

    .line 163
    neg-int v6, v6

    .line 164
    int-to-float v6, v6

    .line 165
    invoke-virtual {v7, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    if-eqz v4, :cond_1

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iget-object v6, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 179
    .line 180
    invoke-static {v6}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :catchall_0
    move-exception v1

    .line 189
    goto :goto_2

    .line 190
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 191
    .line 192
    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lcom/github/mmin18/widget/RealtimeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .line 198
    .line 199
    :catch_0
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 200
    .line 201
    invoke-static {v2, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->f(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->h()I

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 208
    .line 209
    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :goto_2
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 218
    .line 219
    invoke-static {v2, v5}, Lcom/github/mmin18/widget/RealtimeBlurView;->f(Lcom/github/mmin18/widget/RealtimeBlurView;Z)Z

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lcom/github/mmin18/widget/RealtimeBlurView;->h()I

    .line 223
    .line 224
    .line 225
    iget-object v2, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/github/mmin18/widget/RealtimeBlurView;->e(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Canvas;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 232
    .line 233
    .line 234
    throw v1

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->d(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    iget-object v4, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 242
    .line 243
    invoke-static {v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->a(Lcom/github/mmin18/widget/RealtimeBlurView;)Landroid/graphics/Bitmap;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v0, v2, v4}, Lcom/github/mmin18/widget/RealtimeBlurView;->j(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 248
    .line 249
    .line 250
    if-nez v1, :cond_2

    .line 251
    .line 252
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 253
    .line 254
    invoke-static {v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->i(Lcom/github/mmin18/widget/RealtimeBlurView;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_3

    .line 259
    .line 260
    :cond_2
    iget-object v0, p0, Lcom/github/mmin18/widget/RealtimeBlurView$a;->a:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 263
    .line 264
    .line 265
    :cond_3
    return v3
.end method
