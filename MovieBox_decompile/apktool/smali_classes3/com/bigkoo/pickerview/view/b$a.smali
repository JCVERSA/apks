.class Lcom/bigkoo/pickerview/view/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lp7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/b;->B(IIIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bigkoo/pickerview/view/b;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->h(Lcom/bigkoo/pickerview/view/b;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lp5/a;

    .line 15
    .line 16
    invoke-static {p1}, Lt5/a;->d(I)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/lit8 v1, v1, -0x1

    .line 47
    .line 48
    if-le v0, v1, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    add-int/lit8 v1, v1, -0x1

    .line 112
    .line 113
    if-le v0, v1, :cond_2

    .line 114
    .line 115
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-static {p1}, Lt5/a;->g(I)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    if-ne v0, v1, :cond_1

    .line 132
    .line 133
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Lp5/a;

    .line 140
    .line 141
    invoke-static {p1}, Lt5/a;->f(I)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-static {v2}, Lt5/a;->b(I)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-direct {v1, v2}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lt5/a;->f(I)I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Lp5/a;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    invoke-static {p1, v2}, Lt5/a;->h(II)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v2}, Lt5/a;->b(I)Ljava/util/ArrayList;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-direct {v1, v2}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-static {p1, v0}, Lt5/a;->h(II)I

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 208
    .line 209
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v1, Lp5/a;

    .line 214
    .line 215
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 216
    .line 217
    invoke-static {v2}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    invoke-static {p1, v2}, Lt5/a;->h(II)I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-static {v2}, Lt5/a;->b(I)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-direct {v1, v2}, Lp5/a;-><init>(Ljava/util/List;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->setAdapter(Lo7/a;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 242
    .line 243
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->j(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    .line 252
    .line 253
    invoke-static {p1, v0}, Lt5/a;->h(II)I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    :goto_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->getCurrentItem()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    add-int/lit8 p1, p1, -0x1

    .line 268
    .line 269
    if-le v0, p1, :cond_3

    .line 270
    .line 271
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/bigkoo/pickerview/view/b;->i(Lcom/bigkoo/pickerview/view/b;)Lcom/contrarywind/view/WheelView;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0, p1}, Lcom/contrarywind/view/WheelView;->setCurrentItem(I)V

    .line 278
    .line 279
    .line 280
    :cond_3
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 281
    .line 282
    invoke-static {p1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Ls5/a;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    if-eqz p1, :cond_4

    .line 287
    .line 288
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/b$a;->a:Lcom/bigkoo/pickerview/view/b;

    .line 289
    .line 290
    invoke-static {p1}, Lcom/bigkoo/pickerview/view/b;->e(Lcom/bigkoo/pickerview/view/b;)Ls5/a;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-interface {p1}, Ls5/a;->a()V

    .line 295
    .line 296
    .line 297
    :cond_4
    return-void
.end method
