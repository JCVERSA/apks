.class Lcom/bigkoo/pickerview/view/b$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/b;->G(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/bigkoo/pickerview/view/b;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/b;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    add-int/lit8 v3, p1, 0x1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->h(Lcom/bigkoo/pickerview/view/b;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->d(Lcom/bigkoo/pickerview/view/b;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ne v1, v2, :cond_3

    .line 18
    .line 19
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->g(Lcom/bigkoo/pickerview/view/b;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v3, v1

    .line 26
    add-int/lit8 v6, v3, -0x1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->g(Lcom/bigkoo/pickerview/view/b;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->c(Lcom/bigkoo/pickerview/view/b;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->f(Lcom/bigkoo/pickerview/view/b;)I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->b(Lcom/bigkoo/pickerview/view/b;)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 61
    .line 62
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 63
    .line 64
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :cond_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->g(Lcom/bigkoo/pickerview/view/b;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-ne v1, v6, :cond_1

    .line 76
    .line 77
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 78
    .line 79
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->f(Lcom/bigkoo/pickerview/view/b;)I

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 90
    .line 91
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 92
    .line 93
    const/16 v8, 0x1f

    .line 94
    .line 95
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->c(Lcom/bigkoo/pickerview/view/b;)I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-ne v1, v6, :cond_2

    .line 107
    .line 108
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 109
    .line 110
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->b(Lcom/bigkoo/pickerview/view/b;)I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 121
    .line 122
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 123
    .line 124
    const/4 v7, 0x1

    .line 125
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :cond_2
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 131
    .line 132
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 137
    .line 138
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 139
    .line 140
    const/4 v7, 0x1

    .line 141
    const/16 v8, 0x1f

    .line 142
    .line 143
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 155
    .line 156
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->h(Lcom/bigkoo/pickerview/view/b;)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-ne v1, v2, :cond_5

    .line 161
    .line 162
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->g(Lcom/bigkoo/pickerview/view/b;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v3, v1

    .line 169
    add-int/lit8 v6, v3, -0x1

    .line 170
    .line 171
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->g(Lcom/bigkoo/pickerview/view/b;)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-ne v6, v1, :cond_4

    .line 178
    .line 179
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 180
    .line 181
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 186
    .line 187
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->f(Lcom/bigkoo/pickerview/view/b;)I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 192
    .line 193
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 194
    .line 195
    const/16 v8, 0x1f

    .line 196
    .line 197
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 198
    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_4
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 203
    .line 204
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 209
    .line 210
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 211
    .line 212
    const/4 v7, 0x1

    .line 213
    const/16 v8, 0x1f

    .line 214
    .line 215
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 220
    .line 221
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->d(Lcom/bigkoo/pickerview/view/b;)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-ne v1, v2, :cond_7

    .line 232
    .line 233
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 234
    .line 235
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->c(Lcom/bigkoo/pickerview/view/b;)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-ne v3, v1, :cond_6

    .line 240
    .line 241
    iget-object v4, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 242
    .line 243
    invoke-static {v4}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 248
    .line 249
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    add-int/lit8 v6, v1, 0x1

    .line 258
    .line 259
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 260
    .line 261
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->b(Lcom/bigkoo/pickerview/view/b;)I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    iget-object v9, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 266
    .line 267
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 268
    .line 269
    const/4 v7, 0x1

    .line 270
    invoke-static/range {v4 .. v10}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 271
    .line 272
    .line 273
    goto :goto_0

    .line 274
    :cond_6
    iget-object v11, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 275
    .line 276
    invoke-static {v11}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 281
    .line 282
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    add-int/lit8 v13, v1, 0x1

    .line 291
    .line 292
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 293
    .line 294
    iget-object v2, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 295
    .line 296
    const/4 v14, 0x1

    .line 297
    const/16 v15, 0x1f

    .line 298
    .line 299
    move-object/from16 v16, v1

    .line 300
    .line 301
    move-object/from16 v17, v2

    .line 302
    .line 303
    invoke-static/range {v11 .. v17}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 304
    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_7
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 308
    .line 309
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->a(Lcom/bigkoo/pickerview/view/b;)I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    iget-object v6, v0, Lcom/bigkoo/pickerview/view/b$d;->a:Ljava/util/List;

    .line 314
    .line 315
    iget-object v7, v0, Lcom/bigkoo/pickerview/view/b$d;->b:Ljava/util/List;

    .line 316
    .line 317
    const/4 v4, 0x1

    .line 318
    const/16 v5, 0x1f

    .line 319
    .line 320
    invoke-static/range {v1 .. v7}, Lcom/bigkoo/pickerview/view/b;->m(Lcom/bigkoo/pickerview/view/b;IIIILjava/util/List;Ljava/util/List;)V

    .line 321
    .line 322
    .line 323
    :goto_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 324
    .line 325
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Ls5/a;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-eqz v1, :cond_8

    .line 330
    .line 331
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/b$d;->c:Lcom/bigkoo/pickerview/view/b;

    .line 332
    .line 333
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Ls5/a;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-interface {v1}, Ls5/a;->a()V

    .line 338
    .line 339
    .line 340
    :cond_8
    return-void
.end method
