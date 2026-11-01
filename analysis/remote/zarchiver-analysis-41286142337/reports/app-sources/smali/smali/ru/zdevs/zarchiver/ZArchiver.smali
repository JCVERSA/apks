.class public Lru/zdevs/zarchiver/ZArchiver;
.super Lb0/c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Ld0/h$a;
.implements Lq0/g$c;
.implements Lru/zdevs/zarchiver/ui/FilePanelView$g;
.implements Lru/zdevs/zarchiver/ui/FilePanelView$f;
.implements Lru/zdevs/zarchiver/ui/FilePanelView$h;
.implements Lru/zdevs/zarchiver/archiver/C2JBridge$a;
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ZArchiver$i;,
        Lru/zdevs/zarchiver/ZArchiver$h;
    }
.end annotation


# static fields
.field public static r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/zdevs/zarchiver/ZArchiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Lru/zdevs/zarchiver/service/c;

.field public g:Landroid/os/Handler;

.field public final h:Lru/zdevs/zarchiver/d;

.field public i:I

.field public j:Landroid/view/View;

.field public k:Lru/zdevs/zarchiver/ui/FilePanelView;

.field public l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

.field public m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

.field public n:Z

.field public o:Z

.field public p:J

.field public final q:Lru/zdevs/zarchiver/ZArchiver$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lru/zdevs/zarchiver/d;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lru/zdevs/zarchiver/ZArchiver;->p:J

    .line 19
    .line 20
    new-instance v0, Lru/zdevs/zarchiver/ZArchiver$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ZArchiver$a;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->q:Lru/zdevs/zarchiver/ZArchiver$a;

    .line 26
    .line 27
    return-void
.end method

.method public static u(Lru/zdevs/zarchiver/ZArchiver;Landroid/widget/AdapterView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lc0/e;

    .line 12
    .line 13
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 14
    .line 15
    iget p2, p2, Lru/zdevs/zarchiver/d;->e:I

    .line 16
    .line 17
    new-instance v0, Lh0/h;

    .line 18
    .line 19
    iget-object p1, p1, Lc0/e;->c:Lh0/h;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lh0/h;-><init>(Lh0/h;)V

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x80

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1, v0}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public static v(Lru/zdevs/zarchiver/ZArchiver;Landroid/widget/AdapterView;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Lt0/a;->i(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lh0/g;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lh0/g;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lt0/a;->h(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/16 v2, 0x47

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lh0/g;->a(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/16 v2, 0x48

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lh0/g;->a(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Lt0/a;->g(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x49

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lh0/g;->a(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lc0/d;

    .line 51
    .line 52
    iget-object v2, v2, Lc0/d;->d:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lc0/e;

    .line 59
    .line 60
    iget-object v2, v2, Lc0/e;->b:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v2, v1, Lh0/g;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput v0, v1, Lh0/g;->e:I

    .line 69
    .line 70
    iput-object p2, v1, Lh0/g;->f:Ljava/lang/String;

    .line 71
    .line 72
    new-instance p2, Landroid/graphics/Point;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    div-int/lit8 p1, p1, 0x2

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-direct {p2, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 85
    .line 86
    invoke-virtual {v1, p0, v0, p2}, Lh0/g;->d(Lru/zdevs/zarchiver/d;ILandroid/graphics/Point;)V

    .line 87
    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    :cond_3
    :goto_0
    return v0
.end method

.method public static z()Lru/zdevs/zarchiver/ZArchiver;
    .locals 1

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZArchiver;->r:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final A(Z)V
    .locals 13

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lb0/c;->i()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 12
    .line 13
    invoke-virtual {v6}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->i()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v8, 0x1

    .line 23
    iget v2, v7, Lru/zdevs/zarchiver/b;->b:I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v2, v1, v8}, Lru/zdevs/zarchiver/ZArchiver;->Q(IZZ)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_9

    .line 31
    .line 32
    :cond_1
    const/16 v0, 0x20

    .line 33
    .line 34
    invoke-virtual {v6, v0}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sget-object v4, Lt0/b;->b:[Ljava/lang/String;

    .line 39
    .line 40
    const/16 v5, 0x2000

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->h()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    new-instance v0, Lh0/h;

    .line 57
    .line 58
    aget-object v3, v4, v2

    .line 59
    .line 60
    invoke-direct {v0, v3}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v0, v1, v1}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v2, v1, v0}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :cond_2
    const v3, 0x7f0c00f5

    .line 72
    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->h()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    iget-char v0, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Lb0/c;->j()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6, v1}, Lru/zdevs/zarchiver/d;->g(C)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_3
    iput-boolean v8, p0, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 101
    .line 102
    invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :cond_4
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->d()Lru/zdevs/zarchiver/b$a;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    const/4 v10, 0x0

    .line 112
    :goto_0
    if-eqz v9, :cond_6

    .line 113
    .line 114
    iget-object v11, v9, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 115
    .line 116
    invoke-virtual {v11}, Lh0/h;->g()Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    if-eqz v12, :cond_6

    .line 121
    .line 122
    invoke-virtual {v11}, Lh0/h;->i()Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-nez v12, :cond_6

    .line 127
    .line 128
    iget-object v11, v11, Lh0/h;->c:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v11}, Ln0/e;->i(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_5

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->d()Lru/zdevs/zarchiver/b$a;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    const/4 v10, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    .line 144
    .line 145
    :goto_2
    if-eqz v9, :cond_7

    .line 146
    .line 147
    iget-object v10, v9, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 148
    .line 149
    invoke-virtual {v6}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-virtual {v10, v11}, Lh0/h;->b(Lh0/h;)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    if-nez v10, :cond_7

    .line 158
    .line 159
    iget-boolean v10, v9, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 160
    .line 161
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->i()Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-ne v10, v11, :cond_7

    .line 166
    .line 167
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->d()Lru/zdevs/zarchiver/b$a;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    goto :goto_2

    .line 172
    :cond_7
    if-eqz v9, :cond_8

    .line 173
    .line 174
    invoke-virtual {v9}, Lru/zdevs/zarchiver/b$a;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    :cond_8
    const/4 v10, 0x4

    .line 178
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_9

    .line 183
    .line 184
    iget-char v11, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 185
    .line 186
    if-nez v11, :cond_9

    .line 187
    .line 188
    const/4 v11, 0x1

    .line 189
    goto :goto_3

    .line 190
    :cond_9
    const/4 v11, 0x0

    .line 191
    :goto_3
    if-nez v9, :cond_11

    .line 192
    .line 193
    if-eqz p1, :cond_a

    .line 194
    .line 195
    aget-object v9, v4, v2

    .line 196
    .line 197
    iget-object v12, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 198
    .line 199
    iget-object v12, v12, Lh0/h;->c:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    if-eqz v9, :cond_a

    .line 206
    .line 207
    iput-boolean v8, p0, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 208
    .line 209
    invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_8

    .line 213
    .line 214
    :cond_a
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-nez v3, :cond_b

    .line 219
    .line 220
    const/16 v3, 0x4000

    .line 221
    .line 222
    invoke-static {v3}, Lt0/b;->l(I)Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_c

    .line 227
    .line 228
    :cond_b
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_d

    .line 233
    .line 234
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-eqz v3, :cond_c

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_c
    const/4 v3, 0x0

    .line 242
    goto :goto_5

    .line 243
    :cond_d
    :goto_4
    iget-object v3, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 244
    .line 245
    invoke-virtual {v3}, Lh0/h;->e()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const-string v9, "/"

    .line 250
    .line 251
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_e

    .line 256
    .line 257
    invoke-virtual {v3}, Lh0/h;->g()Z

    .line 258
    .line 259
    .line 260
    move-result v9

    .line 261
    if-eqz v9, :cond_e

    .line 262
    .line 263
    iget-object v3, v3, Lh0/h;->c:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v3}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    goto :goto_5

    .line 270
    :cond_e
    move-object v3, v5

    .line 271
    :goto_5
    iget-object v5, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 272
    .line 273
    invoke-virtual {v5}, Lh0/h;->c()Z

    .line 274
    .line 275
    .line 276
    move-result v9

    .line 277
    if-nez v9, :cond_f

    .line 278
    .line 279
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_f

    .line 284
    .line 285
    new-instance v0, Lh0/h;

    .line 286
    .line 287
    aget-object v2, v4, v2

    .line 288
    .line 289
    invoke-direct {v0, v2}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    move-object v2, v0

    .line 293
    const/4 v9, 0x1

    .line 294
    goto :goto_6

    .line 295
    :cond_f
    move-object v2, v5

    .line 296
    :goto_6
    if-eqz v9, :cond_18

    .line 297
    .line 298
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    invoke-virtual {v7, v2, v1, v1}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 303
    .line 304
    .line 305
    iget v1, v7, Lru/zdevs/zarchiver/b;->b:I

    .line 306
    .line 307
    const/4 v4, -0x1

    .line 308
    const/4 v5, 0x0

    .line 309
    move-object v0, p0

    .line 310
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eq v9, v0, :cond_18

    .line 318
    .line 319
    xor-int/lit8 v0, v9, 0x1

    .line 320
    .line 321
    iget-object v1, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 322
    .line 323
    if-nez v1, :cond_10

    .line 324
    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 326
    .line 327
    .line 328
    :cond_10
    if-nez v0, :cond_18

    .line 329
    .line 330
    new-instance v0, La0/l;

    .line 331
    .line 332
    invoke-direct {v0}, La0/l;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-static {v0}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 339
    .line 340
    if-nez v0, :cond_18

    .line 341
    .line 342
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Le0/h;->a()V

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :cond_11
    iget-char v0, v9, Lru/zdevs/zarchiver/b$a;->b:C

    .line 351
    .line 352
    if-nez v0, :cond_13

    .line 353
    .line 354
    iget-char v0, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 355
    .line 356
    if-eqz v0, :cond_13

    .line 357
    .line 358
    iget-object v0, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 359
    .line 360
    if-eqz v0, :cond_12

    .line 361
    .line 362
    invoke-virtual {p0}, Lb0/c;->j()V

    .line 363
    .line 364
    .line 365
    :cond_12
    invoke-virtual {v6, v1}, Lru/zdevs/zarchiver/d;->g(C)V

    .line 366
    .line 367
    .line 368
    :cond_13
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->i()Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_14

    .line 373
    .line 374
    invoke-virtual {p0, v2, v1, v1}, Lru/zdevs/zarchiver/ZArchiver;->Q(IZZ)V

    .line 375
    .line 376
    .line 377
    :cond_14
    iget-object v0, v9, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 378
    .line 379
    invoke-virtual {v7, v0, v1, v1}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 380
    .line 381
    .line 382
    iget v0, v9, Lru/zdevs/zarchiver/b$a;->c:I

    .line 383
    .line 384
    iget-boolean v3, v9, Lru/zdevs/zarchiver/b$a;->d:Z

    .line 385
    .line 386
    if-eqz v3, :cond_16

    .line 387
    .line 388
    iget-object v4, v7, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 389
    .line 390
    if-eqz v4, :cond_16

    .line 391
    .line 392
    iget v3, v7, Lru/zdevs/zarchiver/b;->f:I

    .line 393
    .line 394
    const/4 v5, 0x2

    .line 395
    or-int/2addr v3, v5

    .line 396
    iput v3, v7, Lru/zdevs/zarchiver/b;->f:I

    .line 397
    .line 398
    iget-object v5, v7, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 399
    .line 400
    if-eqz v5, :cond_15

    .line 401
    .line 402
    or-int v2, v8, v3

    .line 403
    .line 404
    iput v2, v7, Lru/zdevs/zarchiver/b;->f:I

    .line 405
    .line 406
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 407
    .line 408
    iget-object v3, v6, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 409
    .line 410
    invoke-virtual {v2, v7, v3, v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, v7, v8}, Lru/zdevs/zarchiver/ZArchiver;->V(Lru/zdevs/zarchiver/b;Z)V

    .line 414
    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_15
    iget-object v0, v7, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {p0, v2, v4, v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->P(ILjava/lang/String;[Ljava/lang/String;Z)V

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :cond_16
    iget v1, v7, Lru/zdevs/zarchiver/b;->b:I

    .line 424
    .line 425
    iget-object v2, v9, Lru/zdevs/zarchiver/b$a;->a:Lh0/h;

    .line 426
    .line 427
    const/4 v4, 0x0

    .line 428
    if-eqz v3, :cond_17

    .line 429
    .line 430
    const/4 v0, -0x1

    .line 431
    const/4 v5, -0x1

    .line 432
    goto :goto_7

    .line 433
    :cond_17
    move v5, v0

    .line 434
    :goto_7
    const/4 v8, 0x0

    .line 435
    move-object v0, p0

    .line 436
    move-object v3, v4

    .line 437
    move v4, v5

    .line 438
    move v5, v8

    .line 439
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 440
    .line 441
    .line 442
    :cond_18
    :goto_8
    if-eqz v11, :cond_1a

    .line 443
    .line 444
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    if-nez v0, :cond_1a

    .line 449
    .line 450
    iget-char v0, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 451
    .line 452
    if-nez v0, :cond_1a

    .line 453
    .line 454
    :try_start_0
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1}, Lf0/a;->l()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v0, v2}, Le0/h;->e(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v2

    .line 470
    if-eqz v2, :cond_19

    .line 471
    .line 472
    invoke-virtual {v1}, Lf0/a;->a()V

    .line 473
    .line 474
    .line 475
    :cond_19
    invoke-virtual {v0}, Le0/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .line 477
    .line 478
    :catch_0
    :cond_1a
    :goto_9
    return-void
.end method

.method public final B(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lb0/c;->finishAndRemoveTask()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 12
    .line 13
    return-void
.end method

.method public final C(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    if-ge p1, v3, :cond_0

    .line 11
    .line 12
    aget-object v2, v2, p1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iput p1, v0, Lru/zdevs/zarchiver/d;->e:I

    .line 17
    .line 18
    :cond_0
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->f()B

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->f()B

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    iget v5, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 33
    .line 34
    if-ne v0, v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->c()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->c()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-ne v0, v2, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 47
    .line 48
    iget v1, v1, Lru/zdevs/zarchiver/b;->b:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, v0, Ld0/h;->h:Ld0/b;

    .line 57
    .line 58
    iget v0, v0, Ld0/b;->a:I

    .line 59
    .line 60
    if-lez v0, :cond_1

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 66
    .line 67
    invoke-virtual {v1, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, v1, Ld0/h;->h:Ld0/b;

    .line 74
    .line 75
    iget v1, v1, Ld0/b;->a:I

    .line 76
    .line 77
    if-lez v1, :cond_2

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v1, 0x0

    .line 82
    :goto_1
    if-eq v0, v1, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v3, 0x0

    .line 86
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v3}, Lru/zdevs/zarchiver/ZArchiver;->V(Lru/zdevs/zarchiver/b;Z)V

    .line 87
    .line 88
    .line 89
    const p1, 0x7f070083

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/widget/ListView;

    .line 97
    .line 98
    if-eqz p1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lc0/d;

    .line 105
    .line 106
    invoke-virtual {p1, v5}, Lc0/d;->a(I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iput-boolean v4, p0, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 110
    .line 111
    return-void
.end method

.method public final D(I)Z
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const v1, 0x7f07000f

    .line 6
    .line 7
    .line 8
    iget-object v2, v7, Lb0/c;->c:Lw0/a;

    .line 9
    .line 10
    const/4 v8, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    new-instance v0, La0/d0;

    .line 14
    .line 15
    invoke-direct {v0}, La0/d0;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v7, v2}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 19
    .line 20
    .line 21
    return v8

    .line 22
    :cond_0
    const v1, 0x7f07002e

    .line 23
    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lb0/c;->j()V

    .line 28
    .line 29
    .line 30
    return v8

    .line 31
    :cond_1
    const v1, 0x7f070039

    .line 32
    .line 33
    .line 34
    if-ne v0, v1, :cond_2

    .line 35
    .line 36
    new-instance v0, Landroid/content/Intent;

    .line 37
    .line 38
    const-class v1, Lru/zdevs/zarchiver/activity/SettingsDlg;

    .line 39
    .line 40
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v7, v0}, Lh1/h;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return v8

    .line 47
    :cond_2
    const v1, 0x7f070002

    .line 48
    .line 49
    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    new-instance v0, Landroid/content/Intent;

    .line 53
    .line 54
    const-class v1, Lru/zdevs/zarchiver/activity/AboutDlg;

    .line 55
    .line 56
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v7, v0}, Lh1/h;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    return v8

    .line 63
    :cond_3
    iget-object v1, v7, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 64
    .line 65
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v3, 0x0

    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    return v3

    .line 73
    :cond_4
    iget-object v9, v7, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    const v5, 0x7f07000a

    .line 77
    .line 78
    .line 79
    const/16 v6, 0x40

    .line 80
    .line 81
    const v10, 0x7f07000d

    .line 82
    .line 83
    .line 84
    if-eq v0, v5, :cond_63

    .line 85
    .line 86
    if-ne v0, v10, :cond_5

    .line 87
    .line 88
    goto/16 :goto_18

    .line 89
    .line 90
    :cond_5
    const/4 v5, 0x4

    .line 91
    const/4 v10, 0x2

    .line 92
    const v12, 0x7f07002f

    .line 93
    .line 94
    .line 95
    const v13, 0x7f0c00e4

    .line 96
    .line 97
    .line 98
    if-ne v0, v12, :cond_27

    .line 99
    .line 100
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 101
    .line 102
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const/4 v0, 0x0

    .line 109
    :goto_0
    if-eqz v0, :cond_67

    .line 110
    .line 111
    invoke-virtual {v9, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 116
    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v8, v0}, La0/c;->N(ILjava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    invoke-static {v13}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 132
    .line 133
    .line 134
    return v3

    .line 135
    :cond_7
    invoke-virtual {v1, v7, v8}, Lru/zdevs/zarchiver/a;->l(Landroid/content/Context;I)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_8

    .line 140
    .line 141
    return v3

    .line 142
    :cond_8
    invoke-virtual {v9, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_16

    .line 147
    .line 148
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 149
    .line 150
    if-nez v0, :cond_9

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_9
    iput-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 154
    .line 155
    iput-object v4, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 156
    .line 157
    :goto_1
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 158
    .line 159
    if-nez v0, :cond_a

    .line 160
    .line 161
    goto/16 :goto_b

    .line 162
    .line 163
    :cond_a
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->b:Lru/zdevs/zarchiver/d;

    .line 164
    .line 165
    invoke-virtual {v2}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 170
    .line 171
    iget-object v1, v1, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    move-object v9, v1

    .line 178
    check-cast v9, Lru/zdevs/zarchiver/service/c;

    .line 179
    .line 180
    if-nez v9, :cond_b

    .line 181
    .line 182
    goto/16 :goto_b

    .line 183
    .line 184
    :cond_b
    invoke-virtual {v2}, Lh0/h;->g()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_c

    .line 189
    .line 190
    goto/16 :goto_b

    .line 191
    .line 192
    :cond_c
    invoke-static {v2}, Lru/zdevs/zarchiver/c;->c(Lh0/h;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    goto/16 :goto_b

    .line 199
    .line 200
    :cond_d
    invoke-virtual {v0}, La0/a;->g()Lh0/h;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lh0/h;->o()Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-nez v1, :cond_e

    .line 209
    .line 210
    goto/16 :goto_b

    .line 211
    .line 212
    :cond_e
    invoke-static {v2}, La0/c;->q(Lh0/h;)Lh0/h;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    invoke-virtual {v11}, Lh0/h;->e()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    iget-object v1, v2, Lh0/h;->e:Ljava/lang/String;

    .line 221
    .line 222
    invoke-static {v1}, La0/c;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-static {v1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-nez v5, :cond_f

    .line 236
    .line 237
    const-string v5, "\\-spp"

    .line 238
    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const/16 v1, 0x2f

    .line 246
    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    :cond_f
    invoke-static {v4, v10, v11, v8}, La0/c;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Lh0/h;Z)V

    .line 251
    .line 252
    .line 253
    invoke-static {v2, v8}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    iget-boolean v2, v0, La0/a;->c:Z

    .line 258
    .line 259
    if-eqz v2, :cond_10

    .line 260
    .line 261
    or-int/lit8 v1, v1, 0x4

    .line 262
    .line 263
    :cond_10
    move v15, v1

    .line 264
    :try_start_0
    iget-object v1, v0, La0/a;->b:Lh0/h;

    .line 265
    .line 266
    if-eqz v1, :cond_11

    .line 267
    .line 268
    new-instance v2, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-object v14, v2

    .line 277
    goto :goto_3

    .line 278
    :cond_11
    iget-object v1, v0, La0/a;->a:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    new-instance v5, Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    .line 288
    .line 289
    const/4 v12, 0x0

    .line 290
    :goto_2
    if-ge v12, v2, :cond_13

    .line 291
    .line 292
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v13

    .line 296
    check-cast v13, Ld0/f;

    .line 297
    .line 298
    iget-object v13, v13, Ld0/f;->k:Lh0/h;

    .line 299
    .line 300
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    if-nez v14, :cond_12

    .line 305
    .line 306
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_13
    move-object v14, v5

    .line 313
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-ne v1, v8, :cond_14

    .line 318
    .line 319
    invoke-virtual {v0}, La0/a;->j()Ljava/util/ArrayList;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Le0/b;->e(Ljava/util/List;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v13

    .line 327
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v12

    .line 331
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    move-object v14, v0

    .line 336
    check-cast v14, Lh0/h;

    .line 337
    .line 338
    invoke-interface/range {v9 .. v15}, Lru/zdevs/zarchiver/service/c;->ArchiveAddFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_b

    .line 342
    .line 343
    :cond_14
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    new-instance v13, Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .line 351
    .line 352
    :goto_4
    if-ge v3, v1, :cond_15

    .line 353
    .line 354
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Lh0/h;

    .line 359
    .line 360
    invoke-virtual {v0, v2}, La0/a;->k(Lh0/h;)Ljava/util/ArrayList;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {v2}, Le0/b;->e(Ljava/util/List;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    add-int/lit8 v3, v3, 0x1

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v12

    .line 378
    invoke-interface/range {v9 .. v15}, Lru/zdevs/zarchiver/service/c;->ArchiveAddFilesMulti(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .line 380
    .line 381
    goto/16 :goto_b

    .line 382
    .line 383
    :catch_0
    nop

    .line 384
    goto/16 :goto_b

    .line 385
    .line 386
    :cond_16
    const/16 v0, 0x53

    .line 387
    .line 388
    invoke-virtual {v9, v0}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_26

    .line 393
    .line 394
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 395
    .line 396
    invoke-virtual {v0}, La0/a;->g()Lh0/h;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lh0/h;->g()Z

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    if-eqz v0, :cond_18

    .line 405
    .line 406
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 407
    .line 408
    if-nez v0, :cond_17

    .line 409
    .line 410
    goto :goto_5

    .line 411
    :cond_17
    iput-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 412
    .line 413
    iput-object v4, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 414
    .line 415
    :goto_5
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v9, v10}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    invoke-virtual {v1, v0, v2}, Lru/zdevs/zarchiver/a;->e(Lh0/h;Z)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_b

    .line 427
    .line 428
    :cond_18
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 429
    .line 430
    iget-boolean v2, v0, La0/a;->c:Z

    .line 431
    .line 432
    if-nez v0, :cond_19

    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_19
    iput-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 436
    .line 437
    iput-object v4, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 438
    .line 439
    :goto_6
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    invoke-virtual {v9, v10}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    iget-object v4, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 448
    .line 449
    if-nez v4, :cond_1a

    .line 450
    .line 451
    goto/16 :goto_b

    .line 452
    .line 453
    :cond_1a
    iget-object v5, v1, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 454
    .line 455
    iget-object v5, v5, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 456
    .line 457
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    move-object v12, v5

    .line 462
    check-cast v12, Lru/zdevs/zarchiver/service/c;

    .line 463
    .line 464
    if-nez v12, :cond_1b

    .line 465
    .line 466
    const/4 v3, 0x1

    .line 467
    goto/16 :goto_a

    .line 468
    .line 469
    :cond_1b
    invoke-virtual {v4}, La0/a;->g()Lh0/h;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    invoke-virtual {v13}, Lh0/h;->o()Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-nez v5, :cond_1c

    .line 478
    .line 479
    invoke-virtual {v13}, Lh0/h;->k()Z

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    if-nez v5, :cond_1c

    .line 484
    .line 485
    invoke-virtual {v13}, Lh0/h;->i()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_1c

    .line 490
    .line 491
    const/4 v3, 0x3

    .line 492
    goto/16 :goto_a

    .line 493
    .line 494
    :cond_1c
    invoke-static {}, Lt0/b;->j()Z

    .line 495
    .line 496
    .line 497
    move-result v5

    .line 498
    if-eqz v5, :cond_1d

    .line 499
    .line 500
    if-nez v0, :cond_1d

    .line 501
    .line 502
    invoke-static {v14, v8}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 503
    .line 504
    .line 505
    move-result v9

    .line 506
    if-eqz v9, :cond_1d

    .line 507
    .line 508
    const/4 v0, 0x1

    .line 509
    :cond_1d
    invoke-virtual {v4}, La0/a;->h()I

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    if-ne v9, v8, :cond_20

    .line 514
    .line 515
    if-eqz v5, :cond_1e

    .line 516
    .line 517
    if-nez v0, :cond_1e

    .line 518
    .line 519
    invoke-static {v13, v3}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    if-eqz v5, :cond_1e

    .line 524
    .line 525
    const/4 v0, 0x1

    .line 526
    :cond_1e
    :try_start_1
    invoke-virtual {v4}, La0/a;->j()Ljava/util/ArrayList;

    .line 527
    .line 528
    .line 529
    move-result-object v15

    .line 530
    if-eqz v0, :cond_1f

    .line 531
    .line 532
    const/16 v17, 0x1

    .line 533
    .line 534
    goto :goto_7

    .line 535
    :cond_1f
    const/16 v17, 0x0

    .line 536
    .line 537
    :goto_7
    move/from16 v16, v2

    .line 538
    .line 539
    invoke-interface/range {v12 .. v17}, Lru/zdevs/zarchiver/service/c;->Copy(Lh0/h;Lh0/h;Ljava/util/List;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    .line 541
    .line 542
    goto :goto_a

    .line 543
    :catch_1
    nop

    .line 544
    goto :goto_9

    .line 545
    :cond_20
    if-eqz v2, :cond_21

    .line 546
    .line 547
    iget-object v11, v4, La0/a;->a:Ljava/util/ArrayList;

    .line 548
    .line 549
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 550
    .line 551
    .line 552
    move-result v13

    .line 553
    if-nez v13, :cond_21

    .line 554
    .line 555
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v13

    .line 559
    instance-of v13, v13, Ld0/f;

    .line 560
    .line 561
    if-eqz v13, :cond_21

    .line 562
    .line 563
    new-instance v13, Lh1/e;

    .line 564
    .line 565
    invoke-direct {v13, v3}, Lh1/e;-><init>(I)V

    .line 566
    .line 567
    .line 568
    invoke-static {v11, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 569
    .line 570
    .line 571
    :cond_21
    new-instance v11, Ljava/util/ArrayList;

    .line 572
    .line 573
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .line 575
    .line 576
    const/4 v13, 0x0

    .line 577
    :goto_8
    if-ge v13, v9, :cond_23

    .line 578
    .line 579
    invoke-virtual {v4, v13}, La0/a;->a(I)Lh0/h;

    .line 580
    .line 581
    .line 582
    move-result-object v15

    .line 583
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    if-eqz v5, :cond_22

    .line 587
    .line 588
    if-nez v0, :cond_22

    .line 589
    .line 590
    invoke-static {v15, v3}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    if-eqz v15, :cond_22

    .line 595
    .line 596
    const/4 v0, 0x1

    .line 597
    :cond_22
    add-int/lit8 v13, v13, 0x1

    .line 598
    .line 599
    goto :goto_8

    .line 600
    :cond_23
    :try_start_2
    invoke-interface {v12, v11, v14, v2, v0}, Lru/zdevs/zarchiver/service/c;->CopyList(Ljava/util/List;Lh0/h;ZI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 601
    .line 602
    .line 603
    goto :goto_a

    .line 604
    :goto_9
    const/4 v3, 0x2

    .line 605
    :goto_a
    if-nez v3, :cond_25

    .line 606
    .line 607
    if-eqz v2, :cond_25

    .line 608
    .line 609
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 610
    .line 611
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lf0/a;->l()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v0, v2}, La0/a;->d(Ljava/lang/String;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_24

    .line 624
    .line 625
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v0}, Lf0/a;->a()V

    .line 630
    .line 631
    .line 632
    :cond_24
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 633
    .line 634
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    iget-object v1, v1, Le0/h;->a:Ljava/lang/String;

    .line 639
    .line 640
    invoke-virtual {v0, v1}, La0/a;->d(Ljava/lang/String;)Z

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    if-eqz v0, :cond_25

    .line 645
    .line 646
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v0}, Le0/h;->a()V

    .line 651
    .line 652
    .line 653
    :cond_25
    :goto_b
    invoke-static {v6}, Lt0/b;->l(I)Z

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    if-nez v0, :cond_67

    .line 658
    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_1a

    .line 663
    .line 664
    :cond_26
    return v3

    .line 665
    :cond_27
    const v6, 0x7f07000e

    .line 666
    .line 667
    .line 668
    if-ne v0, v6, :cond_29

    .line 669
    .line 670
    invoke-virtual {v7, v3}, Lru/zdevs/zarchiver/ZArchiver;->y(Z)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v9, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 678
    .line 679
    if-eqz v0, :cond_28

    .line 680
    .line 681
    const/16 v0, 0x38

    .line 682
    .line 683
    invoke-virtual {v1, v7, v4, v0}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_1a

    .line 687
    .line 688
    :cond_28
    const/16 v0, 0x17

    .line 689
    .line 690
    invoke-virtual {v1, v7, v4, v0}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_1a

    .line 694
    .line 695
    :cond_29
    const v6, 0x7f070009

    .line 696
    .line 697
    .line 698
    if-ne v0, v6, :cond_2a

    .line 699
    .line 700
    invoke-virtual {v7, v8}, Lru/zdevs/zarchiver/ZArchiver;->y(Z)V

    .line 701
    .line 702
    .line 703
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 704
    .line 705
    const/16 v1, 0x8

    .line 706
    .line 707
    invoke-virtual {v0, v7, v4, v1}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_1a

    .line 711
    .line 712
    :cond_2a
    const v6, 0x7f070010

    .line 713
    .line 714
    .line 715
    if-ne v0, v6, :cond_2c

    .line 716
    .line 717
    iget-object v0, v1, Ld0/h;->h:Ld0/b;

    .line 718
    .line 719
    iget v0, v0, Ld0/b;->a:I

    .line 720
    .line 721
    if-gtz v0, :cond_2b

    .line 722
    .line 723
    invoke-virtual {v1}, Ld0/h;->g()V

    .line 724
    .line 725
    .line 726
    :cond_2b
    invoke-virtual {v7, v8}, Lru/zdevs/zarchiver/ZArchiver;->y(Z)V

    .line 727
    .line 728
    .line 729
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 730
    .line 731
    const/4 v1, 0x5

    .line 732
    invoke-virtual {v0, v7, v4, v1}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 733
    .line 734
    .line 735
    goto/16 :goto_1a

    .line 736
    .line 737
    :cond_2c
    const v6, 0x7f07003d

    .line 738
    .line 739
    .line 740
    const-string v12, ""

    .line 741
    .line 742
    const/16 v14, 0xb

    .line 743
    .line 744
    if-ne v0, v6, :cond_31

    .line 745
    .line 746
    iget-object v0, v1, Ld0/h;->h:Ld0/b;

    .line 747
    .line 748
    iget v0, v0, Ld0/b;->a:I

    .line 749
    .line 750
    if-gtz v0, :cond_30

    .line 751
    .line 752
    new-instance v0, Lh0/h;

    .line 753
    .line 754
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 759
    .line 760
    invoke-direct {v0, v1}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 764
    .line 765
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 766
    .line 767
    iget-object v1, v1, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 768
    .line 769
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    check-cast v1, Lru/zdevs/zarchiver/service/c;

    .line 774
    .line 775
    if-nez v1, :cond_2d

    .line 776
    .line 777
    goto/16 :goto_1a

    .line 778
    .line 779
    :cond_2d
    invoke-virtual {v0}, Lh0/h;->e()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    invoke-static {v2, v3}, La0/c;->O(Ljava/lang/String;Z)Z

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    if-eqz v3, :cond_2e

    .line 788
    .line 789
    invoke-static {}, Lt0/b;->a()I

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    if-lez v3, :cond_2e

    .line 794
    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    const-string v4, "\\-mmt="

    .line 798
    .line 799
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-static {}, Lt0/b;->a()I

    .line 803
    .line 804
    .line 805
    move-result v4

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v12

    .line 813
    :cond_2e
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 814
    .line 815
    .line 816
    move-result-object v3

    .line 817
    invoke-virtual {v3, v2}, Le0/h;->e(Ljava/lang/String;)Z

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    if-eqz v3, :cond_2f

    .line 822
    .line 823
    new-instance v3, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .line 827
    .line 828
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v4, "\\-p"

    .line 832
    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 837
    .line 838
    .line 839
    move-result-object v4

    .line 840
    invoke-virtual {v4, v8}, Le0/h;->c(Z)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v12

    .line 851
    :cond_2f
    :try_start_3
    invoke-interface {v1, v2, v0, v12}, Lru/zdevs/zarchiver/service/c;->ArchiveTest(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 852
    .line 853
    .line 854
    goto/16 :goto_1a

    .line 855
    .line 856
    :cond_30
    invoke-virtual {v7, v8}, Lru/zdevs/zarchiver/ZArchiver;->y(Z)V

    .line 857
    .line 858
    .line 859
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 860
    .line 861
    invoke-virtual {v0, v7, v4, v14}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 862
    .line 863
    .line 864
    goto/16 :goto_1a

    .line 865
    .line 866
    :cond_31
    const/16 v6, 0x3e8

    .line 867
    .line 868
    const/16 v15, 0x44

    .line 869
    .line 870
    const v11, 0x7f07002c

    .line 871
    .line 872
    .line 873
    const/16 v14, 0x9

    .line 874
    .line 875
    if-ne v0, v11, :cond_3d

    .line 876
    .line 877
    invoke-virtual {v9, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 882
    .line 883
    if-eqz v0, :cond_32

    .line 884
    .line 885
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 890
    .line 891
    invoke-static {v8, v0}, La0/c;->N(ILjava/lang/String;)Z

    .line 892
    .line 893
    .line 894
    move-result v0

    .line 895
    if-nez v0, :cond_36

    .line 896
    .line 897
    invoke-static {v13}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 898
    .line 899
    .line 900
    return v3

    .line 901
    :cond_32
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->e()B

    .line 902
    .line 903
    .line 904
    move-result v0

    .line 905
    if-ne v0, v10, :cond_35

    .line 906
    .line 907
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 912
    .line 913
    iget v2, v9, Lru/zdevs/zarchiver/d;->e:I

    .line 914
    .line 915
    invoke-virtual {v7, v2, v0}, Lru/zdevs/zarchiver/ZArchiver;->x(ILjava/lang/String;)Z

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    if-eqz v0, :cond_34

    .line 920
    .line 921
    new-instance v0, Lg0/b;

    .line 922
    .line 923
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    iget-object v2, v2, Lh0/h;->c:Ljava/lang/String;

    .line 928
    .line 929
    invoke-direct {v0, v9, v7, v2}, Lg0/b;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v0, v8}, Lg0/i;->r(I)V

    .line 933
    .line 934
    .line 935
    iput-object v1, v0, Lg0/i;->b:Lg0/i$d;

    .line 936
    .line 937
    iget-object v1, v0, Lg0/b;->g:Landroid/app/AlertDialog;

    .line 938
    .line 939
    if-eqz v1, :cond_33

    .line 940
    .line 941
    invoke-static {v1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 942
    .line 943
    .line 944
    move-result v1

    .line 945
    if-eqz v1, :cond_33

    .line 946
    .line 947
    iget-object v1, v0, Lg0/b;->l:Lw0/a;

    .line 948
    .line 949
    invoke-virtual {v1, v0, v4}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 950
    .line 951
    .line 952
    :cond_33
    return v8

    .line 953
    :cond_34
    return v3

    .line 954
    :cond_35
    const/4 v0, 0x7

    .line 955
    invoke-virtual {v1, v7, v0}, Lru/zdevs/zarchiver/a;->l(Landroid/content/Context;I)Z

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    if-eqz v0, :cond_36

    .line 960
    .line 961
    return v3

    .line 962
    :cond_36
    new-instance v0, Lg0/m;

    .line 963
    .line 964
    const v2, 0x7f0c010e

    .line 965
    .line 966
    .line 967
    const v4, 0x7f0c010c

    .line 968
    .line 969
    .line 970
    invoke-direct {v0, v9, v7, v2, v4}, Lg0/m;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v0, v8}, Lg0/i;->r(I)V

    .line 974
    .line 975
    .line 976
    iput-object v1, v0, Lg0/i;->b:Lg0/i$d;

    .line 977
    .line 978
    iget-object v2, v0, Lg0/m;->g:Landroid/app/AlertDialog;

    .line 979
    .line 980
    if-eqz v2, :cond_37

    .line 981
    .line 982
    invoke-static {v2}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 983
    .line 984
    .line 985
    :cond_37
    iget-char v2, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 986
    .line 987
    if-ne v2, v14, :cond_38

    .line 988
    .line 989
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 990
    .line 991
    if-eqz v2, :cond_38

    .line 992
    .line 993
    invoke-virtual {v2}, La0/a;->h()I

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    if-ne v2, v8, :cond_38

    .line 998
    .line 999
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 1000
    .line 1001
    invoke-virtual {v1, v3}, La0/a;->b(I)Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    invoke-static {v1}, La0/c;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v1

    .line 1009
    goto :goto_c

    .line 1010
    :cond_38
    iget-char v2, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1011
    .line 1012
    const/16 v3, 0x11

    .line 1013
    .line 1014
    if-ne v2, v3, :cond_39

    .line 1015
    .line 1016
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 1017
    .line 1018
    if-eqz v1, :cond_39

    .line 1019
    .line 1020
    invoke-virtual {v1}, La0/a;->g()Lh0/h;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-static {v1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    invoke-static {v1}, La0/c;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    goto :goto_c

    .line 1035
    :cond_39
    const-string v1, "New Folder"

    .line 1036
    .line 1037
    :goto_c
    invoke-virtual {v9, v15}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    if-nez v2, :cond_3c

    .line 1042
    .line 1043
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v2

    .line 1047
    invoke-static {v2}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    invoke-virtual {v2, v1}, Lh0/f;->f(Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v3

    .line 1055
    if-eqz v3, :cond_3c

    .line 1056
    .line 1057
    move-object v4, v1

    .line 1058
    const/4 v3, 0x1

    .line 1059
    :goto_d
    if-ge v3, v6, :cond_3b

    .line 1060
    .line 1061
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    const-string v5, " "

    .line 1070
    .line 1071
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v4

    .line 1081
    invoke-virtual {v2, v4}, Lh0/f;->f(Ljava/lang/String;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v5

    .line 1085
    if-nez v5, :cond_3a

    .line 1086
    .line 1087
    goto :goto_e

    .line 1088
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    .line 1089
    .line 1090
    goto :goto_d

    .line 1091
    :cond_3b
    :goto_e
    move-object v1, v4

    .line 1092
    :cond_3c
    invoke-virtual {v0, v1}, Lg0/m;->u(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_1a

    .line 1096
    .line 1097
    :cond_3d
    const v11, 0x7f07002a

    .line 1098
    .line 1099
    .line 1100
    const/16 v6, 0x10

    .line 1101
    .line 1102
    if-ne v0, v11, :cond_43

    .line 1103
    .line 1104
    const/16 v0, 0x13

    .line 1105
    .line 1106
    invoke-virtual {v9, v0}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    if-eqz v0, :cond_67

    .line 1111
    .line 1112
    invoke-virtual {v9, v8}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v0

    .line 1116
    if-eqz v0, :cond_3e

    .line 1117
    .line 1118
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->e()B

    .line 1119
    .line 1120
    .line 1121
    move-result v0

    .line 1122
    if-ne v0, v8, :cond_3f

    .line 1123
    .line 1124
    :cond_3e
    invoke-virtual {v9, v10}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v0

    .line 1128
    if-eqz v0, :cond_42

    .line 1129
    .line 1130
    :cond_3f
    invoke-static {v4}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v0

    .line 1134
    if-eqz v0, :cond_41

    .line 1135
    .line 1136
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v0

    .line 1140
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 1141
    .line 1142
    invoke-static {v0}, Lx0/g;->e(Ljava/lang/String;)Z

    .line 1143
    .line 1144
    .line 1145
    move-result v0

    .line 1146
    if-nez v0, :cond_40

    .line 1147
    .line 1148
    const/16 v3, 0x10

    .line 1149
    .line 1150
    :cond_40
    or-int/2addr v3, v5

    .line 1151
    goto :goto_f

    .line 1152
    :cond_41
    const v0, 0x7f0c00f4

    .line 1153
    .line 1154
    .line 1155
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 1156
    .line 1157
    .line 1158
    return v3

    .line 1159
    :cond_42
    :goto_f
    new-instance v0, Lg0/h;

    .line 1160
    .line 1161
    const-string v1, "archiveNew"

    .line 1162
    .line 1163
    invoke-direct {v0, v3, v7, v1, v9}, Lg0/h;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 1164
    .line 1165
    .line 1166
    const/16 v1, 0xb

    .line 1167
    .line 1168
    invoke-virtual {v0, v1}, Lg0/i;->r(I)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1172
    .line 1173
    iput-object v1, v0, Lg0/i;->b:Lg0/i$d;

    .line 1174
    .line 1175
    iget-object v0, v0, Lg0/h;->g:Landroid/app/AlertDialog;

    .line 1176
    .line 1177
    if-eqz v0, :cond_67

    .line 1178
    .line 1179
    invoke-static {v0}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 1180
    .line 1181
    .line 1182
    goto/16 :goto_1a

    .line 1183
    .line 1184
    :cond_43
    const v11, 0x7f07002b

    .line 1185
    .line 1186
    .line 1187
    if-ne v0, v11, :cond_49

    .line 1188
    .line 1189
    invoke-virtual {v9, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1194
    .line 1195
    if-eqz v0, :cond_44

    .line 1196
    .line 1197
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 1202
    .line 1203
    invoke-static {v8, v0}, La0/c;->N(ILjava/lang/String;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result v0

    .line 1207
    if-nez v0, :cond_45

    .line 1208
    .line 1209
    invoke-static {v13}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 1210
    .line 1211
    .line 1212
    return v3

    .line 1213
    :cond_44
    invoke-virtual {v1, v7, v14}, Lru/zdevs/zarchiver/a;->l(Landroid/content/Context;I)Z

    .line 1214
    .line 1215
    .line 1216
    move-result v0

    .line 1217
    if-eqz v0, :cond_45

    .line 1218
    .line 1219
    return v3

    .line 1220
    :cond_45
    new-instance v0, Lg0/m;

    .line 1221
    .line 1222
    const v2, 0x7f0c010d

    .line 1223
    .line 1224
    .line 1225
    const v3, 0x7f0c010b

    .line 1226
    .line 1227
    .line 1228
    invoke-direct {v0, v9, v7, v2, v3}, Lg0/m;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 1229
    .line 1230
    .line 1231
    const/16 v2, 0x18

    .line 1232
    .line 1233
    invoke-virtual {v0, v2}, Lg0/i;->r(I)V

    .line 1234
    .line 1235
    .line 1236
    iput-object v1, v0, Lg0/i;->b:Lg0/i$d;

    .line 1237
    .line 1238
    iget-object v1, v0, Lg0/m;->g:Landroid/app/AlertDialog;

    .line 1239
    .line 1240
    if-eqz v1, :cond_46

    .line 1241
    .line 1242
    invoke-static {v1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 1243
    .line 1244
    .line 1245
    :cond_46
    invoke-virtual {v9, v15}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v1

    .line 1249
    const-string v2, "text.txt"

    .line 1250
    .line 1251
    if-nez v1, :cond_48

    .line 1252
    .line 1253
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v1

    .line 1257
    invoke-static {v1}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-virtual {v1, v2}, Lh0/f;->f(Ljava/lang/String;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    if-eqz v3, :cond_48

    .line 1266
    .line 1267
    const/4 v3, 0x1

    .line 1268
    const/16 v4, 0x3e8

    .line 1269
    .line 1270
    :goto_10
    if-ge v3, v4, :cond_48

    .line 1271
    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    const-string v5, "text "

    .line 1275
    .line 1276
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1280
    .line 1281
    .line 1282
    const-string v5, ".txt"

    .line 1283
    .line 1284
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v2

    .line 1291
    invoke-virtual {v1, v2}, Lh0/f;->f(Ljava/lang/String;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v5

    .line 1295
    if-nez v5, :cond_47

    .line 1296
    .line 1297
    goto :goto_11

    .line 1298
    :cond_47
    add-int/lit8 v3, v3, 0x1

    .line 1299
    .line 1300
    goto :goto_10

    .line 1301
    :cond_48
    :goto_11
    invoke-virtual {v0, v2}, Lg0/m;->u(Ljava/lang/String;)V

    .line 1302
    .line 1303
    .line 1304
    goto/16 :goto_1a

    .line 1305
    .line 1306
    :cond_49
    const v5, 0x7f070003

    .line 1307
    .line 1308
    .line 1309
    if-ne v0, v5, :cond_4a

    .line 1310
    .line 1311
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1312
    .line 1313
    const/16 v1, 0x51

    .line 1314
    .line 1315
    invoke-virtual {v0, v7, v4, v1}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_1a

    .line 1319
    .line 1320
    :cond_4a
    const v5, 0x7f070004

    .line 1321
    .line 1322
    .line 1323
    if-ne v0, v5, :cond_4b

    .line 1324
    .line 1325
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1326
    .line 1327
    const/16 v1, 0x52

    .line 1328
    .line 1329
    invoke-virtual {v0, v7, v4, v1}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lg0/v;I)V

    .line 1330
    .line 1331
    .line 1332
    goto/16 :goto_1a

    .line 1333
    .line 1334
    :cond_4b
    const v5, 0x7f070035

    .line 1335
    .line 1336
    .line 1337
    if-ne v0, v5, :cond_4d

    .line 1338
    .line 1339
    iget-char v0, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1340
    .line 1341
    if-eqz v0, :cond_4c

    .line 1342
    .line 1343
    const/4 v2, 0x3

    .line 1344
    and-int/2addr v0, v2

    .line 1345
    int-to-char v0, v0

    .line 1346
    if-eq v0, v10, :cond_4c

    .line 1347
    .line 1348
    return v3

    .line 1349
    :cond_4c
    invoke-virtual {v1}, Ld0/h;->g()V

    .line 1350
    .line 1351
    .line 1352
    iget-object v0, v7, Lb0/c;->b:Landroid/view/ActionMode;

    .line 1353
    .line 1354
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 1355
    .line 1356
    .line 1357
    goto/16 :goto_1a

    .line 1358
    .line 1359
    :cond_4d
    const v5, 0x7f070036

    .line 1360
    .line 1361
    .line 1362
    if-ne v0, v5, :cond_4f

    .line 1363
    .line 1364
    iget-char v0, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1365
    .line 1366
    if-eqz v0, :cond_4e

    .line 1367
    .line 1368
    const/4 v2, 0x3

    .line 1369
    and-int/2addr v0, v2

    .line 1370
    int-to-char v0, v0

    .line 1371
    if-eq v0, v10, :cond_4e

    .line 1372
    .line 1373
    return v3

    .line 1374
    :cond_4e
    invoke-virtual {v1}, Ld0/h;->h()V

    .line 1375
    .line 1376
    .line 1377
    iget-object v0, v7, Lb0/c;->b:Landroid/view/ActionMode;

    .line 1378
    .line 1379
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 1380
    .line 1381
    .line 1382
    goto/16 :goto_1a

    .line 1383
    .line 1384
    :cond_4f
    const v5, 0x7f070037

    .line 1385
    .line 1386
    .line 1387
    if-ne v0, v5, :cond_51

    .line 1388
    .line 1389
    iget-char v0, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1390
    .line 1391
    if-eqz v0, :cond_50

    .line 1392
    .line 1393
    const/4 v2, 0x3

    .line 1394
    and-int/2addr v0, v2

    .line 1395
    int-to-char v0, v0

    .line 1396
    if-eq v0, v10, :cond_50

    .line 1397
    .line 1398
    return v3

    .line 1399
    :cond_50
    invoke-virtual {v1}, Ld0/h;->i()V

    .line 1400
    .line 1401
    .line 1402
    iget-object v0, v7, Lb0/c;->b:Landroid/view/ActionMode;

    .line 1403
    .line 1404
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_1a

    .line 1408
    .line 1409
    :cond_51
    const v1, 0x7f070029

    .line 1410
    .line 1411
    .line 1412
    if-ne v0, v1, :cond_54

    .line 1413
    .line 1414
    iget-char v0, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1415
    .line 1416
    if-nez v0, :cond_53

    .line 1417
    .line 1418
    iget-object v0, v7, Lb0/c;->b:Landroid/view/ActionMode;

    .line 1419
    .line 1420
    if-eqz v0, :cond_52

    .line 1421
    .line 1422
    goto :goto_12

    .line 1423
    :cond_52
    invoke-virtual {v7, v10}, Lru/zdevs/zarchiver/ZArchiver;->F(C)V

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_1a

    .line 1427
    .line 1428
    :cond_53
    :goto_12
    return v3

    .line 1429
    :cond_54
    const v1, 0x7f070006

    .line 1430
    .line 1431
    .line 1432
    if-eq v0, v1, :cond_5c

    .line 1433
    .line 1434
    const v1, 0x7f070005

    .line 1435
    .line 1436
    .line 1437
    if-ne v0, v1, :cond_55

    .line 1438
    .line 1439
    goto/16 :goto_14

    .line 1440
    .line 1441
    :cond_55
    const v1, 0x7f070034

    .line 1442
    .line 1443
    .line 1444
    if-ne v0, v1, :cond_56

    .line 1445
    .line 1446
    iget-char v0, v9, Lru/zdevs/zarchiver/d;->a:C

    .line 1447
    .line 1448
    if-nez v0, :cond_67

    .line 1449
    .line 1450
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    if-nez v0, :cond_67

    .line 1459
    .line 1460
    iget-object v0, v7, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 1461
    .line 1462
    if-eqz v0, :cond_67

    .line 1463
    .line 1464
    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    .line 1465
    .line 1466
    .line 1467
    move-result v0

    .line 1468
    if-eqz v0, :cond_67

    .line 1469
    .line 1470
    iget-object v0, v7, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 1471
    .line 1472
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1473
    .line 1474
    .line 1475
    iget-object v0, v7, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 1476
    .line 1477
    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1478
    .line 1479
    .line 1480
    goto/16 :goto_1a

    .line 1481
    .line 1482
    :cond_56
    const v1, 0x7f070032

    .line 1483
    .line 1484
    .line 1485
    if-eq v0, v1, :cond_59

    .line 1486
    .line 1487
    const v4, 0x7f070031

    .line 1488
    .line 1489
    .line 1490
    if-ne v0, v4, :cond_57

    .line 1491
    .line 1492
    goto :goto_13

    .line 1493
    :cond_57
    const v1, 0x7f070021

    .line 1494
    .line 1495
    .line 1496
    if-ne v0, v1, :cond_58

    .line 1497
    .line 1498
    new-instance v0, Lg0/o;

    .line 1499
    .line 1500
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v4

    .line 1504
    const/4 v5, 0x0

    .line 1505
    const/4 v6, 0x1

    .line 1506
    move-object v1, v0

    .line 1507
    move-object v2, v9

    .line 1508
    move-object/from16 v3, p0

    .line 1509
    .line 1510
    invoke-direct/range {v1 .. v6}, Lg0/o;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Lh0/h;Ljava/lang/String;Z)V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v0}, Lg0/o;->w()V

    .line 1514
    .line 1515
    .line 1516
    goto/16 :goto_1a

    .line 1517
    .line 1518
    :cond_58
    return v3

    .line 1519
    :cond_59
    :goto_13
    const/4 v4, 0x3

    .line 1520
    invoke-virtual {v9, v4}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 1521
    .line 1522
    .line 1523
    move-result v4

    .line 1524
    if-nez v4, :cond_5a

    .line 1525
    .line 1526
    return v3

    .line 1527
    :cond_5a
    const/16 v4, 0x64

    .line 1528
    .line 1529
    const/4 v5, -0x1

    .line 1530
    invoke-virtual {v2, v4, v3, v5}, Lw0/a;->f(III)V

    .line 1531
    .line 1532
    .line 1533
    new-instance v4, La0/r0;

    .line 1534
    .line 1535
    invoke-virtual {v9}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v5

    .line 1539
    iget-object v5, v5, Lh0/h;->c:Ljava/lang/String;

    .line 1540
    .line 1541
    if-ne v0, v1, :cond_5b

    .line 1542
    .line 1543
    const/4 v3, 0x1

    .line 1544
    :cond_5b
    invoke-direct {v4, v5, v3}, La0/r0;-><init>(Ljava/lang/String;Z)V

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v4, v7, v2}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 1548
    .line 1549
    .line 1550
    goto/16 :goto_1a

    .line 1551
    .line 1552
    :cond_5c
    :goto_14
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {v0}, Lf0/a;->l()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v0

    .line 1560
    if-nez v0, :cond_5d

    .line 1561
    .line 1562
    return v3

    .line 1563
    :cond_5d
    invoke-static {v10, v0}, La0/c;->N(ILjava/lang/String;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result v11

    .line 1567
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v1

    .line 1571
    iget-object v2, v1, Lf0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1572
    .line 1573
    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v5

    .line 1577
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1578
    .line 1579
    .line 1580
    iget-object v1, v1, Lf0/a;->b:Lf0/d;

    .line 1581
    .line 1582
    if-nez v1, :cond_5e

    .line 1583
    .line 1584
    goto :goto_15

    .line 1585
    :cond_5e
    invoke-interface {v1}, Lf0/d;->t()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1589
    :goto_15
    move-object v13, v4

    .line 1590
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v1

    .line 1594
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1595
    .line 1596
    .line 1597
    if-nez v13, :cond_5f

    .line 1598
    .line 1599
    if-nez v11, :cond_5f

    .line 1600
    .line 1601
    return v3

    .line 1602
    :cond_5f
    new-instance v14, Lg0/m;

    .line 1603
    .line 1604
    iget-object v2, v7, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 1605
    .line 1606
    invoke-static {v0}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v4

    .line 1610
    const v5, 0x7f0c0041

    .line 1611
    .line 1612
    .line 1613
    if-eqz v11, :cond_60

    .line 1614
    .line 1615
    goto :goto_16

    .line 1616
    :cond_60
    const/4 v10, 0x1

    .line 1617
    :goto_16
    move-object v1, v14

    .line 1618
    move-object/from16 v3, p0

    .line 1619
    .line 1620
    const/16 v0, 0x10

    .line 1621
    .line 1622
    move v6, v10

    .line 1623
    invoke-direct/range {v1 .. v6}, Lg0/m;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;II)V

    .line 1624
    .line 1625
    .line 1626
    invoke-virtual {v14, v0}, Lg0/i;->r(I)V

    .line 1627
    .line 1628
    .line 1629
    iget-object v0, v14, Lg0/m;->g:Landroid/app/AlertDialog;

    .line 1630
    .line 1631
    if-eqz v0, :cond_61

    .line 1632
    .line 1633
    invoke-static {v0}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 1634
    .line 1635
    .line 1636
    :cond_61
    if-nez v13, :cond_62

    .line 1637
    .line 1638
    goto :goto_17

    .line 1639
    :cond_62
    move-object v12, v13

    .line 1640
    :goto_17
    invoke-virtual {v14, v12}, Lg0/m;->u(Ljava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    if-eqz v11, :cond_67

    .line 1644
    .line 1645
    iget-object v0, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1646
    .line 1647
    iput-object v0, v14, Lg0/i;->b:Lg0/i$d;

    .line 1648
    .line 1649
    goto :goto_1a

    .line 1650
    :catchall_0
    move-exception v0

    .line 1651
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v1

    .line 1655
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1656
    .line 1657
    .line 1658
    throw v0

    .line 1659
    :cond_63
    :goto_18
    invoke-virtual {v7, v8}, Lru/zdevs/zarchiver/ZArchiver;->y(Z)V

    .line 1660
    .line 1661
    .line 1662
    iget-object v1, v9, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1663
    .line 1664
    if-ne v0, v10, :cond_64

    .line 1665
    .line 1666
    const/4 v3, 0x1

    .line 1667
    :cond_64
    iget-object v0, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 1668
    .line 1669
    if-nez v0, :cond_65

    .line 1670
    .line 1671
    goto :goto_19

    .line 1672
    :cond_65
    iput-object v0, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 1673
    .line 1674
    iput-boolean v3, v0, La0/a;->c:Z

    .line 1675
    .line 1676
    iput-object v4, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 1677
    .line 1678
    :goto_19
    invoke-static {v6}, Lt0/b;->l(I)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v0

    .line 1682
    if-eqz v0, :cond_66

    .line 1683
    .line 1684
    const/16 v0, 0x41

    .line 1685
    .line 1686
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/ZArchiver;->F(C)V

    .line 1687
    .line 1688
    .line 1689
    goto :goto_1a

    .line 1690
    :cond_66
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1691
    .line 1692
    .line 1693
    const v0, 0x7f0c00df

    .line 1694
    .line 1695
    .line 1696
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 1697
    .line 1698
    .line 1699
    :catch_2
    :cond_67
    :goto_1a
    return v8
.end method

.method public final E()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 8
    .line 9
    iget v2, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Ld0/h;->h:Ld0/b;

    .line 19
    .line 20
    iget v0, v0, Ld0/b;->a:I

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->g(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    return v0
.end method

.method public final F(C)V
    .locals 4

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 13
    .line 14
    invoke-virtual {v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, p1, v3}, Lru/zdevs/zarchiver/b;->m(CI)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lb0/c;->j()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lru/zdevs/zarchiver/d;->g(C)V

    .line 25
    .line 26
    .line 27
    iget-char p1, v2, Lru/zdevs/zarchiver/d;->a:C

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    if-eq p1, v0, :cond_3

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    if-eq p1, v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x11

    .line 37
    .line 38
    if-eq p1, v0, :cond_2

    .line 39
    .line 40
    const/16 v0, 0x22

    .line 41
    .line 42
    if-eq p1, v0, :cond_1

    .line 43
    .line 44
    const/16 v0, 0x41

    .line 45
    .line 46
    if-eq p1, v0, :cond_2

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance p1, Lru/zdevs/zarchiver/ZArchiver$h;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZArchiver$h;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lb0/c;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lb0/c;->m(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p1, Lru/zdevs/zarchiver/ZArchiver$i;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZArchiver$i;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lb0/c;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v1}, Lb0/c;->m(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Lru/zdevs/zarchiver/ZArchiver$h;

    .line 77
    .line 78
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZArchiver$h;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lb0/c;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lb0/c;->m(Z)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final G(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f07006c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 12
    .line 13
    iput-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnListRefreshListener(Lru/zdevs/zarchiver/ui/FilePanelView$g;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnPageChangedListener(Lru/zdevs/zarchiver/ui/FilePanelView$h;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const v1, 0x7f0600cb

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v1}, Lz0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCircleView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    const v0, 0x7f08001a

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 62
    .line 63
    .line 64
    const v1, 0x7f080001

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 75
    .line 76
    const v3, 0x7f0700b1

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 84
    .line 85
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {}, Lt0/b;->c()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 103
    .line 104
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 105
    .line 106
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 107
    .line 108
    const p1, 0x7f070098

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {p0, v0}, Lb0/c;->q(Landroid/app/ActionBar;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    const p1, 0x7f0700df

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_5

    .line 128
    .line 129
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const v0, 0x7f080025

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 137
    .line 138
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    .line 143
    .line 144
    const v0, 0x1010031

    .line 145
    .line 146
    .line 147
    invoke-static {p0, v0}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    .line 153
    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    const/16 v1, 0x15

    .line 157
    .line 158
    if-lt v0, v1, :cond_4

    .line 159
    .line 160
    const/high16 v0, 0x41c80000    # 25.0f

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 166
    .line 167
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setExtendView(Landroid/support/constraint/ConstraintLayout;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 171
    .line 172
    invoke-virtual {p1, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnExtendShowListener(Lru/zdevs/zarchiver/ui/FilePanelView$f;)V

    .line 173
    .line 174
    .line 175
    const p1, 0x7f070091

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/widget/ProgressBar;

    .line 183
    .line 184
    if-eqz p1, :cond_5

    .line 185
    .line 186
    const/4 v0, -0x3

    .line 187
    invoke-static {p0, p1, v0}, Lz0/e;->n(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 188
    .line 189
    .line 190
    :cond_5
    return-void
.end method

.method public final H()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-static {p0}, Lv0/b;->i(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    const/16 v5, 0x8

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v5, 0x0

    .line 32
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v5, "android:id/search_button"

    .line 46
    .line 47
    invoke-virtual {v0, v5, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v5, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 52
    .line 53
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    instance-of v5, v0, Landroid/widget/ImageView;

    .line 58
    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .line 63
    const v5, 0x7f03005a

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v5}, Lz0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 74
    .line 75
    new-instance v5, La0/m;

    .line 76
    .line 77
    invoke-direct {v5, p0}, La0/m;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 84
    .line 85
    new-instance v5, La0/d;

    .line 86
    .line 87
    invoke-direct {v5, p0}, La0/d;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 94
    .line 95
    new-instance v5, La0/e;

    .line 96
    .line 97
    invoke-direct {v5, p0}, La0/e;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->setOnQueryListener(Lru/zdevs/zarchiver/ui/text/ExSearchView$c;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 104
    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    move-object v0, v3

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    const v5, 0x7f070096

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :goto_1
    if-eqz v0, :cond_5

    .line 117
    .line 118
    new-instance v5, La0/f;

    .line 119
    .line 120
    invoke-direct {v5, p0, v0}, La0/f;-><init>(Lru/zdevs/zarchiver/ZArchiver;Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    :cond_5
    sget v0, Lt0/b;->d:I

    .line 127
    .line 128
    const/high16 v5, 0xf0000

    .line 129
    .line 130
    and-int/2addr v0, v5

    .line 131
    const/high16 v5, 0x10000

    .line 132
    .line 133
    if-eq v0, v5, :cond_a

    .line 134
    .line 135
    const/high16 v6, 0x20000

    .line 136
    .line 137
    const v7, 0x7f030001

    .line 138
    .line 139
    .line 140
    if-eq v0, v6, :cond_9

    .line 141
    .line 142
    const/high16 v6, 0x40000

    .line 143
    .line 144
    if-eq v0, v6, :cond_8

    .line 145
    .line 146
    sget v6, Lt0/b;->h:I

    .line 147
    .line 148
    and-int/lit16 v6, v6, 0xff

    .line 149
    .line 150
    if-le v6, v1, :cond_6

    .line 151
    .line 152
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v8, 0x15

    .line 155
    .line 156
    if-lt v6, v8, :cond_7

    .line 157
    .line 158
    :cond_6
    const/16 v6, 0x400

    .line 159
    .line 160
    invoke-static {v6}, Lt0/b;->k(I)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_b

    .line 165
    .line 166
    :cond_7
    invoke-static {p0, v7}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    goto :goto_3

    .line 171
    :cond_8
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v7, "iGUICustomBGPath"

    .line 176
    .line 177
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    if-eqz v6, :cond_b

    .line 182
    .line 183
    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 184
    .line 185
    .line 186
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v6

    .line 189
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    .line 191
    .line 192
    const-string v6, "Error loading background image"

    .line 193
    .line 194
    invoke-static {v6}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_9
    invoke-static {p0, v7}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    goto :goto_3

    .line 203
    :cond_a
    :try_start_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    .line 210
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    goto :goto_2

    .line 212
    :catch_1
    move-exception v6

    .line 213
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    const-string v6, "Error on get the wallpaper"

    .line 217
    .line 218
    invoke-static {v6}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_b
    :goto_2
    const/4 v6, 0x0

    .line 222
    :goto_3
    const v7, 0x7f07007a

    .line 223
    .line 224
    .line 225
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    check-cast v7, Landroid/widget/ImageView;

    .line 230
    .line 231
    instance-of v8, v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 232
    .line 233
    const v9, 0x3f333333    # 0.7f

    .line 234
    .line 235
    .line 236
    if-eqz v8, :cond_d

    .line 237
    .line 238
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 239
    .line 240
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    .line 246
    .line 247
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 248
    .line 249
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    .line 251
    .line 252
    if-ne v0, v5, :cond_c

    .line 253
    .line 254
    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    .line 255
    .line 256
    .line 257
    :cond_c
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCacheEnabled(Z)V

    .line 260
    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_d
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    .line 265
    .line 266
    if-eqz v3, :cond_e

    .line 267
    .line 268
    if-ne v0, v5, :cond_f

    .line 269
    .line 270
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 271
    .line 272
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_e
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    if-eqz v6, :cond_f

    .line 283
    .line 284
    const v0, 0x7f070097

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 292
    .line 293
    .line 294
    :cond_f
    :goto_4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCacheEnabled(Z)V

    .line 297
    .line 298
    .line 299
    :goto_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 300
    .line 301
    const v3, 0x8000

    .line 302
    .line 303
    .line 304
    invoke-static {v3}, Lt0/b;->l(I)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-virtual {v0, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->setFastScrollEnabled(Z)V

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 312
    .line 313
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 317
    .line 318
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 322
    .line 323
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnItemSelectChanged(Ld0/h$a;)V

    .line 324
    .line 325
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 327
    .line 328
    const/16 v3, 0x18

    .line 329
    .line 330
    if-lt v0, v3, :cond_10

    .line 331
    .line 332
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 333
    .line 334
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 335
    .line 336
    .line 337
    :cond_10
    const v0, 0x7f070083

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Landroid/widget/ListView;

    .line 345
    .line 346
    if-eqz v0, :cond_11

    .line 347
    .line 348
    new-instance v3, Lc0/d;

    .line 349
    .line 350
    invoke-direct {v3, p0, v2, v2}, Lc0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v0}, Lz0/e;->l(Landroid/widget/AbsListView;)V

    .line 357
    .line 358
    .line 359
    new-instance v3, La0/g;

    .line 360
    .line 361
    invoke-direct {v3, p0}, La0/g;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 365
    .line 366
    .line 367
    new-instance v3, La0/h;

    .line 368
    .line 369
    invoke-direct {v3, p0}, La0/h;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 373
    .line 374
    .line 375
    :cond_11
    invoke-static {v4}, Lt0/b;->l(I)Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_12

    .line 380
    .line 381
    const v0, 0x7f070072

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 389
    .line 390
    iput-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 391
    .line 392
    :cond_12
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 393
    .line 394
    if-eqz v0, :cond_13

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 400
    .line 401
    const/16 v2, 0x10

    .line 402
    .line 403
    invoke-static {v2}, Lt0/b;->l(I)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setTransparent(Z)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 411
    .line 412
    const/16 v2, 0x20

    .line 413
    .line 414
    invoke-static {v2}, Lt0/b;->l(I)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setAnimated(Z)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 424
    .line 425
    .line 426
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 427
    .line 428
    new-instance v1, La0/i;

    .line 429
    .line 430
    invoke-direct {v1, p0}, La0/i;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 437
    .line 438
    new-instance v1, La0/j;

    .line 439
    .line 440
    invoke-direct {v1, p0}, La0/j;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setOnMenuButtonClick(Landroid/view/View$OnClickListener;)V

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 447
    .line 448
    new-instance v1, La0/k;

    .line 449
    .line 450
    invoke-direct {v1, p0}, La0/k;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setOnMenuToggleListener(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;)V

    .line 454
    .line 455
    .line 456
    :cond_13
    return-void
.end method

.method public final I(III)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 10
    .line 11
    iget-boolean v1, v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ne v0, p1, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 40
    .line 41
    iget v2, v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 42
    .line 43
    add-int/lit8 p3, p3, 0x2

    .line 44
    .line 45
    if-ne v2, p3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuState(Z)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_1
    iget-object p3, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 52
    .line 53
    iget v0, p3, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-le v0, v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {p3, v1, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    :goto_0
    if-ge v1, v3, :cond_3

    .line 71
    .line 72
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v5, p3, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c:Lb1/a;

    .line 77
    .line 78
    if-eq v4, v5, :cond_2

    .line 79
    .line 80
    iget-object v5, p3, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->k:Landroid/widget/ImageView;

    .line 81
    .line 82
    if-eq v4, v5, :cond_2

    .line 83
    .line 84
    instance-of v5, v4, Lb1/a;

    .line 85
    .line 86
    if-eqz v5, :cond_2

    .line 87
    .line 88
    check-cast v4, Lb1/a;

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lb1/a;

    .line 111
    .line 112
    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v3}, Lb1/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    iget v1, p3, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 120
    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    .line 123
    iput v1, p3, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    iget-object p3, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuButtonImageResource(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 141
    .line 142
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_5

    .line 147
    .line 148
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 149
    .line 150
    iget-boolean p2, p1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->f(Z)V

    .line 153
    .line 154
    .line 155
    :cond_5
    return v2
.end method

.method public final J()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 9
    .line 10
    iget-char v2, v1, Lru/zdevs/zarchiver/d;->a:C

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    const v6, 0x7f0600ec

    .line 18
    .line 19
    .line 20
    if-eq v2, v5, :cond_6

    .line 21
    .line 22
    const/16 v5, 0x9

    .line 23
    .line 24
    if-eq v2, v5, :cond_5

    .line 25
    .line 26
    const/16 v5, 0x11

    .line 27
    .line 28
    if-eq v2, v5, :cond_5

    .line 29
    .line 30
    const/16 v5, 0x22

    .line 31
    .line 32
    if-eq v2, v5, :cond_4

    .line 33
    .line 34
    const/16 v5, 0x41

    .line 35
    .line 36
    if-eq v2, v5, :cond_1

    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :cond_1
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 41
    .line 42
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-boolean v1, v1, La0/a;->c:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_0
    if-eqz v3, :cond_3

    .line 53
    .line 54
    const v1, 0x7f0600fd

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const v1, 0x7f0600fc

    .line 59
    .line 60
    .line 61
    :goto_1
    const v2, 0x7f07002f

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v1, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 65
    .line 66
    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_4
    const v1, 0x7f07000c

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v6, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 73
    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_5
    const v1, 0x7f070038

    .line 78
    .line 79
    .line 80
    const v2, 0x7f06010a

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1, v2, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_6
    const v1, 0x7f07002e

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v6, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 92
    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_7
    iget-object v2, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 97
    .line 98
    invoke-virtual {v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-nez v2, :cond_8

    .line 103
    .line 104
    return-void

    .line 105
    :cond_8
    invoke-virtual {v1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    const/16 v7, 0x13

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    const v10, 0x7f0600e8

    .line 116
    .line 117
    .line 118
    const v11, 0x7f07000a

    .line 119
    .line 120
    .line 121
    const/4 v12, 0x4

    .line 122
    const v13, 0x7f0600f3

    .line 123
    .line 124
    .line 125
    const v14, 0x7f0600dd

    .line 126
    .line 127
    .line 128
    const v15, 0x7f07002c

    .line 129
    .line 130
    .line 131
    if-eqz v7, :cond_13

    .line 132
    .line 133
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->i()Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    const v8, 0x7f0600ef

    .line 138
    .line 139
    .line 140
    const v9, 0x7f070009

    .line 141
    .line 142
    .line 143
    if-nez v7, :cond_10

    .line 144
    .line 145
    iget-object v2, v2, Ld0/h;->h:Ld0/b;

    .line 146
    .line 147
    iget v2, v2, Ld0/b;->a:I

    .line 148
    .line 149
    if-lez v2, :cond_a

    .line 150
    .line 151
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->f()B

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eq v1, v3, :cond_9

    .line 156
    .line 157
    invoke-virtual {v0, v11, v10, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_7

    .line 161
    .line 162
    :cond_9
    invoke-virtual {v0, v9, v8, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 163
    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_a
    const/4 v2, 0x0

    .line 168
    invoke-static {v2}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    const/4 v7, 0x3

    .line 173
    if-eqz v2, :cond_c

    .line 174
    .line 175
    iget-object v8, v6, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 176
    .line 177
    invoke-virtual {v8}, Lh0/h;->r()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-static {v8}, Lx0/g;->c(Ljava/lang/String;)B

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    if-ne v8, v5, :cond_c

    .line 186
    .line 187
    const/16 v8, 0x80

    .line 188
    .line 189
    invoke-virtual {v1, v8}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_c

    .line 194
    .line 195
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->f()B

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-ne v1, v12, :cond_b

    .line 200
    .line 201
    const v1, 0x7f070032

    .line 202
    .line 203
    .line 204
    const v8, 0x7f06010c

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1, v8, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_b
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->f()B

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-ne v1, v7, :cond_c

    .line 216
    .line 217
    iget-object v1, v6, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 218
    .line 219
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 220
    .line 221
    const-string v8, "/data"

    .line 222
    .line 223
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_c

    .line 228
    .line 229
    const v1, 0x7f070031

    .line 230
    .line 231
    .line 232
    const v8, 0x7f06010b

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v1, v8, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 236
    .line 237
    .line 238
    :goto_2
    const/4 v1, 0x1

    .line 239
    goto :goto_3

    .line 240
    :cond_c
    const/4 v1, 0x0

    .line 241
    :goto_3
    if-nez v1, :cond_19

    .line 242
    .line 243
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->f()B

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eq v1, v3, :cond_f

    .line 248
    .line 249
    if-eqz v2, :cond_d

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_d
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->f()B

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-ne v1, v5, :cond_e

    .line 257
    .line 258
    invoke-virtual {v0, v15, v14, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 259
    .line 260
    .line 261
    goto/16 :goto_7

    .line 262
    .line 263
    :cond_e
    const v1, 0x7f070021

    .line 264
    .line 265
    .line 266
    const v2, 0x7f0600f5

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0, v1, v2, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 270
    .line 271
    .line 272
    goto/16 :goto_7

    .line 273
    .line 274
    :cond_f
    :goto_4
    invoke-virtual {v0, v15, v14, v7}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_19

    .line 279
    .line 280
    invoke-virtual {v0, v15, v13}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 281
    .line 282
    .line 283
    const v1, 0x7f07002a

    .line 284
    .line 285
    .line 286
    const v2, 0x7f0600e2

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 290
    .line 291
    .line 292
    const v1, 0x7f07002b

    .line 293
    .line 294
    .line 295
    const v2, 0x7f0600f2

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_7

    .line 302
    .line 303
    :cond_10
    iget-object v1, v2, Ld0/h;->h:Ld0/b;

    .line 304
    .line 305
    iget v1, v1, Ld0/b;->a:I

    .line 306
    .line 307
    if-lez v1, :cond_11

    .line 308
    .line 309
    invoke-virtual {v0, v9, v8, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 310
    .line 311
    .line 312
    goto/16 :goto_7

    .line 313
    .line 314
    :cond_11
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 315
    .line 316
    iget-boolean v2, v1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 317
    .line 318
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->c()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-nez v5, :cond_19

    .line 323
    .line 324
    iget-boolean v5, v1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->l:Z

    .line 325
    .line 326
    if-nez v5, :cond_19

    .line 327
    .line 328
    iput-boolean v3, v1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->l:Z

    .line 329
    .line 330
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 331
    .line 332
    .line 333
    move-result v3

    .line 334
    if-eqz v3, :cond_12

    .line 335
    .line 336
    invoke-virtual {v1, v4, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Lb1/b;

    .line 340
    .line 341
    invoke-direct {v3, v1, v2}, Lb1/b;-><init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;Z)V

    .line 342
    .line 343
    .line 344
    iget v2, v1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 345
    .line 346
    int-to-long v4, v2

    .line 347
    const-wide/16 v6, 0x32

    .line 348
    .line 349
    mul-long v4, v4, v6

    .line 350
    .line 351
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 352
    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :cond_12
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->b(Z)V

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_13
    invoke-virtual {v6, v12}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_16

    .line 365
    .line 366
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->i()Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_15

    .line 371
    .line 372
    iget-object v1, v2, Ld0/h;->h:Ld0/b;

    .line 373
    .line 374
    iget v1, v1, Ld0/b;->a:I

    .line 375
    .line 376
    if-gtz v1, :cond_15

    .line 377
    .line 378
    iget-object v1, v6, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 379
    .line 380
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {v3, v1}, La0/c;->N(ILjava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-nez v1, :cond_14

    .line 387
    .line 388
    goto :goto_5

    .line 389
    :cond_14
    const v1, 0x7f070003

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v1, v14, v5}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-eqz v2, :cond_19

    .line 397
    .line 398
    const v2, 0x7f0600f2

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v15, v13}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_15
    :goto_5
    const v1, 0x7f070010

    .line 409
    .line 410
    .line 411
    const v2, 0x7f06010d

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v1, v2, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 415
    .line 416
    .line 417
    goto :goto_7

    .line 418
    :cond_16
    const/16 v1, 0x40

    .line 419
    .line 420
    invoke-virtual {v6, v1}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_19

    .line 425
    .line 426
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->i()Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_18

    .line 431
    .line 432
    iget-object v1, v2, Ld0/h;->h:Ld0/b;

    .line 433
    .line 434
    iget v1, v1, Ld0/b;->a:I

    .line 435
    .line 436
    if-lez v1, :cond_17

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_17
    invoke-virtual {v0, v15, v14, v5}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    if-eqz v1, :cond_19

    .line 444
    .line 445
    invoke-virtual {v0, v15, v13}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 446
    .line 447
    .line 448
    const v1, 0x7f07002b

    .line 449
    .line 450
    .line 451
    const v2, 0x7f0600f2

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/ZArchiver;->K(II)V

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_18
    :goto_6
    invoke-virtual {v0, v11, v10, v4}, Lru/zdevs/zarchiver/ZArchiver;->I(III)Z

    .line 459
    .line 460
    .line 461
    :cond_19
    :goto_7
    return-void
.end method

.method public final K(II)V
    .locals 3

    .line 1
    new-instance v0, Lb1/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb1/a;-><init>(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v1, 0x7f0d0001

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1, p1, p2}, Lz0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, v0, Lb1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    iput v2, v0, Lb1/a;->a:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lb1/a;->g()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 45
    .line 46
    iget p2, p1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 47
    .line 48
    add-int/lit8 p2, p2, -0x2

    .line 49
    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lb1/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    iget p2, p1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 57
    .line 58
    add-int/2addr p2, v2

    .line 59
    iput p2, p1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 60
    .line 61
    return-void
.end method

.method public final L(IILh0/h;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    return-void
.end method

.method public final M(ILh0/h;Ljava/lang/String;II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move/from16 v2, p5

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, La0/b;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v11, v0, Lb0/c;->c:Lw0/a;

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v11, v3, v4, v1}, Lw0/a;->f(III)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 21
    .line 22
    iget-object v5, v3, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 23
    .line 24
    aget-object v5, v5, v1

    .line 25
    .line 26
    iget-object v6, v5, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 27
    .line 28
    invoke-virtual {v6, v10}, Lh0/h;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v12

    .line 32
    if-nez v12, :cond_0

    .line 33
    .line 34
    iget-char v6, v3, Lru/zdevs/zarchiver/d;->a:C

    .line 35
    .line 36
    and-int/lit8 v6, v6, 0x3

    .line 37
    .line 38
    int-to-char v6, v6

    .line 39
    iget-object v7, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 40
    .line 41
    invoke-virtual {v7}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-virtual {v5, v6, v7}, Lru/zdevs/zarchiver/b;->m(CI)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget v6, v3, Lru/zdevs/zarchiver/d;->e:I

    .line 49
    .line 50
    const/4 v13, 0x0

    .line 51
    if-ne v1, v6, :cond_4

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Lh0/h;->j()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    const/4 v1, -0x2

    .line 60
    const/4 v6, -0x1

    .line 61
    invoke-virtual {v3, v1, v4, v6}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    check-cast v6, Lg0/y;

    .line 66
    .line 67
    if-nez v6, :cond_1

    .line 68
    .line 69
    new-instance v6, Lg0/y;

    .line 70
    .line 71
    const v7, 0x7f0c00ed

    .line 72
    .line 73
    .line 74
    invoke-direct {v6, v3, v0, v7, v4}, Lg0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iput v1, v6, Lg0/i;->c:I

    .line 78
    .line 79
    new-instance v1, Lru/zdevs/zarchiver/ZArchiver$d;

    .line 80
    .line 81
    invoke-direct {v1}, Lru/zdevs/zarchiver/ZArchiver$d;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v1, v6, Lg0/i;->a:Lg0/i$c;

    .line 85
    .line 86
    invoke-virtual {v6}, Lg0/y;->t()V

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-virtual {v0, v10}, Lru/zdevs/zarchiver/ZArchiver;->O(Lh0/h;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 93
    .line 94
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v1, 0x0

    .line 101
    :goto_0
    if-nez v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0, v13}, Lru/zdevs/zarchiver/ZArchiver;->U(Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    const/16 v1, 0x10

    .line 107
    .line 108
    invoke-static {v2, v1}, La0/c;->K(II)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/4 v14, 0x0

    .line 113
    if-eqz v1, :cond_7

    .line 114
    .line 115
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 116
    .line 117
    iget v3, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    .line 125
    iget-object v1, v1, Ld0/h;->h:Ld0/b;

    .line 126
    .line 127
    iget v1, v1, Ld0/b;->a:I

    .line 128
    .line 129
    if-lez v1, :cond_5

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    const/4 v4, 0x0

    .line 133
    :goto_1
    if-eqz v4, :cond_6

    .line 134
    .line 135
    iget-object v1, v5, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 136
    .line 137
    move-object v9, v1

    .line 138
    move v1, v2

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    and-int/lit8 v1, v2, -0x11

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    move v1, v2

    .line 144
    :goto_2
    move-object v9, v14

    .line 145
    :goto_3
    iget-boolean v2, v5, Lru/zdevs/zarchiver/b;->i:Z

    .line 146
    .line 147
    if-eqz v2, :cond_8

    .line 148
    .line 149
    or-int/lit8 v1, v1, 0x20

    .line 150
    .line 151
    :cond_8
    iget-object v2, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 152
    .line 153
    iget-boolean v2, v2, Lru/zdevs/zarchiver/ui/FilePanelView;->k:Z

    .line 154
    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    or-int/lit8 v1, v1, 0x40

    .line 158
    .line 159
    :cond_9
    move v7, v1

    .line 160
    new-instance v15, La0/j0;

    .line 161
    .line 162
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 163
    .line 164
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListSize()Landroid/graphics/Point;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    move-object v1, v15

    .line 169
    move-object v2, v5

    .line 170
    move-object/from16 v3, p2

    .line 171
    .line 172
    move v4, v12

    .line 173
    move-object/from16 v5, p3

    .line 174
    .line 175
    move/from16 v6, p4

    .line 176
    .line 177
    invoke-direct/range {v1 .. v9}, La0/j0;-><init>(Lru/zdevs/zarchiver/b;Lh0/h;ZLjava/lang/String;IILandroid/graphics/Point;Ld0/b;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v15, v14, v11}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p2 .. p2}, Lh0/h;->g()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_a

    .line 188
    .line 189
    iget-object v1, v0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 190
    .line 191
    if-nez v1, :cond_a

    .line 192
    .line 193
    if-nez v12, :cond_a

    .line 194
    .line 195
    iput-boolean v13, v0, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 196
    .line 197
    :cond_a
    return-void
.end method

.method public final N(Landroid/content/Intent;ZZ)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v3, p1

    .line 3
    move v5, p2

    .line 4
    const-string v1, "ZArchiver.iCMD"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v7, 0x1

    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    iget-object v6, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 20
    .line 21
    if-eqz v4, :cond_5

    .line 22
    .line 23
    iget-object v4, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 24
    .line 25
    iget-object v5, v0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 26
    .line 27
    invoke-virtual {v4, p0, v5}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 28
    .line 29
    .line 30
    iget-object v4, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 31
    .line 32
    iget-object v5, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 33
    .line 34
    if-nez v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const-string v5, "iTaskID"

    .line 43
    .line 44
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iget-object v8, v4, Lru/zdevs/zarchiver/a;->h:Lru/zdevs/zarchiver/a$a;

    .line 49
    .line 50
    const-string v9, "iData"

    .line 51
    .line 52
    const-string v10, "oData"

    .line 53
    .line 54
    const-string v11, "ZArchiver.iMES"

    .line 55
    .line 56
    const-string v12, "iAction"

    .line 57
    .line 58
    packed-switch v1, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    .line 64
    .line 65
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const/16 v5, 0x18

    .line 72
    .line 73
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 84
    .line 85
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const/16 v5, 0x15

    .line 99
    .line 100
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    const-string v5, "iErrorData"

    .line 104
    .line 105
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v5, "oErrorData"

    .line 110
    .line 111
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 115
    .line 116
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    .line 122
    .line 123
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const/16 v5, 0x8

    .line 130
    .line 131
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 142
    .line 143
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    .line 149
    .line 150
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    const/4 v3, 0x5

    .line 157
    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 161
    .line 162
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    .line 168
    .line 169
    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    const-string v5, "iTaskType"

    .line 179
    .line 180
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 188
    .line 189
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 190
    .line 191
    .line 192
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 193
    .line 194
    iget-object v5, v3, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    if-eqz v5, :cond_2

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    const/4 v7, 0x0

    .line 204
    :goto_1
    if-eqz v7, :cond_c

    .line 205
    .line 206
    const/16 v5, 0x16

    .line 207
    .line 208
    :try_start_0
    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    .line 210
    .line 211
    const-string v5, "iProgress"

    .line 212
    .line 213
    iget-object v7, v3, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 214
    .line 215
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    check-cast v7, Lru/zdevs/zarchiver/service/c;

    .line 220
    .line 221
    if-eqz v7, :cond_4

    .line 222
    .line 223
    invoke-interface {v7, v6}, Lru/zdevs/zarchiver/service/c;->GetProgPercent(I)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    const-string v5, "sText"

    .line 231
    .line 232
    iget-object v3, v3, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Lru/zdevs/zarchiver/service/c;

    .line 239
    .line 240
    if-eqz v3, :cond_3

    .line 241
    .line 242
    invoke-interface {v3, v6}, Lru/zdevs/zarchiver/service/c;->GetProgText(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    iget-object v3, v4, Lru/zdevs/zarchiver/a;->c:Lru/zdevs/zarchiver/ZArchiver;

    .line 250
    .line 251
    invoke-virtual {v8, v3, v1}, Lru/zdevs/zarchiver/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_4

    .line 255
    .line 256
    :cond_3
    new-instance v1, Landroid/os/RemoteException;

    .line 257
    .line 258
    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw v1

    .line 262
    :cond_4
    new-instance v1, Landroid/os/RemoteException;

    .line 263
    .line 264
    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    .line 265
    .line 266
    .line 267
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_5
    const-string v1, "android.intent.action.SEND"

    .line 269
    .line 270
    if-eqz v3, :cond_7

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    if-nez v4, :cond_6

    .line 281
    .line 282
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-eqz v4, :cond_7

    .line 293
    .line 294
    :cond_6
    const/4 v4, 0x1

    .line 295
    goto :goto_2

    .line 296
    :cond_7
    const/4 v4, 0x0

    .line 297
    :goto_2
    const/4 v8, 0x0

    .line 298
    iget-object v9, v0, Lb0/c;->c:Lw0/a;

    .line 299
    .line 300
    if-eqz v4, :cond_a

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_9

    .line 311
    .line 312
    const-string v1, "android.intent.extra.STREAM"

    .line 313
    .line 314
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    instance-of v4, v1, Landroid/net/Uri;

    .line 319
    .line 320
    if-eqz v4, :cond_9

    .line 321
    .line 322
    move-object v4, v1

    .line 323
    check-cast v4, Landroid/net/Uri;

    .line 324
    .line 325
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v10, "content"

    .line 330
    .line 331
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    if-eqz v1, :cond_8

    .line 336
    .line 337
    invoke-static {p0, v4}, Lv0/f;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v1}, La0/c;->E(Ljava/lang/String;)B

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    invoke-static {v1}, La0/c;->G(B)Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_9

    .line 350
    .line 351
    new-instance v10, La0/p0;

    .line 352
    .line 353
    iget v2, v6, Lru/zdevs/zarchiver/d;->e:I

    .line 354
    .line 355
    move-object v1, v10

    .line 356
    move-object v3, p1

    .line 357
    move v5, p2

    .line 358
    move/from16 v6, p3

    .line 359
    .line 360
    invoke-direct/range {v1 .. v6}, La0/p0;-><init>(ILandroid/content/Intent;Landroid/net/Uri;ZZ)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10, v8, v9}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 364
    .line 365
    .line 366
    return v7

    .line 367
    :cond_8
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    if-eqz v1, :cond_9

    .line 372
    .line 373
    invoke-static {v1}, La0/c;->E(Ljava/lang/String;)B

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    invoke-static {v4}, La0/c;->G(B)Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-eqz v4, :cond_9

    .line 382
    .line 383
    new-instance v2, La0/y;

    .line 384
    .line 385
    iget v3, v6, Lru/zdevs/zarchiver/d;->e:I

    .line 386
    .line 387
    invoke-direct {v2, v3, p2}, La0/y;-><init>(IZ)V

    .line 388
    .line 389
    .line 390
    new-instance v3, Lh0/h;

    .line 391
    .line 392
    const-string v4, "arch"

    .line 393
    .line 394
    const-string v5, "/"

    .line 395
    .line 396
    invoke-direct {v3, v4, v1, v5}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iput-object v3, v2, La0/y;->b:Lh0/h;

    .line 400
    .line 401
    invoke-virtual {p0, v2}, Lru/zdevs/zarchiver/ZArchiver;->b(Lw0/a$b;)V

    .line 402
    .line 403
    .line 404
    return v7

    .line 405
    :cond_9
    iget-object v1, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 406
    .line 407
    iget-object v4, v0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 408
    .line 409
    invoke-virtual {v1, p0, v4}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    new-instance v1, Lru/zdevs/zarchiver/a$c;

    .line 418
    .line 419
    invoke-direct {v1, p0, p1, p2}, Lru/zdevs/zarchiver/a$c;-><init>(Lru/zdevs/zarchiver/ZArchiver;Landroid/content/Intent;Z)V

    .line 420
    .line 421
    .line 422
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 423
    .line 424
    new-array v4, v2, [Ljava/lang/Void;

    .line 425
    .line 426
    invoke-virtual {v1, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 427
    .line 428
    .line 429
    return v2

    .line 430
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-nez v1, :cond_d

    .line 435
    .line 436
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    if-nez v1, :cond_b

    .line 441
    .line 442
    const/4 v1, 0x0

    .line 443
    goto :goto_3

    .line 444
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    const-string v4, "ZA_SHORTCUT"

    .line 449
    .line 450
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    :goto_3
    if-eqz v1, :cond_c

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :catch_0
    :cond_c
    :goto_4
    return v2

    .line 458
    :cond_d
    :goto_5
    new-instance v10, La0/p0;

    .line 459
    .line 460
    iget v2, v6, Lru/zdevs/zarchiver/d;->e:I

    .line 461
    .line 462
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    move-object v1, v10

    .line 467
    move-object v3, p1

    .line 468
    move v5, p2

    .line 469
    move/from16 v6, p3

    .line 470
    .line 471
    invoke-direct/range {v1 .. v6}, La0/p0;-><init>(ILandroid/content/Intent;Landroid/net/Uri;ZZ)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10, v8, v9}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 475
    .line 476
    .line 477
    return v7

    .line 478
    nop

    .line 479
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O(Lh0/h;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lh0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {p1}, Lh0/h;->m()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1}, Lh0/h;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p1, Lh0/h;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-le v0, v1, :cond_1

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lh0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object p1, p1, Lh0/h;->e:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p1, Lh0/h;->c:Ljava/lang/String;

    .line 51
    .line 52
    :goto_0
    const-string v0, "Android/"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_8

    .line 59
    .line 60
    invoke-static {}, Ln0/e;->h()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_8

    .line 69
    .line 70
    const-string v1, "~"

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1}, Lh0/h;->k()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    iget-object v0, p1, Lh0/h;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget-object p1, p1, Lh0/h;->e:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {v1}, Lt0/a;->d(Z)Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Lc0/e;

    .line 107
    .line 108
    iget-object v3, v2, Lc0/e;->c:Lh0/h;

    .line 109
    .line 110
    invoke-virtual {v3}, Lh0/h;->k()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    iget-object v3, v2, Lc0/e;->c:Lh0/h;

    .line 117
    .line 118
    iget-object v3, v3, Lh0/h;->e:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_3

    .line 125
    .line 126
    const-string p1, "/"

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v2, Lc0/e;->b:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_2

    .line 149
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object p1, v2, Lc0/e;->b:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_2

    .line 167
    :cond_5
    move-object p1, v0

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const-string p1, ""

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lh0/h;->t()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_8
    :goto_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 177
    .line 178
    invoke-static {v0, p1}, Lb0/c;->r(Landroid/view/View;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final P(ILjava/lang/String;[Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lw0/a;->f(III)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    iget-object v4, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 12
    .line 13
    aget-object v4, v4, p1

    .line 14
    .line 15
    iget-object v5, v4, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v5

    .line 18
    :try_start_0
    iput-object p2, v4, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p3, v4, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 21
    .line 22
    iput v2, v4, Lru/zdevs/zarchiver/b;->n:I

    .line 23
    .line 24
    new-instance v6, Ld0/i;

    .line 25
    .line 26
    invoke-direct {v6, v2}, Ld0/i;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v6, v4, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 30
    .line 31
    iget v6, v4, Lru/zdevs/zarchiver/b;->f:I

    .line 32
    .line 33
    or-int/lit8 v6, v6, 0x1

    .line 34
    .line 35
    iput v6, v4, Lru/zdevs/zarchiver/b;->f:I

    .line 36
    .line 37
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object v5, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 39
    .line 40
    iget-object v6, v1, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 41
    .line 42
    invoke-virtual {v5, v4, v6, v2, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 43
    .line 44
    .line 45
    iget v1, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 46
    .line 47
    if-ne p1, v1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 50
    .line 51
    if-nez p1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 57
    .line 58
    .line 59
    if-nez p4, :cond_1

    .line 60
    .line 61
    invoke-virtual {p0, v3}, Lb0/c;->s(I)V

    .line 62
    .line 63
    .line 64
    :cond_1
    if-nez p4, :cond_2

    .line 65
    .line 66
    const/16 p1, 0xd

    .line 67
    .line 68
    iget p4, v4, Lru/zdevs/zarchiver/b;->b:I

    .line 69
    .line 70
    invoke-virtual {v0, p1, v2, p4}, Lw0/a;->f(III)V

    .line 71
    .line 72
    .line 73
    new-instance p1, La0/t0;

    .line 74
    .line 75
    invoke-direct {p1, v4, p2, p3}, La0/t0;-><init>(Lru/zdevs/zarchiver/b;Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p0, v0}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method

.method public final Q(IZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Lw0/a;->f(III)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    iget-object v1, v0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 12
    .line 13
    aget-object p1, v1, p1

    .line 14
    .line 15
    iget-object v1, p1, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    :try_start_0
    iput-object p2, p1, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p1, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 24
    .line 25
    iput v2, p1, Lru/zdevs/zarchiver/b;->n:I

    .line 26
    .line 27
    iput-object p2, p1, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 28
    .line 29
    :cond_0
    iget p2, p1, Lru/zdevs/zarchiver/b;->f:I

    .line 30
    .line 31
    and-int/lit8 p2, p2, -0x2

    .line 32
    .line 33
    iput p2, p1, Lru/zdevs/zarchiver/b;->f:I

    .line 34
    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->b()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget p2, p1, Lru/zdevs/zarchiver/b;->f:I

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-static {p2, v1}, La0/c;->L(II)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    iget-object p2, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 53
    .line 54
    iget p1, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 55
    .line 56
    invoke-virtual {p0, p1, v2, p2}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-eqz p3, :cond_4

    .line 61
    .line 62
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 63
    .line 64
    iget-object p3, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 65
    .line 66
    invoke-virtual {p2, p1, p3, v2, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lb0/c;->s(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lb0/c;->t()V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_0
    return-void

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    throw p1
.end method

.method public final R(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0xb

    .line 8
    .line 9
    aput v4, v2, v3

    .line 10
    .line 11
    iget-object v4, v0, Lw0/a;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v0, v0, Lw0/a;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-array v5, v3, [Lw0/c;

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Lw0/c;

    .line 23
    .line 24
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    array-length v4, v0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v5, v4, :cond_2

    .line 28
    .line 29
    aget-object v6, v0, v5

    .line 30
    .line 31
    if-nez v6, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    aget v7, v2, v3

    .line 35
    .line 36
    invoke-virtual {v6}, Lw0/c;->j()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ne v6, v7, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    :goto_2
    if-eqz v1, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    new-instance v0, La0/x0;

    .line 51
    .line 52
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 53
    .line 54
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 55
    .line 56
    invoke-direct {v0, p1, v1}, La0/x0;-><init>(I[Lru/zdevs/zarchiver/b;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lb0/c;->c:Lw0/a;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1, p1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    goto :goto_4

    .line 69
    :goto_3
    throw p1

    .line 70
    :goto_4
    goto :goto_3
.end method

.method public final S(Landroid/view/ActionMode;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 5
    .line 6
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, v0, Ld0/h;->h:Ld0/b;

    .line 18
    .line 19
    iget v2, v2, Ld0/b;->a:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " / "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Ld0/h;->h:Ld0/b;

    .line 30
    .line 31
    invoke-virtual {v2}, Ld0/b;->c()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v0, Ld0/h;->h:Ld0/b;

    .line 46
    .line 47
    iget-wide v0, v0, Ld0/b;->b:J

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {v0, v1, v2, v3}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final T(IZZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    iget p1, v0, Lru/zdevs/zarchiver/d;->e:I

    .line 6
    .line 7
    :cond_0
    move v2, p1

    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    move v5, p1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, -0x1

    .line 19
    const/4 v5, -0x1

    .line 20
    :goto_0
    iget-object p1, v0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 21
    .line 22
    aget-object p1, p1, v2

    .line 23
    .line 24
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eqz p3, :cond_4

    .line 30
    .line 31
    iget-object p3, p1, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 32
    .line 33
    if-nez p3, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object p3, p0, Lb0/c;->c:Lw0/a;

    .line 37
    .line 38
    const/16 v3, 0xa

    .line 39
    .line 40
    invoke-virtual {p3, v3, v1, v2}, Lw0/a;->f(III)V

    .line 41
    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    new-instance v2, Lg0/y;

    .line 46
    .line 47
    const v3, 0x7f0c00ed

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v0, p0, v3, v1}, Lg0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 51
    .line 52
    .line 53
    const/4 v0, -0x2

    .line 54
    iput v0, v2, Lg0/i;->c:I

    .line 55
    .line 56
    new-instance v0, Lru/zdevs/zarchiver/ZArchiver$e;

    .line 57
    .line 58
    invoke-direct {v0}, Lru/zdevs/zarchiver/ZArchiver$e;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, v2, Lg0/i;->a:Lg0/i$c;

    .line 62
    .line 63
    invoke-virtual {v2}, Lg0/y;->t()V

    .line 64
    .line 65
    .line 66
    :cond_3
    new-instance v0, La0/u0;

    .line 67
    .line 68
    invoke-direct {v0, p1, p2, p4}, La0/u0;-><init>(Lru/zdevs/zarchiver/b;ZZ)V

    .line 69
    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {v0, p1, p3}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v3, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 77
    .line 78
    const/4 v4, 0x0

    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const/16 p1, 0x10

    .line 84
    .line 85
    :goto_1
    or-int/lit8 v6, p1, 0x1

    .line 86
    .line 87
    move-object v1, p0

    .line 88
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void
.end method

.method public final U(Z)V
    .locals 19

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 6
    .line 7
    .line 8
    move-result-object v11

    .line 9
    iget-wide v0, v11, Lru/zdevs/zarchiver/b;->j:J

    .line 10
    .line 11
    const-string v2, " ---"

    .line 12
    .line 13
    const-string v3, " ..."

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    const v6, 0x7f0c0073

    .line 18
    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    const-wide/16 v13, -0x2

    .line 22
    .line 23
    cmp-long v7, v0, v13

    .line 24
    .line 25
    if-eqz v7, :cond_2

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    cmp-long v7, v0, v4

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v0, v1, v12, v6}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_1
    move-object v6, v0

    .line 83
    const/4 v0, 0x4

    .line 84
    invoke-virtual {v11, v0}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v15, 0x0

    .line 89
    const-string v7, ": "

    .line 90
    .line 91
    const-string v9, " "

    .line 92
    .line 93
    const v8, 0x7f0c0077

    .line 94
    .line 95
    .line 96
    iget-object v13, v10, Lb0/c;->c:Lw0/a;

    .line 97
    .line 98
    iget v14, v11, Lru/zdevs/zarchiver/b;->b:I

    .line 99
    .line 100
    if-eqz v1, :cond_8

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const/high16 v3, -0x40800000    # -1.0f

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    const/high16 v4, 0x42c80000    # 100.0f

    .line 112
    .line 113
    :try_start_0
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v5, v0, Lf0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 120
    .line 121
    .line 122
    move-result-object v17

    .line 123
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 124
    .line 125
    .line 126
    iget-object v0, v0, Lf0/a;->b:Lf0/d;

    .line 127
    .line 128
    if-nez v0, :cond_3

    .line 129
    .line 130
    const/high16 v0, 0x3f800000    # 1.0f

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    invoke-interface {v0}, Lf0/d;->b()F

    .line 134
    .line 135
    .line 136
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 142
    .line 143
    .line 144
    mul-float v3, v0, v4

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 153
    .line 154
    .line 155
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    :catch_0
    nop

    .line 157
    :goto_3
    const v0, 0x7f0c005e

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    cmpl-float v0, v3, v4

    .line 168
    .line 169
    if-lez v0, :cond_4

    .line 170
    .line 171
    const/high16 v3, 0x42c80000    # 100.0f

    .line 172
    .line 173
    :cond_4
    const/4 v0, 0x0

    .line 174
    cmpg-float v5, v3, v0

    .line 175
    .line 176
    if-gez v5, :cond_5

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    mul-float v4, v4, v3

    .line 187
    .line 188
    float-to-int v0, v4

    .line 189
    int-to-long v4, v0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-static {v0, v4, v5, v12}, Lv0/h;->a(Ljava/lang/StringBuilder;JZ)V

    .line 196
    .line 197
    .line 198
    const-string v2, "%"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_6
    :goto_4
    iget-object v0, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 211
    .line 212
    iget-object v0, v0, Lh0/h;->e:Ljava/lang/String;

    .line 213
    .line 214
    const-string v2, "/"

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v2, ": /"

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    goto :goto_5

    .line 244
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v2, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 260
    .line 261
    invoke-virtual {v2}, Lh0/h;->e()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :goto_5
    move-object v4, v0

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    const v2, 0x7f0c0053

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v2, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 292
    .line 293
    iget-object v2, v2, Lh0/h;->c:Ljava/lang/String;

    .line 294
    .line 295
    invoke-static {v2}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    float-to-int v1, v3

    .line 311
    int-to-long v7, v1

    .line 312
    const-wide/16 v17, 0x64

    .line 313
    .line 314
    move-object/from16 v1, p0

    .line 315
    .line 316
    move-object v3, v0

    .line 317
    move-object v5, v6

    .line 318
    move-wide v6, v7

    .line 319
    const/4 v12, 0x0

    .line 320
    move-wide/from16 v8, v17

    .line 321
    .line 322
    invoke-virtual/range {v1 .. v9}, Lb0/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 323
    .line 324
    .line 325
    const/16 v16, 0x1

    .line 326
    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :cond_8
    const/4 v12, 0x0

    .line 330
    if-eqz p1, :cond_9

    .line 331
    .line 332
    iget-wide v1, v11, Lru/zdevs/zarchiver/b;->l:J

    .line 333
    .line 334
    cmp-long v16, v1, v4

    .line 335
    .line 336
    if-nez v16, :cond_9

    .line 337
    .line 338
    invoke-virtual {v13, v0, v12, v14}, Lw0/a;->f(III)V

    .line 339
    .line 340
    .line 341
    new-instance v0, La0/f0;

    .line 342
    .line 343
    iget-object v1, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 344
    .line 345
    invoke-direct {v0, v1, v14}, La0/f0;-><init>(Lh0/h;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v10, v13}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 349
    .line 350
    .line 351
    :cond_9
    const v0, 0x7f0c0060

    .line 352
    .line 353
    .line 354
    if-eqz p1, :cond_a

    .line 355
    .line 356
    iget-wide v1, v11, Lru/zdevs/zarchiver/b;->l:J

    .line 357
    .line 358
    cmp-long v16, v1, v4

    .line 359
    .line 360
    if-eqz v16, :cond_a

    .line 361
    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget-wide v2, v11, Lru/zdevs/zarchiver/b;->k:J

    .line 378
    .line 379
    const/4 v9, 0x1

    .line 380
    invoke-static {v2, v3, v9, v15}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v0, "/\n"

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-wide v2, v11, Lru/zdevs/zarchiver/b;->l:J

    .line 393
    .line 394
    invoke-static {v2, v3, v9, v15}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    goto :goto_6

    .line 406
    :cond_a
    const/4 v9, 0x1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    :goto_6
    move-object v3, v0

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    .line 428
    .line 429
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .line 431
    .line 432
    const v1, 0x7f0c0075

    .line 433
    .line 434
    .line 435
    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const/16 v1, 0x20

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    iget-object v1, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 474
    .line 475
    invoke-virtual {v1}, Lh0/h;->e()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    const-wide/16 v7, 0x0

    .line 487
    .line 488
    const-wide/16 v17, 0x0

    .line 489
    .line 490
    move-object/from16 v1, p0

    .line 491
    .line 492
    move-object v5, v6

    .line 493
    move-wide v6, v7

    .line 494
    const/16 v16, 0x1

    .line 495
    .line 496
    move-wide/from16 v8, v17

    .line 497
    .line 498
    invoke-virtual/range {v1 .. v9}, Lb0/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 499
    .line 500
    .line 501
    :goto_7
    if-nez p1, :cond_b

    .line 502
    .line 503
    return-void

    .line 504
    :cond_b
    iget-object v0, v10, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 505
    .line 506
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 507
    .line 508
    if-eqz v1, :cond_c

    .line 509
    .line 510
    goto :goto_8

    .line 511
    :cond_c
    const/16 v16, 0x0

    .line 512
    .line 513
    :goto_8
    if-eqz v16, :cond_e

    .line 514
    .line 515
    iget-wide v1, v11, Lru/zdevs/zarchiver/b;->j:J

    .line 516
    .line 517
    const-wide/16 v3, -0x2

    .line 518
    .line 519
    cmp-long v5, v1, v3

    .line 520
    .line 521
    if-nez v5, :cond_d

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_d
    iget-object v15, v11, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 525
    .line 526
    :goto_9
    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    goto :goto_a

    .line 530
    :cond_e
    const-wide/16 v3, -0x2

    .line 531
    .line 532
    iget-wide v0, v11, Lru/zdevs/zarchiver/b;->j:J

    .line 533
    .line 534
    cmp-long v2, v0, v3

    .line 535
    .line 536
    if-nez v2, :cond_f

    .line 537
    .line 538
    const/4 v0, 0x3

    .line 539
    invoke-virtual {v13, v0, v12, v14}, Lw0/a;->f(III)V

    .line 540
    .line 541
    .line 542
    new-instance v0, La0/i0;

    .line 543
    .line 544
    iget-object v1, v11, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 545
    .line 546
    invoke-direct {v0, v1, v14}, La0/i0;-><init>(Lh0/h;I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v10, v13}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 550
    .line 551
    .line 552
    :cond_f
    :goto_a
    return-void
.end method

.method public final V(Lru/zdevs/zarchiver/b;Z)V
    .locals 2

    .line 1
    iget-object v0, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZArchiver;->O(Lh0/h;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZArchiver;->U(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lb0/c;->t()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 22
    .line 23
    invoke-virtual {p2}, Lh0/h;->o()Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->f()B

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p2, 0x1

    .line 35
    :goto_0
    invoke-virtual {p0, p2}, Lb0/c;->n(B)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 39
    .line 40
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->e()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p2, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setMessage(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 48
    .line 49
    iget-char p2, p2, Lru/zdevs/zarchiver/d;->a:C

    .line 50
    .line 51
    and-int/lit8 p2, p2, 0x3

    .line 52
    .line 53
    int-to-char p2, p2

    .line 54
    if-ne p2, v0, :cond_2

    .line 55
    .line 56
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 57
    .line 58
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p2}, Ld0/h;->h()V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2, v0}, Ld0/h;->m(Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 78
    .line 79
    iget-object v0, p1, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, v0, p1}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 88
    .line 89
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->b()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(Lw0/a$b;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lw0/a$b;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "%1"

    .line 8
    .line 9
    iget-object v7, v8, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, -0x2

    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    :pswitch_0
    goto/16 :goto_9

    .line 21
    .line 22
    :pswitch_1
    move-object/from16 v0, p1

    .line 23
    .line 24
    check-cast v0, La0/a0;

    .line 25
    .line 26
    new-instance v1, La0/a;

    .line 27
    .line 28
    iget-object v0, v0, La0/a0;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1, v0, v6}, La0/a;-><init>(Ljava/util/ArrayList;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, La0/a;->h()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :cond_0
    iget-object v0, v7, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 42
    .line 43
    iput-object v1, v0, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 44
    .line 45
    const/16 v0, 0x41

    .line 46
    .line 47
    invoke-virtual {v8, v0}, Lru/zdevs/zarchiver/ZArchiver;->F(C)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_9

    .line 51
    .line 52
    :pswitch_2
    move-object/from16 v0, p1

    .line 53
    .line 54
    check-cast v0, La0/c0;

    .line 55
    .line 56
    const/16 v1, 0x17

    .line 57
    .line 58
    invoke-virtual {v7, v4, v5, v1}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lg0/y;

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1}, Lg0/y;->e()V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object v1, v0, La0/c0;->c:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    iget v1, v0, La0/c0;->b:I

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    if-ne v1, v2, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    if-nez v1, :cond_24

    .line 80
    .line 81
    const v0, 0x7f0c00ee

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_3
    :goto_0
    iget-object v1, v0, La0/c0;->a:Lh0/h;

    .line 90
    .line 91
    invoke-virtual {v1}, Lh0/h;->e()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Le0/a$b;

    .line 96
    .line 97
    invoke-direct {v2, v1}, Le0/a$b;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v2, Le0/a$b;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    iget-object v0, v0, La0/c0;->c:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    new-instance v3, Le0/a$a;

    .line 107
    .line 108
    invoke-direct {v3, v6, v0}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    new-instance v0, Le0/a$a;

    .line 115
    .line 116
    const v3, 0x7f0c00ef

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-direct {v0, v6, v3}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    new-instance v0, Le0/a$a;

    .line 131
    .line 132
    const-string v3, "Root is required to XAPK expansions"

    .line 133
    .line 134
    invoke-direct {v0, v6, v3}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    new-instance v0, Le0/a$a;

    .line 141
    .line 142
    const-string v3, "App is not fully installed"

    .line 143
    .line 144
    invoke-direct {v0, v6, v3}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    :goto_1
    new-array v0, v5, [Le0/a$b;

    .line 151
    .line 152
    aput-object v2, v0, v6

    .line 153
    .line 154
    new-instance v1, Lg0/n;

    .line 155
    .line 156
    invoke-direct {v1, v7, v8, v0}, Lg0/n;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Le0/a$b;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v1, Lg0/n;->g:Landroid/app/AlertDialog;

    .line 160
    .line 161
    if-eqz v0, :cond_24

    .line 162
    .line 163
    invoke-static {v0}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :pswitch_3
    move-object/from16 v0, p1

    .line 169
    .line 170
    check-cast v0, La0/v;

    .line 171
    .line 172
    iget-object v1, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 173
    .line 174
    iget v2, v0, La0/v;->a:I

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_24

    .line 181
    .line 182
    invoke-virtual {v1}, Ld0/h;->c()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    const v3, 0x7f08002e

    .line 187
    .line 188
    .line 189
    if-ne v2, v3, :cond_24

    .line 190
    .line 191
    iget-object v0, v0, La0/v;->b:Ld0/f;

    .line 192
    .line 193
    iget-object v2, v1, Ld0/h;->h:Ld0/b;

    .line 194
    .line 195
    invoke-virtual {v2, v0}, Ld0/b;->a(Ld0/f;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_9

    .line 202
    .line 203
    :pswitch_4
    move-object/from16 v0, p1

    .line 204
    .line 205
    check-cast v0, La0/w;

    .line 206
    .line 207
    iget v1, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 208
    .line 209
    iget v2, v0, La0/w;->a:I

    .line 210
    .line 211
    if-eq v1, v2, :cond_5

    .line 212
    .line 213
    goto/16 :goto_9

    .line 214
    .line 215
    :cond_5
    iget v1, v0, La0/w;->b:I

    .line 216
    .line 217
    const/16 v2, 0x64

    .line 218
    .line 219
    if-ne v1, v2, :cond_6

    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Lb0/c;->t()V

    .line 222
    .line 223
    .line 224
    iget-object v1, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 225
    .line 226
    iget-object v2, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 227
    .line 228
    iget v0, v0, La0/w;->a:I

    .line 229
    .line 230
    aget-object v0, v2, v0

    .line 231
    .line 232
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->e()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setMessage(I)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_6
    mul-int/lit16 v1, v1, 0x2710

    .line 242
    .line 243
    div-int/2addr v1, v2

    .line 244
    invoke-virtual {v8, v1}, Lb0/c;->s(I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_9

    .line 248
    .line 249
    :pswitch_5
    const v0, 0x7f070083

    .line 250
    .line 251
    .line 252
    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/ListView;

    .line 257
    .line 258
    if-eqz v0, :cond_24

    .line 259
    .line 260
    new-instance v1, Lc0/d;

    .line 261
    .line 262
    invoke-direct {v1, v8, v6, v6}, Lc0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_9

    .line 269
    .line 270
    :pswitch_6
    move-object/from16 v0, p1

    .line 271
    .line 272
    check-cast v0, La0/y;

    .line 273
    .line 274
    iget-object v1, v0, La0/y;->b:Lh0/h;

    .line 275
    .line 276
    if-nez v1, :cond_7

    .line 277
    .line 278
    const-string v0, "Failed to determine path"

    .line 279
    .line 280
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_9

    .line 284
    .line 285
    :cond_7
    iget-object v1, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 286
    .line 287
    iget v3, v0, La0/y;->a:I

    .line 288
    .line 289
    aget-object v9, v1, v3

    .line 290
    .line 291
    iget-boolean v1, v0, La0/y;->e:Z

    .line 292
    .line 293
    iput-boolean v1, v8, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 294
    .line 295
    iget-boolean v10, v0, La0/y;->c:Z

    .line 296
    .line 297
    if-nez v10, :cond_8

    .line 298
    .line 299
    iget-char v1, v7, Lru/zdevs/zarchiver/d;->a:C

    .line 300
    .line 301
    and-int/lit8 v1, v1, 0x3

    .line 302
    .line 303
    int-to-char v1, v1

    .line 304
    iget-object v3, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 305
    .line 306
    invoke-virtual {v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {v9, v1, v3}, Lru/zdevs/zarchiver/b;->m(CI)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, La0/y;->b:Lh0/h;

    .line 314
    .line 315
    invoke-virtual {v9, v1, v6, v6}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 316
    .line 317
    .line 318
    :cond_8
    iget v3, v0, La0/y;->a:I

    .line 319
    .line 320
    iget-object v4, v0, La0/y;->b:Lh0/h;

    .line 321
    .line 322
    iget-object v0, v0, La0/y;->d:Ljava/lang/String;

    .line 323
    .line 324
    const/4 v5, -0x1

    .line 325
    if-nez v0, :cond_9

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_9
    const/16 v6, 0x8

    .line 329
    .line 330
    :goto_2
    move-object/from16 v1, p0

    .line 331
    .line 332
    move v2, v3

    .line 333
    move-object v3, v4

    .line 334
    move-object v4, v0

    .line 335
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 336
    .line 337
    .line 338
    if-eqz v10, :cond_24

    .line 339
    .line 340
    iget-object v0, v9, Lru/zdevs/zarchiver/b;->t:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    .line 344
    .line 345
    goto/16 :goto_9

    .line 346
    .line 347
    :pswitch_7
    move-object/from16 v0, p1

    .line 348
    .line 349
    check-cast v0, La0/u;

    .line 350
    .line 351
    iget-object v1, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 352
    .line 353
    iget v2, v0, La0/u;->a:I

    .line 354
    .line 355
    aget-object v1, v1, v2

    .line 356
    .line 357
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-nez v2, :cond_a

    .line 362
    .line 363
    iget v2, v0, La0/u;->a:I

    .line 364
    .line 365
    iget-object v3, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 366
    .line 367
    iget-object v4, v0, La0/u;->b:Ljava/lang/String;

    .line 368
    .line 369
    const/4 v5, -0x1

    .line 370
    const/4 v6, 0x1

    .line 371
    move-object/from16 v1, p0

    .line 372
    .line 373
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_9

    .line 377
    .line 378
    :cond_a
    iget-object v0, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 379
    .line 380
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_24

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_9

    .line 390
    .line 391
    :pswitch_8
    invoke-virtual {v7, v3, v5, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    check-cast v0, Lg0/y;

    .line 396
    .line 397
    if-eqz v0, :cond_b

    .line 398
    .line 399
    invoke-virtual {v0}, Lg0/y;->e()V

    .line 400
    .line 401
    .line 402
    :cond_b
    iget-object v0, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 403
    .line 404
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 405
    .line 406
    if-eqz v0, :cond_c

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    .line 410
    .line 411
    :cond_c
    move-object/from16 v0, p1

    .line 412
    .line 413
    check-cast v0, La0/x;

    .line 414
    .line 415
    iget-object v1, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 416
    .line 417
    iget-object v2, v7, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 418
    .line 419
    iget-object v3, v0, La0/x;->a:Lru/zdevs/zarchiver/b;

    .line 420
    .line 421
    iget v4, v3, Lru/zdevs/zarchiver/b;->b:I

    .line 422
    .line 423
    invoke-virtual {v1, v4}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 424
    .line 425
    .line 426
    move-result v4

    .line 427
    invoke-virtual {v1, v3, v2, v4, v6}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 428
    .line 429
    .line 430
    iget-boolean v1, v0, La0/x;->b:Z

    .line 431
    .line 432
    if-eqz v1, :cond_24

    .line 433
    .line 434
    iget-object v0, v0, La0/x;->a:Lru/zdevs/zarchiver/b;

    .line 435
    .line 436
    iget v0, v0, Lru/zdevs/zarchiver/b;->b:I

    .line 437
    .line 438
    invoke-virtual {v8, v0, v6, v6}, Lru/zdevs/zarchiver/ZArchiver;->d(IIZ)V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_9

    .line 442
    .line 443
    :pswitch_9
    move-object/from16 v0, p1

    .line 444
    .line 445
    check-cast v0, La0/p;

    .line 446
    .line 447
    invoke-virtual {v7, v3, v5, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    check-cast v1, Lg0/y;

    .line 452
    .line 453
    if-eqz v1, :cond_d

    .line 454
    .line 455
    invoke-virtual {v1}, Lg0/y;->e()V

    .line 456
    .line 457
    .line 458
    :cond_d
    iget-object v1, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 459
    .line 460
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 461
    .line 462
    if-eqz v1, :cond_e

    .line 463
    .line 464
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 465
    .line 466
    .line 467
    :cond_e
    iget-object v1, v0, La0/p;->h:Ld0/b;

    .line 468
    .line 469
    if-nez v1, :cond_f

    .line 470
    .line 471
    goto/16 :goto_9

    .line 472
    .line 473
    :cond_f
    iget-object v9, v0, La0/p;->b:Lh0/h;

    .line 474
    .line 475
    invoke-virtual {v9}, Lh0/h;->g()Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    iget v3, v0, La0/p;->a:I

    .line 480
    .line 481
    if-eqz v1, :cond_10

    .line 482
    .line 483
    iget v1, v0, La0/p;->f:I

    .line 484
    .line 485
    const v4, 0x7f0c00dc

    .line 486
    .line 487
    .line 488
    if-ne v1, v4, :cond_10

    .line 489
    .line 490
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 491
    .line 492
    .line 493
    iget v0, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 494
    .line 495
    if-ne v3, v0, :cond_24

    .line 496
    .line 497
    invoke-virtual {v7}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v8, v0}, Lru/zdevs/zarchiver/ZArchiver;->O(Lh0/h;)V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_9

    .line 505
    .line 506
    :cond_10
    iget-object v1, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 507
    .line 508
    aget-object v1, v1, v3

    .line 509
    .line 510
    const/4 v4, 0x4

    .line 511
    invoke-virtual {v1, v4}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 512
    .line 513
    .line 514
    move-result v10

    .line 515
    iget-object v11, v1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 516
    .line 517
    iget v11, v11, Ld0/b;->a:I

    .line 518
    .line 519
    if-lez v11, :cond_11

    .line 520
    .line 521
    const/4 v11, 0x1

    .line 522
    goto :goto_3

    .line 523
    :cond_11
    const/4 v11, 0x0

    .line 524
    :goto_3
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 525
    .line 526
    .line 527
    move-result v12

    .line 528
    iget v13, v1, Lru/zdevs/zarchiver/b;->b:I

    .line 529
    .line 530
    if-eqz v12, :cond_12

    .line 531
    .line 532
    iget v12, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 533
    .line 534
    if-ne v13, v12, :cond_12

    .line 535
    .line 536
    const/16 v12, 0x2000

    .line 537
    .line 538
    invoke-static {v12}, Lt0/b;->l(I)Z

    .line 539
    .line 540
    .line 541
    move-result v12

    .line 542
    invoke-virtual {v8, v3, v12, v6}, Lru/zdevs/zarchiver/ZArchiver;->Q(IZZ)V

    .line 543
    .line 544
    .line 545
    :cond_12
    iget v12, v0, La0/p;->c:I

    .line 546
    .line 547
    const/16 v14, 0x300

    .line 548
    .line 549
    invoke-static {v12, v14}, La0/c;->L(II)Z

    .line 550
    .line 551
    .line 552
    move-result v12

    .line 553
    if-eqz v12, :cond_13

    .line 554
    .line 555
    new-instance v12, La0/e0;

    .line 556
    .line 557
    iget-object v14, v0, La0/p;->h:Ld0/b;

    .line 558
    .line 559
    iget v15, v0, La0/p;->c:I

    .line 560
    .line 561
    invoke-direct {v12, v9, v14, v15, v13}, La0/e0;-><init>(Lh0/h;Ld0/b;II)V

    .line 562
    .line 563
    .line 564
    iget-object v14, v8, Lb0/c;->c:Lw0/a;

    .line 565
    .line 566
    invoke-virtual {v12, v8, v14}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 567
    .line 568
    .line 569
    :cond_13
    iget-object v12, v0, La0/p;->h:Ld0/b;

    .line 570
    .line 571
    iget-object v14, v0, La0/p;->i:Ld0/a;

    .line 572
    .line 573
    iget-object v15, v1, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 574
    .line 575
    monitor-enter v15

    .line 576
    :try_start_0
    iput-object v12, v1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 577
    .line 578
    iput-object v14, v1, Lru/zdevs/zarchiver/b;->s:Ld0/a;

    .line 579
    .line 580
    iget v12, v1, Lru/zdevs/zarchiver/b;->f:I

    .line 581
    .line 582
    and-int/lit8 v12, v12, -0x3

    .line 583
    .line 584
    iput v12, v1, Lru/zdevs/zarchiver/b;->f:I

    .line 585
    .line 586
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    iget-byte v12, v0, La0/p;->j:B

    .line 588
    .line 589
    iget v14, v0, La0/p;->f:I

    .line 590
    .line 591
    invoke-virtual {v1, v9, v12, v14}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 592
    .line 593
    .line 594
    iget-object v12, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 595
    .line 596
    iget-object v14, v7, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 597
    .line 598
    iget v15, v0, La0/p;->d:I

    .line 599
    .line 600
    iget v2, v0, La0/p;->c:I

    .line 601
    .line 602
    invoke-virtual {v12, v1, v14, v15, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 603
    .line 604
    .line 605
    iget v2, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 606
    .line 607
    if-ne v13, v2, :cond_18

    .line 608
    .line 609
    invoke-virtual {v9}, Lh0/h;->o()Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-eqz v2, :cond_14

    .line 614
    .line 615
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->f()B

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    invoke-virtual {v8, v1}, Lb0/c;->n(B)V

    .line 620
    .line 621
    .line 622
    goto :goto_4

    .line 623
    :cond_14
    invoke-virtual {v8, v5}, Lb0/c;->n(B)V

    .line 624
    .line 625
    .line 626
    :goto_4
    invoke-virtual {v8, v5}, Lru/zdevs/zarchiver/ZArchiver;->U(Z)V

    .line 627
    .line 628
    .line 629
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v7, v4}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eq v10, v1, :cond_16

    .line 637
    .line 638
    xor-int/lit8 v1, v10, 0x1

    .line 639
    .line 640
    iget-object v2, v8, Lb0/c;->b:Landroid/view/ActionMode;

    .line 641
    .line 642
    if-nez v2, :cond_15

    .line 643
    .line 644
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 645
    .line 646
    .line 647
    :cond_15
    if-nez v1, :cond_16

    .line 648
    .line 649
    new-instance v1, La0/l;

    .line 650
    .line 651
    invoke-direct {v1}, La0/l;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-static {v1}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 655
    .line 656
    .line 657
    iget-object v1, v8, Lb0/c;->b:Landroid/view/ActionMode;

    .line 658
    .line 659
    if-nez v1, :cond_16

    .line 660
    .line 661
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v1}, Le0/h;->a()V

    .line 666
    .line 667
    .line 668
    :cond_16
    if-eqz v11, :cond_17

    .line 669
    .line 670
    iget-object v1, v0, La0/p;->h:Ld0/b;

    .line 671
    .line 672
    iget v1, v1, Ld0/b;->a:I

    .line 673
    .line 674
    if-nez v1, :cond_17

    .line 675
    .line 676
    invoke-virtual {v8, v13, v6, v6}, Lru/zdevs/zarchiver/ZArchiver;->d(IIZ)V

    .line 677
    .line 678
    .line 679
    :cond_17
    iget v1, v0, La0/p;->c:I

    .line 680
    .line 681
    const/16 v2, 0x8

    .line 682
    .line 683
    invoke-static {v1, v2}, La0/c;->K(II)Z

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    if-eqz v1, :cond_18

    .line 688
    .line 689
    iget-object v1, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 690
    .line 691
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 692
    .line 693
    aget-object v2, v1, v3

    .line 694
    .line 695
    const/4 v3, 0x0

    .line 696
    iget v4, v0, La0/p;->d:I

    .line 697
    .line 698
    int-to-long v5, v4

    .line 699
    move-object/from16 v1, p0

    .line 700
    .line 701
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 702
    .line 703
    .line 704
    :cond_18
    iget-object v5, v0, La0/p;->g:Lx0/d$a;

    .line 705
    .line 706
    if-eqz v5, :cond_19

    .line 707
    .line 708
    const/4 v3, 0x0

    .line 709
    const/4 v0, 0x0

    .line 710
    const/4 v6, 0x0

    .line 711
    move-object v1, v7

    .line 712
    move-object/from16 v2, p0

    .line 713
    .line 714
    move v4, v13

    .line 715
    move-object v7, v0

    .line 716
    invoke-static/range {v1 .. v7}, Lg0/s;->t(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILx0/d$a;ILjava/lang/String;)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_9

    .line 720
    .line 721
    :cond_19
    iget-boolean v1, v0, La0/p;->e:Z

    .line 722
    .line 723
    if-nez v1, :cond_24

    .line 724
    .line 725
    iget v0, v0, La0/p;->f:I

    .line 726
    .line 727
    const v1, 0x7f0c00d7

    .line 728
    .line 729
    .line 730
    if-ne v0, v1, :cond_24

    .line 731
    .line 732
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 733
    .line 734
    const/16 v1, 0x1e

    .line 735
    .line 736
    if-lt v0, v1, :cond_24

    .line 737
    .line 738
    const/high16 v0, 0x4000000

    .line 739
    .line 740
    invoke-static {v0}, Lt0/b;->f(I)Z

    .line 741
    .line 742
    .line 743
    move-result v0

    .line 744
    if-nez v0, :cond_24

    .line 745
    .line 746
    iget-object v0, v9, Lh0/h;->c:Ljava/lang/String;

    .line 747
    .line 748
    invoke-virtual {v8, v13, v0}, Lru/zdevs/zarchiver/ZArchiver;->x(ILjava/lang/String;)Z

    .line 749
    .line 750
    .line 751
    goto/16 :goto_9

    .line 752
    .line 753
    :catchall_0
    move-exception v0

    .line 754
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    throw v0

    .line 756
    :pswitch_a
    :try_start_2
    move-object/from16 v0, p1

    .line 757
    .line 758
    check-cast v0, La0/q;

    .line 759
    .line 760
    iget v1, v0, La0/q;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 761
    .line 762
    iget-wide v2, v0, La0/q;->b:J

    .line 763
    .line 764
    :try_start_3
    iget-object v0, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 765
    .line 766
    aget-object v0, v0, v1

    .line 767
    .line 768
    iput-wide v2, v0, Lru/zdevs/zarchiver/b;->j:J

    .line 769
    .line 770
    iget v0, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 771
    .line 772
    if-eq v0, v1, :cond_1a

    .line 773
    .line 774
    goto/16 :goto_9

    .line 775
    .line 776
    :cond_1a
    const v0, 0x7f0700d1

    .line 777
    .line 778
    .line 779
    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    check-cast v0, Landroid/widget/TextView;

    .line 784
    .line 785
    if-eqz v0, :cond_24

    .line 786
    .line 787
    const-wide/16 v6, -0x1

    .line 788
    .line 789
    const v1, 0x7f0c0073

    .line 790
    .line 791
    .line 792
    cmp-long v4, v2, v6

    .line 793
    .line 794
    if-eqz v4, :cond_1b

    .line 795
    .line 796
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-static {v2, v3, v5, v1}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    goto :goto_5

    .line 805
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 806
    .line 807
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .line 809
    .line 810
    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    const-string v1, " ---"

    .line 818
    .line 819
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_9

    .line 830
    .line 831
    :pswitch_b
    move-object/from16 v0, p1

    .line 832
    .line 833
    check-cast v0, La0/o;

    .line 834
    .line 835
    iget v1, v0, La0/o;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 836
    .line 837
    iget-object v0, v0, La0/o;->b:Lh0/e$a;

    .line 838
    .line 839
    :try_start_4
    iget-object v2, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 840
    .line 841
    aget-object v1, v2, v1

    .line 842
    .line 843
    iget-wide v2, v0, Lh0/e$a;->a:J

    .line 844
    .line 845
    iput-wide v2, v1, Lru/zdevs/zarchiver/b;->k:J

    .line 846
    .line 847
    iget-wide v2, v0, Lh0/e$a;->b:J

    .line 848
    .line 849
    iput-wide v2, v1, Lru/zdevs/zarchiver/b;->l:J

    .line 850
    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 854
    .line 855
    .line 856
    const v2, 0x7f0c0060

    .line 857
    .line 858
    .line 859
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    const-string v2, " "

    .line 867
    .line 868
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    iget-wide v2, v0, Lh0/e$a;->a:J

    .line 872
    .line 873
    const/4 v4, 0x0

    .line 874
    invoke-static {v2, v3, v5, v4}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v2, "/\n"

    .line 882
    .line 883
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    iget-wide v2, v0, Lh0/e$a;->b:J

    .line 887
    .line 888
    invoke-static {v2, v3, v5, v4}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v2

    .line 892
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 896
    .line 897
    .line 898
    move-result-object v2

    .line 899
    iget-wide v5, v0, Lh0/e$a;->b:J

    .line 900
    .line 901
    iget-wide v0, v0, Lh0/e$a;->a:J

    .line 902
    .line 903
    sub-long v3, v5, v0

    .line 904
    .line 905
    move-object/from16 v1, p0

    .line 906
    .line 907
    invoke-virtual/range {v1 .. v6}, Lb0/c;->p(Ljava/lang/String;JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 908
    .line 909
    .line 910
    goto/16 :goto_9

    .line 911
    .line 912
    :pswitch_c
    move-object/from16 v0, p1

    .line 913
    .line 914
    check-cast v0, La0/r;

    .line 915
    .line 916
    iget-char v1, v7, Lru/zdevs/zarchiver/d;->a:C

    .line 917
    .line 918
    and-int/lit8 v1, v1, 0x3

    .line 919
    .line 920
    int-to-char v1, v1

    .line 921
    if-ne v1, v5, :cond_1c

    .line 922
    .line 923
    iget-object v0, v0, La0/r;->a:Lh0/h;

    .line 924
    .line 925
    goto :goto_6

    .line 926
    :cond_1c
    invoke-virtual {v7}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 927
    .line 928
    .line 929
    move-result-object v0

    .line 930
    :goto_6
    move-object v3, v0

    .line 931
    iget v2, v7, Lru/zdevs/zarchiver/d;->e:I

    .line 932
    .line 933
    const/4 v4, 0x0

    .line 934
    iget-object v0, v8, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 935
    .line 936
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    const/16 v6, 0x10

    .line 941
    .line 942
    move-object/from16 v1, p0

    .line 943
    .line 944
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 945
    .line 946
    .line 947
    goto/16 :goto_9

    .line 948
    .line 949
    :pswitch_d
    move-object/from16 v0, p1

    .line 950
    .line 951
    check-cast v0, La0/z;

    .line 952
    .line 953
    iget-object v1, v0, La0/z;->a:Ljava/lang/String;

    .line 954
    .line 955
    if-eqz v1, :cond_1d

    .line 956
    .line 957
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_9

    .line 961
    .line 962
    :cond_1d
    iget v0, v0, La0/z;->b:I

    .line 963
    .line 964
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 965
    .line 966
    .line 967
    goto/16 :goto_9

    .line 968
    .line 969
    :pswitch_e
    move-object/from16 v0, p1

    .line 970
    .line 971
    check-cast v0, La0/b0;

    .line 972
    .line 973
    iget v0, v0, La0/b0;->a:I

    .line 974
    .line 975
    invoke-virtual {v8, v0, v6, v5, v6}, Lru/zdevs/zarchiver/ZArchiver;->T(IZZZ)V

    .line 976
    .line 977
    .line 978
    goto/16 :goto_9

    .line 979
    .line 980
    :pswitch_f
    move-object/from16 v0, p1

    .line 981
    .line 982
    check-cast v0, La0/t;

    .line 983
    .line 984
    iget v2, v0, La0/t;->d:I

    .line 985
    .line 986
    iget-object v4, v0, La0/t;->a:Ljava/lang/String;

    .line 987
    .line 988
    if-nez v2, :cond_21

    .line 989
    .line 990
    const v2, 0x7f0c00f9

    .line 991
    .line 992
    .line 993
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v2

    .line 997
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v1

    .line 1001
    iget-boolean v0, v0, La0/t;->c:Z

    .line 1002
    .line 1003
    if-eqz v0, :cond_1e

    .line 1004
    .line 1005
    const-string v0, "RW"

    .line 1006
    .line 1007
    goto :goto_7

    .line 1008
    :cond_1e
    const-string v0, "RO"

    .line 1009
    .line 1010
    :goto_7
    const-string v2, "%2"

    .line 1011
    .line 1012
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    iget-object v0, v7, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 1020
    .line 1021
    aget-object v1, v0, v6

    .line 1022
    .line 1023
    if-eqz v1, :cond_1f

    .line 1024
    .line 1025
    iput-byte v6, v1, Lru/zdevs/zarchiver/b;->d:B

    .line 1026
    .line 1027
    :cond_1f
    aget-object v0, v0, v5

    .line 1028
    .line 1029
    if-eqz v0, :cond_20

    .line 1030
    .line 1031
    iput-byte v6, v0, Lru/zdevs/zarchiver/b;->d:B

    .line 1032
    .line 1033
    :cond_20
    iget-char v0, v7, Lru/zdevs/zarchiver/d;->a:C

    .line 1034
    .line 1035
    and-int/lit8 v0, v0, 0x3

    .line 1036
    .line 1037
    int-to-char v0, v0

    .line 1038
    if-nez v0, :cond_24

    .line 1039
    .line 1040
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 1041
    .line 1042
    .line 1043
    goto/16 :goto_9

    .line 1044
    .line 1045
    :cond_21
    if-ne v2, v3, :cond_22

    .line 1046
    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .line 1051
    .line 1052
    iget-object v0, v0, La0/t;->b:Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    .line 1057
    const-string v0, " device has the SHARED_BLOCKS function, remounting to RW is not possible"

    .line 1058
    .line 1059
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_9

    .line 1070
    :cond_22
    iget-object v0, v0, La0/t;->e:Ljava/lang/String;

    .line 1071
    .line 1072
    if-nez v0, :cond_23

    .line 1073
    .line 1074
    const v0, 0x7f0c00e8

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_9

    .line 1089
    :cond_23
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    goto :goto_9

    .line 1093
    :pswitch_10
    move-object/from16 v0, p1

    .line 1094
    .line 1095
    check-cast v0, La0/s;

    .line 1096
    .line 1097
    iget-object v0, v0, La0/s;->a:Ljava/util/List;

    .line 1098
    .line 1099
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v2

    .line 1107
    if-eqz v2, :cond_24

    .line 1108
    .line 1109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    check-cast v2, Ljava/io/File;

    .line 1114
    .line 1115
    const v3, 0x7f0c010a

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v4

    .line 1126
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    new-instance v4, Lg0/w;

    .line 1131
    .line 1132
    invoke-direct {v4, v5, v8, v3, v7}, Lg0/w;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 1133
    .line 1134
    .line 1135
    const/16 v3, 0xf

    .line 1136
    .line 1137
    invoke-virtual {v4, v3}, Lg0/i;->r(I)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v3, v7, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 1141
    .line 1142
    iput-object v3, v4, Lg0/i;->b:Lg0/i$d;

    .line 1143
    .line 1144
    iput-object v3, v4, Lg0/i;->a:Lg0/i$c;

    .line 1145
    .line 1146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-virtual {v4, v6, v2}, Lg0/i;->o(ILjava/lang/Object;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v4}, Lg0/w;->t()V

    .line 1154
    .line 1155
    .line 1156
    goto :goto_8

    .line 1157
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lb0/c;->i()V

    .line 1158
    .line 1159
    .line 1160
    :catch_0
    :cond_24
    :goto_9
    return-void

    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lb0/c;->t()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 7
    .line 8
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p1, Lq0/g;->g:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 22
    .line 23
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 36
    .line 37
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1, v0, v1}, Ld0/h;->n(II)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    mul-int/lit16 p1, p1, 0x2710

    .line 46
    .line 47
    div-int/lit8 p1, p1, 0x64

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lb0/c;->s(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    return-void
.end method

.method public final d(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    iget v1, v0, Lru/zdevs/zarchiver/d;->e:I

    .line 4
    .line 5
    if-eq p1, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 p1, 0x1

    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    if-eq p2, p1, :cond_2

    .line 12
    .line 13
    :cond_1
    if-nez p3, :cond_3

    .line 14
    .line 15
    if-nez p2, :cond_3

    .line 16
    .line 17
    :cond_2
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 21
    .line 22
    .line 23
    :cond_3
    iget-object p2, p0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 24
    .line 25
    if-eqz p2, :cond_4

    .line 26
    .line 27
    iget-char p3, v0, Lru/zdevs/zarchiver/d;->a:C

    .line 28
    .line 29
    and-int/lit8 p3, p3, 0x3

    .line 30
    .line 31
    int-to-char p3, p3

    .line 32
    const/4 v0, 0x2

    .line 33
    if-ne p3, v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_5

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lru/zdevs/zarchiver/ZArchiver;->S(Landroid/view/ActionMode;)V

    .line 40
    .line 41
    .line 42
    :cond_5
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    iget-char v0, v0, Lru/zdevs/zarchiver/d;->a:C

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    int-to-char v0, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x4

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ZArchiver;->A(Z)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final e(II)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x2

    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, p1, v0, v2}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lg0/y;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lru/zdevs/zarchiver/ZArchiver$b;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lru/zdevs/zarchiver/ZArchiver$b;-><init>(Lg0/y;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final f(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Le0/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object p3, p1

    .line 9
    :goto_0
    if-eqz p3, :cond_1

    .line 10
    .line 11
    invoke-static {p3}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public final finish()V
    .locals 0

    .line 1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->g()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, v0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 17
    .line 18
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const v2, 0x7f0700d1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/widget/TextView;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const v4, 0x7f0c0073

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, " ..."

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lb0/c;->c:Lw0/a;

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    const/4 v4, 0x0

    .line 66
    iget v0, v0, Lru/zdevs/zarchiver/b;->b:I

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4, v0}, Lw0/a;->f(III)V

    .line 69
    .line 70
    .line 71
    new-instance v3, La0/i0;

    .line 72
    .line 73
    invoke-direct {v3, v1, v0}, La0/i0;-><init>(Lh0/h;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p0, v2}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lq0/g;->c(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, p1, v0, v1, v0}, Lru/zdevs/zarchiver/ZArchiver;->T(IZZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 14

    .line 1
    move-object v6, p0

    .line 2
    move v7, p1

    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    const/16 v0, 0x69

    .line 8
    .line 9
    const/16 v1, 0x21

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/16 v4, 0x6a

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v10, -0x1

    .line 17
    const/4 v11, 0x1

    .line 18
    iget-object v12, v6, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 19
    .line 20
    if-eq v7, v0, :cond_9

    .line 21
    .line 22
    if-ne v7, v4, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    const/16 v0, 0x6c

    .line 27
    .line 28
    if-eq v7, v0, :cond_7

    .line 29
    .line 30
    const/16 v0, 0x6d

    .line 31
    .line 32
    if-eq v7, v0, :cond_7

    .line 33
    .line 34
    const/16 v0, 0x6e

    .line 35
    .line 36
    if-ne v7, v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    const/16 v0, 0x4b3

    .line 41
    .line 42
    if-ne v7, v0, :cond_2

    .line 43
    .line 44
    if-ne v8, v10, :cond_11

    .line 45
    .line 46
    const-string v0, "apk_path"

    .line 47
    .line 48
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lh0/h;

    .line 53
    .line 54
    const-string v1, "dir_path"

    .line 55
    .line 56
    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lh0/h;

    .line 61
    .line 62
    const-string v2, "name_list"

    .line 63
    .line 64
    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {p0, v0, v1, v2}, Lru/zdevs/zarchiver/a;->d(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;Lh0/h;[Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_6

    .line 72
    .line 73
    :cond_2
    const/16 v0, 0x6f

    .line 74
    .line 75
    if-ne v7, v0, :cond_3

    .line 76
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 78
    .line 79
    if-lt v0, v1, :cond_11

    .line 80
    .line 81
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lb0/c;->recreate()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_3
    const/16 v0, 0x70

    .line 90
    .line 91
    if-ne v7, v0, :cond_4

    .line 92
    .line 93
    if-eq v8, v10, :cond_11

    .line 94
    .line 95
    const/16 v0, 0x17

    .line 96
    .line 97
    invoke-virtual {v12, v10, v11, v0}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lg0/y;

    .line 102
    .line 103
    if-eqz v0, :cond_11

    .line 104
    .line 105
    invoke-virtual {v0}, Lg0/y;->e()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_6

    .line 109
    .line 110
    :cond_4
    const/16 v0, 0x6b

    .line 111
    .line 112
    if-ne v7, v0, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->w()V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :cond_5
    const/16 v0, 0x71

    .line 120
    .line 121
    if-ne v7, v0, :cond_11

    .line 122
    .line 123
    invoke-static {p0}, Lx0/h;->c(Landroid/content/Context;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_6

    .line 128
    .line 129
    invoke-virtual {v12}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 134
    .line 135
    iget v1, v12, Lru/zdevs/zarchiver/d;->e:I

    .line 136
    .line 137
    invoke-virtual {p0, v1, v0}, Lru/zdevs/zarchiver/ZArchiver;->x(ILjava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :cond_6
    const v0, 0x7f0c007c

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_7
    :goto_0
    if-ne v8, v10, :cond_8

    .line 151
    .line 152
    iget-object v0, v12, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 153
    .line 154
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->f:Lh1/j;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-interface {v0}, Lh1/j;->type()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v3, :cond_8

    .line 163
    .line 164
    new-instance v0, Lru/zdevs/zarchiver/e;

    .line 165
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    iget-object v3, v12, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 171
    .line 172
    iget-object v3, v3, Lru/zdevs/zarchiver/a;->f:Lh1/j;

    .line 173
    .line 174
    check-cast v3, Lru/zdevs/zarchiver/a$b;

    .line 175
    .line 176
    iget v4, v12, Lru/zdevs/zarchiver/d;->e:I

    .line 177
    .line 178
    invoke-direct {v0, v1, v3, p1, v4}, Lru/zdevs/zarchiver/e;-><init>(Landroid/content/ContentResolver;Lru/zdevs/zarchiver/a$b;II)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v6, Lb0/c;->c:Lw0/a;

    .line 182
    .line 183
    invoke-virtual {v0, v2, v1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    :cond_8
    const v0, 0x7f0c00e7

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_6

    .line 195
    .line 196
    :cond_9
    :goto_1
    if-ne v8, v10, :cond_11

    .line 197
    .line 198
    if-eqz v9, :cond_11

    .line 199
    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    if-eqz v0, :cond_11

    .line 205
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-ne v7, v4, :cond_a

    .line 211
    .line 212
    iget-object v4, v12, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 213
    .line 214
    aget-object v4, v4, v11

    .line 215
    .line 216
    if-eqz v4, :cond_a

    .line 217
    .line 218
    iget-object v4, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 219
    .line 220
    iget-object v4, v4, Lh0/h;->c:Ljava/lang/String;

    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_a
    iget-object v4, v12, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 224
    .line 225
    aget-object v4, v4, v5

    .line 226
    .line 227
    iget-object v4, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 228
    .line 229
    iget-object v4, v4, Lh0/h;->c:Ljava/lang/String;

    .line 230
    .line 231
    :goto_2
    invoke-static {v4}, Lx0/d;->i(Ljava/lang/String;)Lx0/d$a;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    if-eqz v10, :cond_b

    .line 236
    .line 237
    invoke-virtual {v10, v4}, Lx0/d$a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-virtual {v10, v1, v11}, Lx0/d$a;->c(Ljava/lang/String;Z)Landroid/net/Uri;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-eqz v1, :cond_c

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v1, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_c

    .line 260
    .line 261
    const/4 v5, 0x1

    .line 262
    goto :goto_3

    .line 263
    :cond_b
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    .line 265
    if-lt v13, v1, :cond_c

    .line 266
    .line 267
    const-string v1, "/SAF"

    .line 268
    .line 269
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    if-eqz v1, :cond_c

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v13, "ru.zdevs.zarchiver"

    .line 280
    .line 281
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_c

    .line 286
    .line 287
    const/4 v5, 0x2

    .line 288
    :cond_c
    :goto_3
    if-nez v5, :cond_10

    .line 289
    .line 290
    const-string v0, "/Android/"

    .line 291
    .line 292
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-lez v0, :cond_d

    .line 297
    .line 298
    add-int/2addr v0, v11

    .line 299
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    goto :goto_4

    .line 304
    :cond_d
    if-eqz v10, :cond_e

    .line 305
    .line 306
    iget v0, v10, Lx0/d$a;->f:I

    .line 307
    .line 308
    invoke-static {v0, v3}, La0/c;->K(II)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_e

    .line 313
    .line 314
    iget-object v0, v10, Lx0/d$a;->a:Ljava/lang/String;

    .line 315
    .line 316
    if-eqz v0, :cond_e

    .line 317
    .line 318
    move-object v2, v0

    .line 319
    :cond_e
    :goto_4
    if-nez v2, :cond_f

    .line 320
    .line 321
    const-string v2, "SD"

    .line 322
    .line 323
    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const v1, 0x7f0c0081

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-string v1, "%1"

    .line 335
    .line 336
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    goto :goto_5

    .line 344
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const/4 v2, 0x3

    .line 353
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 354
    .line 355
    .line 356
    invoke-static {v0}, Lx0/d;->b(Landroid/net/Uri;)V

    .line 357
    .line 358
    .line 359
    :goto_5
    if-ne v5, v11, :cond_11

    .line 360
    .line 361
    iget v1, v12, Lru/zdevs/zarchiver/d;->e:I

    .line 362
    .line 363
    invoke-virtual {v12}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    const/4 v3, 0x0

    .line 368
    iget-object v0, v6, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 369
    .line 370
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    const/16 v5, 0x10

    .line 375
    .line 376
    move-object v0, p0

    .line 377
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 378
    .line 379
    .line 380
    :cond_11
    :goto_6
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    .line 382
    .line 383
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lb0/c;->k(Landroid/content/res/Configuration;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget v1, p0, Lru/zdevs/zarchiver/ZArchiver;->i:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iput v0, p0, Lru/zdevs/zarchiver/ZArchiver;->i:I

    .line 18
    .line 19
    if-eqz v1, :cond_a

    .line 20
    .line 21
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lw0/a;->d(Lw0/a$c;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v4, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget-object v5, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 47
    .line 48
    invoke-virtual {v6, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v5, 0x0

    .line 54
    move-object v6, v5

    .line 55
    const/4 v1, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_1
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    .line 58
    .line 59
    if-ne v7, v3, :cond_2

    .line 60
    .line 61
    invoke-static {p1}, Lv0/b;->d(Landroid/content/res/Configuration;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    const/4 v7, 0x0

    .line 70
    :goto_2
    invoke-static {p0, v2, p1}, Lz0/e;->c(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const/high16 v9, 0x8000000

    .line 81
    .line 82
    if-eqz v7, :cond_3

    .line 83
    .line 84
    const/high16 v7, 0x8000000

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    const/4 v7, 0x0

    .line 88
    :goto_3
    invoke-virtual {v8, v7, v9}, Landroid/view/Window;->setFlags(II)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-static {p0}, Lz0/e;->e(Landroid/app/Activity;)V

    .line 92
    .line 93
    .line 94
    iget v7, p0, Lru/zdevs/zarchiver/ZArchiver;->i:I

    .line 95
    .line 96
    invoke-virtual {p0, v7}, Lru/zdevs/zarchiver/ZArchiver;->G(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->H()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 103
    .line 104
    .line 105
    iget-object v7, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 106
    .line 107
    invoke-virtual {v7}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {p0, v8}, Lru/zdevs/zarchiver/ZArchiver;->O(Lh0/h;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZArchiver;->U(Z)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    const v9, 0x7f08002e

    .line 122
    .line 123
    .line 124
    if-eqz v5, :cond_6

    .line 125
    .line 126
    iget-object v10, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 127
    .line 128
    iget v11, v8, Lru/zdevs/zarchiver/b;->b:I

    .line 129
    .line 130
    if-nez v11, :cond_5

    .line 131
    .line 132
    const/4 v11, 0x1

    .line 133
    goto :goto_4

    .line 134
    :cond_5
    const/4 v11, 0x0

    .line 135
    :goto_4
    invoke-virtual {v10, v2, v5, v11, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->h(ILd0/h;ZZ)V

    .line 136
    .line 137
    .line 138
    iget-object v10, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 139
    .line 140
    invoke-virtual {v10, v2, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->j(II)V

    .line 141
    .line 142
    .line 143
    iget v1, v8, Lru/zdevs/zarchiver/b;->b:I

    .line 144
    .line 145
    if-nez v1, :cond_6

    .line 146
    .line 147
    invoke-virtual {v5}, Ld0/h;->c()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v1, v9, :cond_6

    .line 152
    .line 153
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 154
    .line 155
    if-eqz v1, :cond_6

    .line 156
    .line 157
    iget-object v5, v8, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 158
    .line 159
    iget-object v10, v8, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1, v5, v10}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    if-eqz v6, :cond_8

    .line 165
    .line 166
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 167
    .line 168
    iget v5, v8, Lru/zdevs/zarchiver/b;->b:I

    .line 169
    .line 170
    if-ne v5, v3, :cond_7

    .line 171
    .line 172
    const/4 v5, 0x1

    .line 173
    goto :goto_5

    .line 174
    :cond_7
    const/4 v5, 0x0

    .line 175
    :goto_5
    invoke-virtual {v1, v3, v6, v5, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->h(ILd0/h;ZZ)V

    .line 176
    .line 177
    .line 178
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 179
    .line 180
    invoke-virtual {v1, v3, v4}, Lru/zdevs/zarchiver/ui/FilePanelView;->j(II)V

    .line 181
    .line 182
    .line 183
    iget v1, v8, Lru/zdevs/zarchiver/b;->b:I

    .line 184
    .line 185
    if-ne v1, v3, :cond_8

    .line 186
    .line 187
    invoke-virtual {v6}, Ld0/h;->c()I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-ne v1, v9, :cond_8

    .line 192
    .line 193
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 194
    .line 195
    if-eqz v1, :cond_8

    .line 196
    .line 197
    iget-object v4, v8, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 198
    .line 199
    iget-object v5, v8, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v4, v5}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_8
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 205
    .line 206
    invoke-virtual {v8}, Lru/zdevs/zarchiver/b;->e()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-virtual {v1, v4}, Lru/zdevs/zarchiver/ui/FilePanelView;->setMessage(I)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v7, Lru/zdevs/zarchiver/d;->d:Ljava/util/ArrayList;

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_9

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Lg0/i;

    .line 230
    .line 231
    invoke-virtual {v4, p0, p1}, Lg0/i;->n(Landroid/content/Context;Landroid/content/res/Configuration;)V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    invoke-virtual {v0, p0, p0}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 236
    .line 237
    .line 238
    :cond_a
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 239
    .line 240
    if-eqz v0, :cond_b

    .line 241
    .line 242
    new-instance v1, Lru/zdevs/zarchiver/ZArchiver$g;

    .line 243
    .line 244
    invoke-direct {v1, p0}, Lru/zdevs/zarchiver/ZArchiver$g;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 245
    .line 246
    .line 247
    const-wide/16 v4, 0x96

    .line 248
    .line 249
    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    .line 251
    .line 252
    :cond_b
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 253
    .line 254
    and-int/lit8 p1, p1, 0xf

    .line 255
    .line 256
    const/4 v0, 0x3

    .line 257
    if-lt p1, v0, :cond_c

    .line 258
    .line 259
    invoke-static {p0}, Lz0/e;->b(Landroid/app/Activity;)Z

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    if-nez p1, :cond_c

    .line 264
    .line 265
    const/4 v2, 0x1

    .line 266
    :cond_c
    sput-boolean v2, Lh0/g;->g:Z

    .line 267
    .line 268
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lru/zdevs/zarchiver/ZArchiver;->r:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-static {p0}, Lz0/e;->g(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 14
    .line 15
    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v3, 0x15

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    if-ge v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 25
    .line 26
    .line 27
    invoke-static {v4}, Lt0/b;->l(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2, v4}, Landroid/view/Window;->setUiOptions(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    nop

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v5, Lt0/b;->e:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p0, v5}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v5, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 60
    .line 61
    sget-object v6, Lt0/b;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v6}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v5, v3, Landroid/content/res/Configuration;->orientation:I

    .line 67
    .line 68
    if-ne v5, v4, :cond_1

    .line 69
    .line 70
    invoke-static {v3}, Lv0/b;->d(Landroid/content/res/Configuration;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v5, 0x0

    .line 79
    :goto_1
    invoke-static {p0, v5}, Lz0/e;->o(Landroid/app/Activity;Z)V

    .line 80
    .line 81
    .line 82
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 83
    .line 84
    and-int/lit8 v5, v5, 0xf

    .line 85
    .line 86
    const/4 v6, 0x3

    .line 87
    if-lt v5, v6, :cond_2

    .line 88
    .line 89
    invoke-static {p0}, Lz0/e;->b(Landroid/app/Activity;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_2

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const/4 v5, 0x0

    .line 98
    :goto_2
    sput-boolean v5, Lh0/g;->g:Z

    .line 99
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v3}, Lb0/c;->k(Landroid/content/res/Configuration;)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iput v3, p0, Lru/zdevs/zarchiver/ZArchiver;->i:I

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZArchiver;->G(I)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 113
    .line 114
    iget-object v3, v3, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 115
    .line 116
    aget-object v5, v3, v0

    .line 117
    .line 118
    new-instance v6, Lh0/h;

    .line 119
    .line 120
    sget-object v7, Lt0/b;->b:[Ljava/lang/String;

    .line 121
    .line 122
    aget-object v7, v7, v0

    .line 123
    .line 124
    invoke-direct {v6, v7}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v6, v0, v0}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 128
    .line 129
    .line 130
    aget-object v5, v3, v0

    .line 131
    .line 132
    invoke-virtual {v5}, Lru/zdevs/zarchiver/b;->n()V

    .line 133
    .line 134
    .line 135
    const/16 v5, 0x80

    .line 136
    .line 137
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    new-instance v6, Lru/zdevs/zarchiver/b;

    .line 144
    .line 145
    invoke-direct {v6, v4}, Lru/zdevs/zarchiver/b;-><init>(I)V

    .line 146
    .line 147
    .line 148
    aput-object v6, v3, v4

    .line 149
    .line 150
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->n()V

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-static {p0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->c(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p0}, Lv0/h;->d(Landroid/content/Context;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lt0/b;->d()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 164
    .line 165
    invoke-virtual {v6}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget v6, v6, Lru/zdevs/zarchiver/b;->g:I

    .line 170
    .line 171
    const v7, 0x7f08002d

    .line 172
    .line 173
    .line 174
    if-ne v6, v7, :cond_4

    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_4
    const/4 v6, 0x0

    .line 179
    :goto_3
    invoke-static {p0, v3, v6}, Lz0/b;->f(Landroid/content/Context;IZ)V

    .line 180
    .line 181
    .line 182
    invoke-static {p0}, Lx0/d;->e(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->H()V

    .line 186
    .line 187
    .line 188
    invoke-static {p0}, Ln0/a;->a(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    const-wide/16 v6, 0x0

    .line 192
    .line 193
    iput-wide v6, p0, Lru/zdevs/zarchiver/ZArchiver;->p:J

    .line 194
    .line 195
    new-instance v3, La0/k0;

    .line 196
    .line 197
    invoke-direct {v3}, La0/k0;-><init>()V

    .line 198
    .line 199
    .line 200
    iget-object v6, p0, Lb0/c;->c:Lw0/a;

    .line 201
    .line 202
    invoke-virtual {v3, v1, v6}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 203
    .line 204
    .line 205
    if-nez v2, :cond_5

    .line 206
    .line 207
    iput-boolean v0, p0, Lru/zdevs/zarchiver/ZArchiver;->o:Z

    .line 208
    .line 209
    goto/16 :goto_8

    .line 210
    .line 211
    :cond_5
    const-string v1, "isZA"

    .line 212
    .line 213
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    xor-int/2addr v1, v4

    .line 218
    invoke-virtual {p0, v2, v1, v4}, Lru/zdevs/zarchiver/ZArchiver;->N(Landroid/content/Intent;ZZ)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_e

    .line 223
    .line 224
    if-eqz p1, :cond_c

    .line 225
    .line 226
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    const-string v2, "action"

    .line 232
    .line 233
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    int-to-char v2, v2

    .line 238
    iput-char v2, v1, Lru/zdevs/zarchiver/d;->a:C

    .line 239
    .line 240
    const-string v2, "c_file"

    .line 241
    .line 242
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, La0/a;

    .line 247
    .line 248
    iget-object v3, v1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 249
    .line 250
    iput-object v2, v3, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 251
    .line 252
    const-string v2, "a_file"

    .line 253
    .line 254
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, La0/a;

    .line 259
    .line 260
    iput-object v2, v3, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 261
    .line 262
    const-string v2, "d_type"

    .line 263
    .line 264
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-ne v2, v4, :cond_6

    .line 269
    .line 270
    const-string v2, "d_data"

    .line 271
    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Lh1/j;

    .line 277
    .line 278
    iput-object v2, v3, Lru/zdevs/zarchiver/a;->f:Lh1/j;

    .line 279
    .line 280
    :cond_6
    const-string v2, "page"

    .line 281
    .line 282
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    iput v2, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 287
    .line 288
    iget-object v2, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 289
    .line 290
    aget-object v3, v2, v0

    .line 291
    .line 292
    const-string v5, "p1"

    .line 293
    .line 294
    invoke-virtual {v3, p1, v5}, Lru/zdevs/zarchiver/b;->k(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    aget-object v2, v2, v4

    .line 298
    .line 299
    if-eqz v2, :cond_7

    .line 300
    .line 301
    const-string v1, "p2"

    .line 302
    .line 303
    invoke-virtual {v2, p1, v1}, Lru/zdevs/zarchiver/b;->k(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_7
    iget v2, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 308
    .line 309
    if-lt v2, v4, :cond_8

    .line 310
    .line 311
    iput v0, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 312
    .line 313
    :cond_8
    :goto_4
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 314
    .line 315
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 316
    .line 317
    const/4 v8, 0x0

    .line 318
    :goto_5
    array-length v2, v1

    .line 319
    if-ge v8, v2, :cond_b

    .line 320
    .line 321
    aget-object v2, v1, v8

    .line 322
    .line 323
    if-eqz v2, :cond_b

    .line 324
    .line 325
    invoke-virtual {v2}, Lru/zdevs/zarchiver/b;->i()Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_9

    .line 330
    .line 331
    aget-object v2, v1, v8

    .line 332
    .line 333
    iget-object v3, v2, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 334
    .line 335
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p0, v8, v3, v2, v0}, Lru/zdevs/zarchiver/ZArchiver;->P(ILjava/lang/String;[Ljava/lang/String;Z)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v3, "p"

    .line 344
    .line 345
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    add-int/lit8 v3, v8, 0x1

    .line 349
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, "pos"

    .line 354
    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    const/4 v3, -0x1

    .line 363
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    aget-object v2, v1, v8

    .line 368
    .line 369
    iget-object v4, v2, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 373
    .line 374
    iget v2, v2, Lru/zdevs/zarchiver/d;->e:I

    .line 375
    .line 376
    if-ne v8, v2, :cond_a

    .line 377
    .line 378
    const/16 v2, 0x400

    .line 379
    .line 380
    const/16 v7, 0x400

    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_a
    const/4 v7, 0x0

    .line 384
    :goto_6
    move-object v2, p0

    .line 385
    move v3, v8

    .line 386
    invoke-virtual/range {v2 .. v7}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 387
    .line 388
    .line 389
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_b
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 393
    .line 394
    iget-char p1, p1, Lru/zdevs/zarchiver/d;->a:C

    .line 395
    .line 396
    and-int/lit8 v0, p1, 0x3

    .line 397
    .line 398
    int-to-char v0, v0

    .line 399
    if-eqz v0, :cond_f

    .line 400
    .line 401
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZArchiver;->F(C)V

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_c
    const/16 p1, 0x10

    .line 406
    .line 407
    invoke-static {p1}, Lt0/b;->h(I)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_d

    .line 412
    .line 413
    invoke-static {p0, p1}, Lt0/b;->o(Landroid/content/Context;I)V

    .line 414
    .line 415
    .line 416
    new-instance p1, Lg0/w;

    .line 417
    .line 418
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 419
    .line 420
    const v2, 0x7f0c00e9

    .line 421
    .line 422
    .line 423
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    const/4 v3, 0x4

    .line 428
    invoke-direct {p1, v3, p0, v2, v1}, Lg0/w;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1}, Lg0/w;->t()V

    .line 432
    .line 433
    .line 434
    :cond_d
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 435
    .line 436
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 437
    .line 438
    aget-object p1, p1, v0

    .line 439
    .line 440
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 441
    .line 442
    invoke-virtual {p0, v0, v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 443
    .line 444
    .line 445
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 446
    .line 447
    .line 448
    move-result p1

    .line 449
    if-eqz p1, :cond_f

    .line 450
    .line 451
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 452
    .line 453
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 454
    .line 455
    aget-object p1, p1, v4

    .line 456
    .line 457
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 458
    .line 459
    invoke-virtual {p0, v4, v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 460
    .line 461
    .line 462
    goto :goto_8

    .line 463
    :cond_e
    invoke-static {v5}, Lt0/b;->l(I)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-eqz p1, :cond_f

    .line 468
    .line 469
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 470
    .line 471
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 472
    .line 473
    aget-object p1, p1, v4

    .line 474
    .line 475
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 476
    .line 477
    invoke-virtual {p0, v4, v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 478
    .line 479
    .line 480
    :cond_f
    :goto_8
    new-instance p1, Landroid/content/IntentFilter;

    .line 481
    .line 482
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 483
    .line 484
    .line 485
    const-string v0, "ZArchiver.iMES"

    .line 486
    .line 487
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 491
    .line 492
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 493
    .line 494
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->h:Lru/zdevs/zarchiver/a$a;

    .line 495
    .line 496
    invoke-static {p0, v0, p1}, Lh1/h;->d(Landroid/content/Context;Lru/zdevs/zarchiver/a$a;Landroid/content/IntentFilter;)V

    .line 497
    .line 498
    .line 499
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 500
    .line 501
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 502
    .line 503
    invoke-static {p0, p1}, Lx0/d;->v(Landroid/content/Context;Lru/zdevs/zarchiver/a;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->w()V

    .line 507
    .line 508
    .line 509
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-static/range {p0 .. p0}, Lv0/b;->g(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    invoke-static/range {p0 .. p0}, Lv0/b;->j(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v3, 0x0

    .line 25
    :goto_0
    iget-object v5, v1, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    move-object v5, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :goto_1
    if-eqz v5, :cond_3

    .line 37
    .line 38
    iget-object v5, v5, Ld0/h;->h:Ld0/b;

    .line 39
    .line 40
    iget v5, v5, Ld0/b;->a:I

    .line 41
    .line 42
    if-lez v5, :cond_3

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v5, 0x0

    .line 47
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lb0/c;->getMenuInflater()Landroid/view/MenuInflater;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const v8, 0x7f09000b

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v8, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    .line 56
    .line 57
    const v8, 0x7f090008

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7, v8, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 61
    .line 62
    .line 63
    const v8, 0x7f090004

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v8, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 67
    .line 68
    .line 69
    iget-object v7, v1, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 70
    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_4

    .line 78
    .line 79
    const v7, 0x7f070034

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 87
    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    const/4 v7, 0x1

    .line 92
    :goto_3
    iget-object v8, v1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 93
    .line 94
    invoke-virtual {v8}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    iget-object v10, v9, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 99
    .line 100
    iget-object v10, v10, Lh0/h;->c:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v9}, Lru/zdevs/zarchiver/b;->f()B

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    const/4 v12, 0x4

    .line 107
    invoke-virtual {v9, v12}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-eqz v13, :cond_5

    .line 112
    .line 113
    invoke-static {v4, v10}, La0/c;->N(ILjava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-eqz v14, :cond_5

    .line 118
    .line 119
    const/4 v14, 0x1

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    const/4 v14, 0x0

    .line 122
    :goto_4
    if-eqz v13, :cond_7

    .line 123
    .line 124
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 125
    .line 126
    .line 127
    move-result-object v15

    .line 128
    iget-object v2, v15, Lf0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 129
    .line 130
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 131
    .line 132
    .line 133
    move-result-object v16

    .line 134
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 135
    .line 136
    .line 137
    iget-object v12, v15, Lf0/a;->b:Lf0/d;

    .line 138
    .line 139
    if-eqz v12, :cond_6

    .line 140
    .line 141
    invoke-interface {v12, v10}, Lf0/d;->m(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eqz v12, :cond_6

    .line 146
    .line 147
    iget-object v12, v15, Lf0/a;->b:Lf0/d;

    .line 148
    .line 149
    invoke-interface {v12}, Lf0/d;->q()Z

    .line 150
    .line 151
    .line 152
    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v12, :cond_6

    .line 154
    .line 155
    const/4 v12, 0x1

    .line 156
    goto :goto_5

    .line 157
    :cond_6
    const/4 v12, 0x0

    .line 158
    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 163
    .line 164
    .line 165
    if-eqz v12, :cond_7

    .line 166
    .line 167
    const/4 v2, 0x1

    .line 168
    goto :goto_6

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_7
    const/4 v2, 0x0

    .line 179
    :goto_6
    invoke-virtual {v9}, Lru/zdevs/zarchiver/b;->i()Z

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    xor-int/2addr v9, v4

    .line 184
    const/16 v12, 0x40

    .line 185
    .line 186
    invoke-static {v12}, Lt0/b;->l(I)Z

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    xor-int/2addr v12, v4

    .line 191
    const v15, 0x7f070027

    .line 192
    .line 193
    .line 194
    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 195
    .line 196
    .line 197
    move-result-object v15

    .line 198
    if-nez v5, :cond_a

    .line 199
    .line 200
    if-nez v3, :cond_a

    .line 201
    .line 202
    if-eqz v12, :cond_9

    .line 203
    .line 204
    iget-object v5, v8, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 205
    .line 206
    iget-object v5, v5, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 207
    .line 208
    if-eqz v5, :cond_8

    .line 209
    .line 210
    const/4 v5, 0x1

    .line 211
    goto :goto_7

    .line 212
    :cond_8
    const/4 v5, 0x0

    .line 213
    :goto_7
    if-eqz v5, :cond_9

    .line 214
    .line 215
    goto :goto_8

    .line 216
    :cond_9
    const/4 v5, 0x0

    .line 217
    goto :goto_9

    .line 218
    :cond_a
    :goto_8
    const/4 v5, 0x1

    .line 219
    :goto_9
    invoke-interface {v15, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    .line 221
    .line 222
    const v5, 0x7f07002f

    .line 223
    .line 224
    .line 225
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 230
    .line 231
    .line 232
    const v5, 0x7f070005

    .line 233
    .line 234
    .line 235
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    .line 241
    .line 242
    const v5, 0x7f070006

    .line 243
    .line 244
    .line 245
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const/4 v12, 0x2

    .line 250
    if-eqz v13, :cond_b

    .line 251
    .line 252
    if-nez v2, :cond_b

    .line 253
    .line 254
    invoke-static {v12, v10}, La0/c;->N(ILjava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_b

    .line 259
    .line 260
    const/4 v2, 0x1

    .line 261
    goto :goto_a

    .line 262
    :cond_b
    const/4 v2, 0x0

    .line 263
    :goto_a
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    const v2, 0x7f070025

    .line 267
    .line 268
    .line 269
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    if-eqz v9, :cond_d

    .line 274
    .line 275
    if-eqz v13, :cond_c

    .line 276
    .line 277
    if-eqz v14, :cond_d

    .line 278
    .line 279
    :cond_c
    const/4 v5, 0x1

    .line 280
    goto :goto_b

    .line 281
    :cond_d
    const/4 v5, 0x0

    .line 282
    :goto_b
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 283
    .line 284
    .line 285
    const v2, 0x7f07002a

    .line 286
    .line 287
    .line 288
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    if-nez v13, :cond_e

    .line 293
    .line 294
    if-eq v11, v12, :cond_e

    .line 295
    .line 296
    const/4 v5, 0x1

    .line 297
    goto :goto_c

    .line 298
    :cond_e
    const/4 v5, 0x0

    .line 299
    :goto_c
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    .line 301
    .line 302
    const v2, 0x7f070024

    .line 303
    .line 304
    .line 305
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-interface {v2, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    .line 311
    .line 312
    invoke-static {v6}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_13

    .line 317
    .line 318
    sget v2, Lt0/b;->m:I

    .line 319
    .line 320
    if-ne v2, v12, :cond_f

    .line 321
    .line 322
    sget-boolean v2, Lru/zdevs/zarchiver/ZApp;->g:Z

    .line 323
    .line 324
    if-eqz v2, :cond_13

    .line 325
    .line 326
    :cond_f
    const/4 v2, 0x3

    .line 327
    if-eq v11, v2, :cond_10

    .line 328
    .line 329
    const/4 v5, 0x4

    .line 330
    if-ne v11, v5, :cond_13

    .line 331
    .line 332
    :cond_10
    invoke-virtual {v8, v2}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 333
    .line 334
    .line 335
    move-result v5

    .line 336
    if-eqz v5, :cond_13

    .line 337
    .line 338
    const/16 v5, 0x80

    .line 339
    .line 340
    invoke-virtual {v8, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-nez v5, :cond_13

    .line 345
    .line 346
    const v5, 0x7f070031

    .line 347
    .line 348
    .line 349
    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    if-ne v11, v2, :cond_11

    .line 354
    .line 355
    const/4 v2, 0x1

    .line 356
    goto :goto_d

    .line 357
    :cond_11
    const/4 v2, 0x0

    .line 358
    :goto_d
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 359
    .line 360
    .line 361
    const v2, 0x7f070032

    .line 362
    .line 363
    .line 364
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const/4 v5, 0x4

    .line 369
    if-ne v11, v5, :cond_12

    .line 370
    .line 371
    const/4 v5, 0x1

    .line 372
    goto :goto_e

    .line 373
    :cond_12
    const/4 v5, 0x0

    .line 374
    :goto_e
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 375
    .line 376
    .line 377
    :cond_13
    if-nez v3, :cond_14

    .line 378
    .line 379
    invoke-static/range {p0 .. p0}, Lv0/b;->g(Landroid/content/Context;)Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_14

    .line 384
    .line 385
    invoke-virtual {v1, v7, v0}, Lb0/c;->l(ILandroid/view/Menu;)V

    .line 386
    .line 387
    .line 388
    :cond_14
    return v4
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 4
    .line 5
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->h:Lru/zdevs/zarchiver/a$a;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lx0/d;->x(Landroid/content/Context;Lru/zdevs/zarchiver/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    sget-object v0, Lt0/a;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lt0/a;->c:Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lt0/a;->d:Z

    .line 25
    .line 26
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->g()V

    .line 27
    .line 28
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eq p1, v0, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x3

    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v2, v0, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 32
    .line 33
    .line 34
    new-instance p2, La0/o0;

    .line 35
    .line 36
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 37
    .line 38
    iget v2, v2, Lru/zdevs/zarchiver/d;->e:I

    .line 39
    .line 40
    invoke-direct {p2, v2, p1}, La0/o0;-><init>(ILandroid/content/ClipData;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lb0/c;->c:Lw0/a;

    .line 44
    .line 45
    invoke-virtual {p2, p0, p1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_4

    .line 54
    .line 55
    return v1

    .line 56
    :cond_4
    const/4 p2, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge p2, v2, :cond_7

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "text/"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_6

    .line 74
    .line 75
    const-string v3, "image/"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-nez v3, :cond_6

    .line 82
    .line 83
    const-string v3, "video/"

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_6

    .line 90
    .line 91
    const-string v3, "application/"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_6

    .line 98
    .line 99
    const-string v3, "vnd.android.document/directory"

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_6

    .line 106
    .line 107
    const-string v3, "text/uri-list"

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_6
    :goto_1
    return v0

    .line 120
    :catch_0
    :cond_7
    :goto_2
    return v1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p3

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v9, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ld0/h;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v3, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 21
    .line 22
    iget-char v4, v3, Lru/zdevs/zarchiver/d;->a:C

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    and-int/2addr v4, v5

    .line 26
    int-to-char v4, v4

    .line 27
    const/4 v6, 0x2

    .line 28
    if-ne v4, v6, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2, v0, v6}, Ld0/h;->j(II)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const/4 v4, -0x1

    .line 35
    const/16 v7, 0xa

    .line 36
    .line 37
    invoke-virtual {v3, v4, v7, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget v3, v2, Ld0/h;->g:I

    .line 45
    .line 46
    iget-object v4, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 47
    .line 48
    iget-object v4, v4, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 49
    .line 50
    aget-object v4, v4, v3

    .line 51
    .line 52
    iget-object v7, v2, Ld0/h;->h:Ld0/b;

    .line 53
    .line 54
    iget v7, v7, Ld0/b;->a:I

    .line 55
    .line 56
    if-lez v7, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ld0/h;->a(I)Ld0/d;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-boolean v0, v0, Ld0/d;->g:Z

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v0, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    invoke-virtual {v2}, Ld0/h;->d()[I

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v1, v9, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 74
    .line 75
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getClickPoint()Landroid/graphics/Point;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move-object/from16 v1, p0

    .line 80
    .line 81
    move-object v2, v0

    .line 82
    move-object v3, v4

    .line 83
    move v4, v5

    .line 84
    move-object v5, v6

    .line 85
    move-object v6, v7

    .line 86
    invoke-static/range {v1 .. v6}, Lh0/g;->c(Landroid/content/Context;Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/b;I[ILandroid/graphics/Point;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_11

    .line 90
    .line 91
    :cond_4
    new-instance v0, Lh0/g;

    .line 92
    .line 93
    invoke-direct {v0, v9}, Lh0/g;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    const v1, 0x7f0c00c3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, v0, Lh0/g;->d:Ljava/lang/String;

    .line 104
    .line 105
    const/16 v1, 0xe

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lh0/g;->a(I)V

    .line 108
    .line 109
    .line 110
    const/16 v1, 0xf

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lh0/g;->a(I)V

    .line 113
    .line 114
    .line 115
    const/16 v1, 0x10

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Lh0/g;->a(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 121
    .line 122
    iget-object v2, v9, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 123
    .line 124
    invoke-virtual {v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->getClickPoint()Landroid/graphics/Point;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v1, v6, v2}, Lh0/g;->d(Lru/zdevs/zarchiver/d;ILandroid/graphics/Point;)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_11

    .line 132
    .line 133
    :cond_5
    invoke-virtual {v2}, Ld0/h;->c()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    const/16 v8, 0x80

    .line 138
    .line 139
    const/4 v10, 0x1

    .line 140
    const v11, 0x7f08002e

    .line 141
    .line 142
    .line 143
    const-wide/16 v12, -0x7

    .line 144
    .line 145
    const/16 v14, 0x1000

    .line 146
    .line 147
    const/16 v15, 0x800

    .line 148
    .line 149
    const-wide/16 v16, -0x8

    .line 150
    .line 151
    if-eq v2, v11, :cond_18

    .line 152
    .line 153
    iget-object v2, v4, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 154
    .line 155
    monitor-enter v2

    .line 156
    if-ltz v0, :cond_17

    .line 157
    .line 158
    :try_start_0
    iget-object v5, v4, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 159
    .line 160
    invoke-virtual {v5}, Ld0/b;->size()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-ge v0, v5, :cond_17

    .line 165
    .line 166
    iget-object v5, v4, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 167
    .line 168
    invoke-virtual {v5, v0}, Ld0/b;->b(I)Ld0/d;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v5}, Ld0/d;->f()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_12

    .line 178
    .line 179
    invoke-virtual {v5}, Ld0/d;->d()B

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, La0/c;->G(B)Z

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    const/16 v1, 0x41

    .line 188
    .line 189
    const/16 v7, 0x13

    .line 190
    .line 191
    if-nez v11, :cond_b

    .line 192
    .line 193
    if-ne v2, v6, :cond_6

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_6
    iget-object v11, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 197
    .line 198
    iget-char v11, v11, Lru/zdevs/zarchiver/d;->a:C

    .line 199
    .line 200
    if-ne v11, v1, :cond_9

    .line 201
    .line 202
    iget-byte v1, v5, Ld0/d;->f:B

    .line 203
    .line 204
    invoke-static {v2}, La0/c;->H(B)Z

    .line 205
    .line 206
    .line 207
    move-result v11

    .line 208
    if-eqz v11, :cond_7

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_7
    const/16 v11, 0x17

    .line 212
    .line 213
    if-ne v2, v11, :cond_8

    .line 214
    .line 215
    const/16 v2, 0x1e

    .line 216
    .line 217
    if-ne v1, v2, :cond_8

    .line 218
    .line 219
    :goto_0
    const/4 v1, 0x1

    .line 220
    goto :goto_1

    .line 221
    :cond_8
    const/4 v1, 0x0

    .line 222
    :goto_1
    if-eqz v1, :cond_9

    .line 223
    .line 224
    invoke-virtual {v4, v7}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_9

    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_9
    cmp-long v1, p4, v16

    .line 232
    .line 233
    if-eqz v1, :cond_a

    .line 234
    .line 235
    invoke-static {v14}, Lt0/b;->l(I)Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_d

    .line 240
    .line 241
    cmp-long v1, p4, v12

    .line 242
    .line 243
    if-eqz v1, :cond_d

    .line 244
    .line 245
    :cond_a
    const/4 v1, 0x1

    .line 246
    goto :goto_4

    .line 247
    :cond_b
    :goto_2
    invoke-static {v15}, Lt0/b;->l(I)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-nez v2, :cond_c

    .line 252
    .line 253
    cmp-long v2, p4, v16

    .line 254
    .line 255
    if-eqz v2, :cond_c

    .line 256
    .line 257
    iget-object v2, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 258
    .line 259
    iget-char v2, v2, Lru/zdevs/zarchiver/d;->a:C

    .line 260
    .line 261
    if-ne v2, v1, :cond_d

    .line 262
    .line 263
    :cond_c
    invoke-virtual {v4, v7}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_d

    .line 268
    .line 269
    :goto_3
    const/4 v1, 0x2

    .line 270
    goto :goto_4

    .line 271
    :cond_d
    const/4 v1, 0x0

    .line 272
    :goto_4
    if-eqz v1, :cond_11

    .line 273
    .line 274
    if-eq v1, v10, :cond_f

    .line 275
    .line 276
    if-eq v1, v6, :cond_e

    .line 277
    .line 278
    goto/16 :goto_11

    .line 279
    .line 280
    :cond_e
    new-instance v0, Lh0/h;

    .line 281
    .line 282
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 283
    .line 284
    invoke-direct {v0, v1}, Lh0/h;-><init>(Lh0/h;)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v5, Ld0/d;->a:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v2, v5, Ld0/d;->b:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v0, v1}, Lh0/h;->a(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iput-object v2, v0, Lh0/h;->d:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v0}, La0/c;->B(Lh0/h;)Lh0/h;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v2, v0, Lh0/h;->c:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Lf0/a;->b(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v3, v8, v0}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_11

    .line 313
    .line 314
    :cond_f
    iget-object v0, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 315
    .line 316
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 317
    .line 318
    new-instance v2, Lh0/h;

    .line 319
    .line 320
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 321
    .line 322
    iget-object v3, v5, Ld0/d;->a:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v6, v5, Ld0/d;->b:Ljava/lang/String;

    .line 325
    .line 326
    invoke-direct {v2, v3, v1, v6}, Lh0/h;-><init>(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-wide v6, v5, Ld0/d;->d:J

    .line 330
    .line 331
    iget-byte v1, v5, Ld0/d;->f:B

    .line 332
    .line 333
    const/16 v3, 0x1c

    .line 334
    .line 335
    if-ne v1, v3, :cond_10

    .line 336
    .line 337
    const/4 v5, 0x1

    .line 338
    goto :goto_5

    .line 339
    :cond_10
    const/4 v5, 0x0

    .line 340
    :goto_5
    const/4 v8, 0x0

    .line 341
    iget v10, v4, Lru/zdevs/zarchiver/b;->h:I

    .line 342
    .line 343
    invoke-virtual {v4}, Lru/zdevs/zarchiver/b;->f()B

    .line 344
    .line 345
    .line 346
    move-result v11

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    move-object/from16 v1, p0

    .line 351
    .line 352
    move-wide v3, v6

    .line 353
    move v6, v8

    .line 354
    move v7, v10

    .line 355
    move v8, v11

    .line 356
    invoke-static/range {v1 .. v8}, Lru/zdevs/zarchiver/a;->j(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;JZIIB)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_11

    .line 360
    .line 361
    :cond_11
    iget-object v2, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 362
    .line 363
    const/4 v5, 0x2

    .line 364
    new-array v6, v10, [I

    .line 365
    .line 366
    const/4 v1, 0x0

    .line 367
    aput v0, v6, v1

    .line 368
    .line 369
    iget-object v0, v9, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 370
    .line 371
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getClickPoint()Landroid/graphics/Point;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    move-object/from16 v1, p0

    .line 376
    .line 377
    move-object v3, v4

    .line 378
    move v4, v5

    .line 379
    move-object v5, v6

    .line 380
    move-object v6, v0

    .line 381
    invoke-static/range {v1 .. v6}, Lh0/g;->c(Landroid/content/Context;Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/b;I[ILandroid/graphics/Point;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_11

    .line 385
    .line 386
    :cond_12
    new-instance v0, Lh0/h;

    .line 387
    .line 388
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 389
    .line 390
    invoke-direct {v0, v1}, Lh0/h;-><init>(Lh0/h;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5}, Ld0/d;->g()Z

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_16

    .line 398
    .line 399
    iget-object v1, v5, Ld0/d;->b:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v0}, Lh0/h;->c()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_13

    .line 406
    .line 407
    iput-object v1, v0, Lh0/h;->d:Ljava/lang/String;

    .line 408
    .line 409
    const/4 v1, 0x1

    .line 410
    goto :goto_6

    .line 411
    :cond_13
    const/4 v1, 0x0

    .line 412
    :goto_6
    if-eqz v1, :cond_2c

    .line 413
    .line 414
    const/16 v1, 0x4000

    .line 415
    .line 416
    invoke-static {v1}, Lt0/b;->l(I)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_14

    .line 421
    .line 422
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 423
    .line 424
    invoke-virtual {v1}, Lh0/h;->e()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const-string v2, "/"

    .line 429
    .line 430
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    if-eqz v2, :cond_15

    .line 435
    .line 436
    const/4 v2, 0x4

    .line 437
    invoke-virtual {v4, v2}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-eqz v2, :cond_15

    .line 442
    .line 443
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 444
    .line 445
    iget-object v1, v1, Lh0/h;->c:Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    goto :goto_7

    .line 452
    :cond_14
    const/4 v1, 0x0

    .line 453
    :cond_15
    :goto_7
    move-object v4, v1

    .line 454
    const/4 v5, -0x1

    .line 455
    const/4 v6, 0x0

    .line 456
    move-object/from16 v1, p0

    .line 457
    .line 458
    move v2, v3

    .line 459
    move-object v3, v0

    .line 460
    invoke-virtual/range {v1 .. v6}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 461
    .line 462
    .line 463
    goto/16 :goto_11

    .line 464
    .line 465
    :cond_16
    iget-object v1, v5, Ld0/d;->a:Ljava/lang/String;

    .line 466
    .line 467
    iget-object v2, v5, Ld0/d;->b:Ljava/lang/String;

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Lh0/h;->a(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iput-object v2, v0, Lh0/h;->d:Ljava/lang/String;

    .line 473
    .line 474
    invoke-virtual {v9, v3, v8, v0}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_11

    .line 478
    .line 479
    :cond_17
    :try_start_1
    monitor-exit v2

    .line 480
    return-void

    .line 481
    :catchall_0
    move-exception v0

    .line 482
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    throw v0

    .line 484
    :cond_18
    iget-object v1, v4, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 485
    .line 486
    monitor-enter v1

    .line 487
    :try_start_2
    iget-object v2, v4, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 488
    .line 489
    if-eqz v2, :cond_2d

    .line 490
    .line 491
    if-ltz v0, :cond_2d

    .line 492
    .line 493
    invoke-virtual {v2}, Ld0/b;->size()I

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-ge v0, v2, :cond_2d

    .line 498
    .line 499
    iget-object v2, v4, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 500
    .line 501
    invoke-virtual {v2, v0}, Ld0/i;->j(I)Ld0/f;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    invoke-virtual {v2}, Ld0/d;->f()Z

    .line 507
    .line 508
    .line 509
    move-result v1

    .line 510
    if-eqz v1, :cond_19

    .line 511
    .line 512
    const/4 v1, 0x3

    .line 513
    goto :goto_9

    .line 514
    :cond_19
    invoke-virtual {v2}, Ld0/d;->d()B

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    invoke-static {v1}, La0/c;->G(B)Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-nez v1, :cond_1c

    .line 523
    .line 524
    invoke-virtual {v2}, Ld0/d;->d()B

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-ne v1, v6, :cond_1a

    .line 529
    .line 530
    goto :goto_8

    .line 531
    :cond_1a
    cmp-long v1, p4, v16

    .line 532
    .line 533
    if-eqz v1, :cond_1b

    .line 534
    .line 535
    invoke-static {v14}, Lt0/b;->l(I)Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    if-eqz v1, :cond_1e

    .line 540
    .line 541
    cmp-long v1, p4, v12

    .line 542
    .line 543
    if-eqz v1, :cond_1e

    .line 544
    .line 545
    :cond_1b
    const/4 v1, 0x1

    .line 546
    goto :goto_9

    .line 547
    :cond_1c
    :goto_8
    invoke-static {v15}, Lt0/b;->l(I)Z

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    if-nez v1, :cond_1d

    .line 552
    .line 553
    cmp-long v1, p4, v16

    .line 554
    .line 555
    if-nez v1, :cond_1e

    .line 556
    .line 557
    :cond_1d
    iget-object v1, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 558
    .line 559
    invoke-virtual {v1, v5}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    if-eqz v1, :cond_1e

    .line 564
    .line 565
    const/4 v1, 0x2

    .line 566
    goto :goto_9

    .line 567
    :cond_1e
    const/4 v1, 0x0

    .line 568
    :goto_9
    if-eqz v1, :cond_2b

    .line 569
    .line 570
    if-eq v1, v10, :cond_29

    .line 571
    .line 572
    if-eq v1, v6, :cond_22

    .line 573
    .line 574
    if-eq v1, v5, :cond_1f

    .line 575
    .line 576
    goto/16 :goto_11

    .line 577
    .line 578
    :cond_1f
    new-instance v0, Lh0/h;

    .line 579
    .line 580
    iget-object v1, v2, Ld0/f;->k:Lh0/h;

    .line 581
    .line 582
    invoke-direct {v0, v1}, Lh0/h;-><init>(Lh0/h;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2}, Ld0/d;->g()Z

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-eqz v1, :cond_20

    .line 590
    .line 591
    iget-object v1, v2, Ld0/d;->b:Ljava/lang/String;

    .line 592
    .line 593
    invoke-virtual {v0}, Lh0/h;->c()Z

    .line 594
    .line 595
    .line 596
    move-result v2

    .line 597
    if-eqz v2, :cond_21

    .line 598
    .line 599
    iput-object v1, v0, Lh0/h;->d:Ljava/lang/String;

    .line 600
    .line 601
    goto :goto_a

    .line 602
    :cond_20
    iget-object v1, v2, Ld0/d;->a:Ljava/lang/String;

    .line 603
    .line 604
    iget-object v2, v2, Ld0/d;->b:Ljava/lang/String;

    .line 605
    .line 606
    invoke-virtual {v0, v1}, Lh0/h;->a(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    iput-object v2, v0, Lh0/h;->d:Ljava/lang/String;

    .line 610
    .line 611
    :cond_21
    :goto_a
    invoke-virtual {v9, v3, v8, v0}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_11

    .line 615
    .line 616
    :cond_22
    iget-object v0, v2, Ld0/f;->k:Lh0/h;

    .line 617
    .line 618
    iget-object v1, v2, Ld0/d;->a:Ljava/lang/String;

    .line 619
    .line 620
    iget-object v2, v0, Lh0/h;->a:Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {v0}, Lh0/h;->g()Z

    .line 623
    .line 624
    .line 625
    move-result v4

    .line 626
    if-eqz v4, :cond_23

    .line 627
    .line 628
    iget-object v4, v0, Lh0/h;->c:Ljava/lang/String;

    .line 629
    .line 630
    iget-object v0, v0, Lh0/h;->e:Ljava/lang/String;

    .line 631
    .line 632
    invoke-static {v0, v1}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    goto :goto_b

    .line 636
    :cond_23
    invoke-virtual {v0}, Lh0/h;->n()Z

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    if-eqz v4, :cond_24

    .line 641
    .line 642
    new-instance v4, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    goto :goto_b

    .line 660
    :cond_24
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 661
    .line 662
    invoke-static {v0, v1}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v4

    .line 666
    :goto_b
    const-string v0, "/"

    .line 667
    .line 668
    const-string v1, "arch"

    .line 669
    .line 670
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    if-nez v1, :cond_26

    .line 675
    .line 676
    const-string v1, "rarch"

    .line 677
    .line 678
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-eqz v1, :cond_25

    .line 683
    .line 684
    goto :goto_c

    .line 685
    :cond_25
    const/4 v1, 0x0

    .line 686
    goto :goto_d

    .line 687
    :cond_26
    :goto_c
    const/4 v1, 0x1

    .line 688
    :goto_d
    if-eqz v1, :cond_27

    .line 689
    .line 690
    new-instance v1, Lh0/h;

    .line 691
    .line 692
    invoke-direct {v1, v2, v4, v0}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    goto :goto_f

    .line 696
    :cond_27
    new-instance v1, Lh0/h;

    .line 697
    .line 698
    const-string v5, "root"

    .line 699
    .line 700
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    if-eqz v2, :cond_28

    .line 705
    .line 706
    const-string v2, "rarch"

    .line 707
    .line 708
    goto :goto_e

    .line 709
    :cond_28
    const-string v2, "arch"

    .line 710
    .line 711
    :goto_e
    invoke-direct {v1, v2, v4, v0}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    :goto_f
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    iget-object v2, v1, Lh0/h;->c:Ljava/lang/String;

    .line 719
    .line 720
    invoke-virtual {v0, v2}, Lf0/a;->b(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v9, v3, v8, v1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 724
    .line 725
    .line 726
    goto :goto_11

    .line 727
    :cond_29
    iget-object v0, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 728
    .line 729
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 730
    .line 731
    new-instance v3, Lh0/h;

    .line 732
    .line 733
    iget-object v1, v2, Ld0/f;->k:Lh0/h;

    .line 734
    .line 735
    iget-object v5, v2, Ld0/d;->a:Ljava/lang/String;

    .line 736
    .line 737
    iget-object v6, v2, Ld0/d;->b:Ljava/lang/String;

    .line 738
    .line 739
    invoke-direct {v3, v5, v1, v6}, Lh0/h;-><init>(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-wide v5, v2, Ld0/d;->d:J

    .line 743
    .line 744
    iget-byte v1, v2, Ld0/d;->f:B

    .line 745
    .line 746
    const/16 v2, 0x1c

    .line 747
    .line 748
    if-ne v1, v2, :cond_2a

    .line 749
    .line 750
    goto :goto_10

    .line 751
    :cond_2a
    const/4 v10, 0x0

    .line 752
    :goto_10
    const/4 v7, 0x0

    .line 753
    iget v8, v4, Lru/zdevs/zarchiver/b;->h:I

    .line 754
    .line 755
    invoke-virtual {v4}, Lru/zdevs/zarchiver/b;->f()B

    .line 756
    .line 757
    .line 758
    move-result v11

    .line 759
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    move-object/from16 v1, p0

    .line 763
    .line 764
    move-object v2, v3

    .line 765
    move-wide v3, v5

    .line 766
    move v5, v10

    .line 767
    move v6, v7

    .line 768
    move v7, v8

    .line 769
    move v8, v11

    .line 770
    invoke-static/range {v1 .. v8}, Lru/zdevs/zarchiver/a;->j(Lru/zdevs/zarchiver/ZArchiver;Lh0/h;JZIIB)V

    .line 771
    .line 772
    .line 773
    goto :goto_11

    .line 774
    :cond_2b
    iget-object v2, v9, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 775
    .line 776
    const/4 v5, 0x2

    .line 777
    new-array v6, v10, [I

    .line 778
    .line 779
    const/4 v1, 0x0

    .line 780
    aput v0, v6, v1

    .line 781
    .line 782
    iget-object v0, v9, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 783
    .line 784
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getClickPoint()Landroid/graphics/Point;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    move-object/from16 v1, p0

    .line 789
    .line 790
    move-object v3, v4

    .line 791
    move v4, v5

    .line 792
    move-object v5, v6

    .line 793
    move-object v6, v0

    .line 794
    invoke-static/range {v1 .. v6}, Lh0/g;->c(Landroid/content/Context;Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/b;I[ILandroid/graphics/Point;)V

    .line 795
    .line 796
    .line 797
    :cond_2c
    :goto_11
    return-void

    .line 798
    :cond_2d
    :try_start_3
    monitor-exit v1

    .line 799
    return-void

    .line 800
    :catchall_1
    move-exception v0

    .line 801
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 802
    throw v0
.end method

.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    move v0, p3

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v6, Lru/zdevs/zarchiver/ZArchiver;->n:Z

    .line 5
    .line 6
    iget-object v2, v6, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 7
    .line 8
    invoke-virtual {v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v3, v6, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 16
    .line 17
    iget-char v4, v3, Lru/zdevs/zarchiver/d;->a:C

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    if-eq v4, v5, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    invoke-virtual {v2, p3}, Ld0/h;->a(I)Ld0/d;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ld0/d;->g()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v8, 0x1

    .line 34
    if-eqz v7, :cond_3

    .line 35
    .line 36
    iget-object v0, v2, Ld0/h;->h:Ld0/b;

    .line 37
    .line 38
    iget v0, v0, Ld0/b;->a:I

    .line 39
    .line 40
    if-lez v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Ld0/h;->h()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v2}, Ld0/h;->g()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return v8

    .line 50
    :cond_3
    iget-object v7, v2, Ld0/h;->h:Ld0/b;

    .line 51
    .line 52
    iget v9, v7, Ld0/b;->a:I

    .line 53
    .line 54
    iget v10, v2, Ld0/h;->g:I

    .line 55
    .line 56
    if-lez v9, :cond_5

    .line 57
    .line 58
    iget-boolean v4, v4, Ld0/d;->g:Z

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    invoke-virtual {v7, p3}, Ld0/b;->f(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v1, v2, Ld0/h;->n:Ld0/h$a;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, v2, Ld0/h;->h:Ld0/b;

    .line 73
    .line 74
    iget v0, v0, Ld0/b;->a:I

    .line 75
    .line 76
    invoke-interface {v1, v10, v0, v8}, Ld0/h$a;->d(IIZ)V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 80
    .line 81
    .line 82
    return v8

    .line 83
    :cond_5
    iget-char v4, v3, Lru/zdevs/zarchiver/d;->a:C

    .line 84
    .line 85
    if-ne v4, v5, :cond_6

    .line 86
    .line 87
    iget-object v4, v6, Lb0/c;->b:Landroid/view/ActionMode;

    .line 88
    .line 89
    if-eqz v4, :cond_6

    .line 90
    .line 91
    invoke-virtual {v4, v3}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, v6, Lb0/c;->b:Landroid/view/ActionMode;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/view/ActionMode;->finish()V

    .line 97
    .line 98
    .line 99
    :cond_6
    const/4 v4, -0x1

    .line 100
    const/16 v5, 0xa

    .line 101
    .line 102
    invoke-virtual {v3, v4, v5, v4}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-eqz v3, :cond_7

    .line 107
    .line 108
    return v8

    .line 109
    :cond_7
    iget-object v3, v2, Ld0/h;->h:Ld0/b;

    .line 110
    .line 111
    iget v3, v3, Ld0/b;->a:I

    .line 112
    .line 113
    if-lez v3, :cond_8

    .line 114
    .line 115
    invoke-virtual {v2}, Ld0/h;->d()[I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    move-object v4, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_8
    new-array v2, v8, [I

    .line 122
    .line 123
    aput v0, v2, v1

    .line 124
    .line 125
    move-object v4, v2

    .line 126
    :goto_1
    iget-object v1, v6, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 127
    .line 128
    iget-object v0, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 129
    .line 130
    aget-object v2, v0, v10

    .line 131
    .line 132
    const/4 v3, 0x3

    .line 133
    iget-object v0, v6, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 134
    .line 135
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getClickPoint()Landroid/graphics/Point;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    move-object v0, p0

    .line 140
    invoke-static/range {v0 .. v5}, Lh0/g;->c(Landroid/content/Context;Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/b;I[ILandroid/graphics/Point;)V

    .line 141
    .line 142
    .line 143
    return v8
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    const/16 v4, 0x1000

    .line 15
    .line 16
    invoke-static {v3, v4}, La0/c;->K(II)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    const/16 v5, 0x10

    .line 22
    .line 23
    iget-object v6, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 24
    .line 25
    if-eqz v3, :cond_10

    .line 26
    .line 27
    const/16 v3, 0x1d

    .line 28
    .line 29
    if-eq v1, v3, :cond_e

    .line 30
    .line 31
    const/16 v3, 0x1f

    .line 32
    .line 33
    if-eq v1, v3, :cond_c

    .line 34
    .line 35
    const/16 v3, 0x21

    .line 36
    .line 37
    if-eq v1, v3, :cond_a

    .line 38
    .line 39
    const/16 v3, 0x32

    .line 40
    .line 41
    if-eq v1, v3, :cond_8

    .line 42
    .line 43
    const/16 v3, 0x34

    .line 44
    .line 45
    if-eq v1, v3, :cond_6

    .line 46
    .line 47
    const/16 v3, 0x3d

    .line 48
    .line 49
    if-eq v1, v3, :cond_1

    .line 50
    .line 51
    goto/16 :goto_12

    .line 52
    .line 53
    :cond_1
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 54
    .line 55
    iget v3, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->z:I

    .line 56
    .line 57
    invoke-static {v3, v5}, La0/c;->K(II)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget v3, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    const/4 v5, 0x0

    .line 71
    :goto_1
    iget-object v6, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->h:[Landroid/widget/AbsListView;

    .line 72
    .line 73
    aget-object v6, v6, v5

    .line 74
    .line 75
    if-nez v6, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    if-eq v3, v5, :cond_5

    .line 79
    .line 80
    iput v5, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 81
    .line 82
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->a()V

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->y:Lru/zdevs/zarchiver/ui/FilePanelView$h;

    .line 86
    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    iget v1, v1, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 90
    .line 91
    check-cast v2, Lru/zdevs/zarchiver/ZArchiver;

    .line 92
    .line 93
    invoke-virtual {v2, v1}, Lru/zdevs/zarchiver/ZArchiver;->C(I)V

    .line 94
    .line 95
    .line 96
    :cond_5
    const/4 v2, 0x1

    .line 97
    :goto_2
    return v2

    .line 98
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->E()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_7

    .line 103
    .line 104
    const v1, 0x7f07000d

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    :cond_7
    return v2

    .line 115
    :cond_8
    const v1, 0x7f07002f

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_9

    .line 123
    .line 124
    invoke-virtual {v6, v2}, Lru/zdevs/zarchiver/d;->g(C)V

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lb0/c;->j()V

    .line 128
    .line 129
    .line 130
    return v4

    .line 131
    :cond_9
    return v2

    .line 132
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->E()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_b

    .line 137
    .line 138
    const v1, 0x7f070010

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_b

    .line 146
    .line 147
    const/4 v2, 0x1

    .line 148
    :cond_b
    return v2

    .line 149
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->E()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_d

    .line 154
    .line 155
    const v1, 0x7f07000a

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    const/4 v2, 0x1

    .line 165
    :cond_d
    return v2

    .line 166
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->E()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_f

    .line 171
    .line 172
    const v1, 0x7f070009

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_f

    .line 180
    .line 181
    const/4 v2, 0x1

    .line 182
    :cond_f
    return v2

    .line 183
    :cond_10
    const/16 v3, 0x43

    .line 184
    .line 185
    if-eq v1, v3, :cond_39

    .line 186
    .line 187
    const/16 v3, 0x45

    .line 188
    .line 189
    if-eq v1, v3, :cond_38

    .line 190
    .line 191
    const/16 v3, 0x4c

    .line 192
    .line 193
    if-eq v1, v3, :cond_37

    .line 194
    .line 195
    const/16 v3, 0x9a

    .line 196
    .line 197
    if-eq v1, v3, :cond_37

    .line 198
    .line 199
    const/16 v3, 0xae

    .line 200
    .line 201
    const/4 v7, 0x2

    .line 202
    if-eq v1, v3, :cond_36

    .line 203
    .line 204
    const/16 v3, 0x5c

    .line 205
    .line 206
    if-eq v1, v3, :cond_35

    .line 207
    .line 208
    const/16 v8, 0x5d

    .line 209
    .line 210
    if-eq v1, v8, :cond_34

    .line 211
    .line 212
    const/16 v9, 0x6f

    .line 213
    .line 214
    if-eq v1, v9, :cond_32

    .line 215
    .line 216
    const/16 v9, 0x70

    .line 217
    .line 218
    if-eq v1, v9, :cond_30

    .line 219
    .line 220
    const/16 v9, 0x7a

    .line 221
    .line 222
    if-eq v1, v9, :cond_2f

    .line 223
    .line 224
    const/16 v9, 0x7b

    .line 225
    .line 226
    if-eq v1, v9, :cond_2e

    .line 227
    .line 228
    const/16 v9, 0x9c

    .line 229
    .line 230
    if-eq v1, v9, :cond_38

    .line 231
    .line 232
    const/16 v9, 0x9d

    .line 233
    .line 234
    if-eq v1, v9, :cond_2d

    .line 235
    .line 236
    packed-switch v1, :pswitch_data_0

    .line 237
    .line 238
    .line 239
    goto/16 :goto_12

    .line 240
    .line 241
    :pswitch_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 242
    .line 243
    if-eqz v1, :cond_13

    .line 244
    .line 245
    iget v3, v1, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 246
    .line 247
    if-gt v3, v7, :cond_11

    .line 248
    .line 249
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->getOnMenuButtonClick()Landroid/view/View$OnClickListener;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iget-object v2, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 254
    .line 255
    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_11
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_12

    .line 264
    .line 265
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 266
    .line 267
    invoke-virtual {v1, v2, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 271
    .line 272
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 273
    .line 274
    .line 275
    goto :goto_3

    .line 276
    :cond_12
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 277
    .line 278
    invoke-virtual {v1, v4}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuState(Z)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 282
    .line 283
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 284
    .line 285
    .line 286
    :cond_13
    :goto_3
    return v4

    .line 287
    :pswitch_1
    iget-char v1, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 288
    .line 289
    const/16 v9, 0x17

    .line 290
    .line 291
    iget-object v11, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 292
    .line 293
    if-nez v1, :cond_19

    .line 294
    .line 295
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 296
    .line 297
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    if-eqz v1, :cond_14

    .line 302
    .line 303
    iget-object v12, v1, Ld0/h;->h:Ld0/b;

    .line 304
    .line 305
    iget v12, v12, Ld0/b;->a:I

    .line 306
    .line 307
    if-lez v12, :cond_14

    .line 308
    .line 309
    const/4 v12, 0x1

    .line 310
    goto :goto_4

    .line 311
    :cond_14
    const/4 v12, 0x0

    .line 312
    :goto_4
    if-eqz v12, :cond_1a

    .line 313
    .line 314
    invoke-virtual {v1}, Ld0/h;->d()[I

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    array-length v14, v13

    .line 319
    const/4 v15, 0x0

    .line 320
    :goto_5
    if-ge v15, v14, :cond_18

    .line 321
    .line 322
    aget v2, v13, v15

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ld0/h;->a(I)Ld0/d;

    .line 325
    .line 326
    .line 327
    move-result-object v2

    .line 328
    invoke-virtual {v2}, Ld0/d;->d()B

    .line 329
    .line 330
    .line 331
    move-result v7

    .line 332
    iget-byte v2, v2, Ld0/d;->f:B

    .line 333
    .line 334
    invoke-static {v7}, La0/c;->H(B)Z

    .line 335
    .line 336
    .line 337
    move-result v16

    .line 338
    if-eqz v16, :cond_15

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_15
    if-ne v7, v9, :cond_16

    .line 342
    .line 343
    const/16 v7, 0x1e

    .line 344
    .line 345
    if-ne v2, v7, :cond_16

    .line 346
    .line 347
    :goto_6
    const/4 v2, 0x1

    .line 348
    goto :goto_7

    .line 349
    :cond_16
    const/4 v2, 0x0

    .line 350
    :goto_7
    if-nez v2, :cond_17

    .line 351
    .line 352
    const/4 v2, 0x0

    .line 353
    goto :goto_8

    .line 354
    :cond_17
    add-int/lit8 v15, v15, 0x1

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    const/4 v7, 0x2

    .line 358
    goto :goto_5

    .line 359
    :cond_18
    const/4 v2, 0x1

    .line 360
    :goto_8
    iget-object v7, v6, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 361
    .line 362
    iget v1, v1, Ld0/h;->g:I

    .line 363
    .line 364
    aget-object v1, v7, v1

    .line 365
    .line 366
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    :try_start_0
    invoke-virtual {v1, v13}, Lru/zdevs/zarchiver/b;->a([I)La0/a;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iput-object v1, v11, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 374
    .line 375
    invoke-virtual {v1}, La0/a;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .line 377
    .line 378
    goto :goto_9

    .line 379
    :catch_0
    nop

    .line 380
    goto :goto_9

    .line 381
    :cond_19
    const/4 v12, 0x0

    .line 382
    :cond_1a
    const/4 v2, 0x0

    .line 383
    :goto_9
    invoke-virtual {v6}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    const/4 v7, 0x4

    .line 388
    invoke-virtual {v1, v7}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 389
    .line 390
    .line 391
    move-result v7

    .line 392
    if-eqz v7, :cond_1b

    .line 393
    .line 394
    iget-object v13, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 395
    .line 396
    iget-object v13, v13, Lh0/h;->c:Ljava/lang/String;

    .line 397
    .line 398
    invoke-static {v4, v13}, La0/c;->N(ILjava/lang/String;)Z

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    if-eqz v13, :cond_1b

    .line 403
    .line 404
    const/4 v13, 0x1

    .line 405
    goto :goto_a

    .line 406
    :cond_1b
    const/4 v13, 0x0

    .line 407
    :goto_a
    iget-object v11, v11, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 408
    .line 409
    if-eqz v11, :cond_1c

    .line 410
    .line 411
    const/4 v11, 0x1

    .line 412
    goto :goto_b

    .line 413
    :cond_1c
    const/4 v11, 0x0

    .line 414
    :goto_b
    if-eqz v11, :cond_1d

    .line 415
    .line 416
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    if-nez v11, :cond_1d

    .line 421
    .line 422
    const/4 v11, 0x1

    .line 423
    goto :goto_c

    .line 424
    :cond_1d
    const/4 v11, 0x0

    .line 425
    :goto_c
    new-instance v14, Lh0/g;

    .line 426
    .line 427
    invoke-direct {v14, v0}, Lh0/g;-><init>(Landroid/content/Context;)V

    .line 428
    .line 429
    .line 430
    iget-char v15, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 431
    .line 432
    const/16 v4, 0xf

    .line 433
    .line 434
    const/16 v10, 0xe

    .line 435
    .line 436
    if-nez v15, :cond_26

    .line 437
    .line 438
    if-eqz v12, :cond_1e

    .line 439
    .line 440
    if-nez v7, :cond_1e

    .line 441
    .line 442
    if-nez v2, :cond_1e

    .line 443
    .line 444
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    if-nez v1, :cond_1e

    .line 449
    .line 450
    const/16 v1, 0x8

    .line 451
    .line 452
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 453
    .line 454
    .line 455
    :cond_1e
    if-nez v2, :cond_1f

    .line 456
    .line 457
    if-eqz v7, :cond_20

    .line 458
    .line 459
    if-eqz v12, :cond_20

    .line 460
    .line 461
    :cond_1f
    const/4 v1, 0x5

    .line 462
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 463
    .line 464
    .line 465
    :cond_20
    if-nez v12, :cond_22

    .line 466
    .line 467
    if-eqz v11, :cond_22

    .line 468
    .line 469
    if-eqz v7, :cond_21

    .line 470
    .line 471
    if-eqz v13, :cond_22

    .line 472
    .line 473
    :cond_21
    const/16 v1, 0x1a

    .line 474
    .line 475
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 476
    .line 477
    .line 478
    :cond_22
    if-eqz v12, :cond_24

    .line 479
    .line 480
    const/16 v1, 0x18

    .line 481
    .line 482
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 483
    .line 484
    .line 485
    if-eqz v7, :cond_23

    .line 486
    .line 487
    if-eqz v13, :cond_24

    .line 488
    .line 489
    const/16 v1, 0x38

    .line 490
    .line 491
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 492
    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_23
    const/16 v1, 0x19

    .line 496
    .line 497
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v14, v9}, Lh0/g;->a(I)V

    .line 501
    .line 502
    .line 503
    :cond_24
    :goto_d
    invoke-virtual {v14, v10}, Lh0/g;->a(I)V

    .line 504
    .line 505
    .line 506
    if-eqz v12, :cond_25

    .line 507
    .line 508
    invoke-virtual {v14, v5}, Lh0/g;->a(I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v14, v4}, Lh0/g;->a(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_10

    .line 515
    :cond_25
    const/16 v1, 0x5b

    .line 516
    .line 517
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 518
    .line 519
    .line 520
    goto :goto_10

    .line 521
    :cond_26
    const/16 v1, 0x9

    .line 522
    .line 523
    if-eq v15, v1, :cond_29

    .line 524
    .line 525
    const/16 v1, 0x11

    .line 526
    .line 527
    if-ne v15, v1, :cond_27

    .line 528
    .line 529
    goto :goto_e

    .line 530
    :cond_27
    const/16 v1, 0x41

    .line 531
    .line 532
    if-ne v15, v1, :cond_28

    .line 533
    .line 534
    invoke-virtual {v14, v8}, Lh0/g;->a(I)V

    .line 535
    .line 536
    .line 537
    goto :goto_f

    .line 538
    :cond_28
    const/16 v1, 0x22

    .line 539
    .line 540
    if-ne v15, v1, :cond_2a

    .line 541
    .line 542
    const/16 v1, 0x5e

    .line 543
    .line 544
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 545
    .line 546
    .line 547
    goto :goto_f

    .line 548
    :cond_29
    :goto_e
    invoke-virtual {v14, v3}, Lh0/g;->a(I)V

    .line 549
    .line 550
    .line 551
    :cond_2a
    :goto_f
    iget-char v1, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 552
    .line 553
    const/4 v2, 0x3

    .line 554
    and-int/2addr v1, v2

    .line 555
    int-to-char v1, v1

    .line 556
    const/4 v2, 0x2

    .line 557
    if-ne v1, v2, :cond_2b

    .line 558
    .line 559
    invoke-virtual {v14, v10}, Lh0/g;->a(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v14, v5}, Lh0/g;->a(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v14, v4}, Lh0/g;->a(I)V

    .line 566
    .line 567
    .line 568
    :cond_2b
    iget-char v1, v6, Lru/zdevs/zarchiver/d;->a:C

    .line 569
    .line 570
    if-ne v1, v2, :cond_2c

    .line 571
    .line 572
    const/16 v1, 0x5f

    .line 573
    .line 574
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 575
    .line 576
    .line 577
    goto :goto_10

    .line 578
    :cond_2c
    const/16 v1, 0x60

    .line 579
    .line 580
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 581
    .line 582
    .line 583
    :goto_10
    const/16 v1, 0x5a

    .line 584
    .line 585
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 586
    .line 587
    .line 588
    const/16 v1, 0x61

    .line 589
    .line 590
    invoke-virtual {v14, v1}, Lh0/g;->a(I)V

    .line 591
    .line 592
    .line 593
    const v1, 0x7f0c01a4

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    iput-object v1, v14, Lh0/g;->d:Ljava/lang/String;

    .line 601
    .line 602
    const/4 v1, 0x0

    .line 603
    const/4 v2, 0x0

    .line 604
    invoke-virtual {v14, v6, v2, v1}, Lh0/g;->d(Lru/zdevs/zarchiver/d;ILandroid/graphics/Point;)V

    .line 605
    .line 606
    .line 607
    const/4 v2, 0x1

    .line 608
    return v2

    .line 609
    :cond_2d
    :pswitch_2
    const/4 v2, 0x1

    .line 610
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 611
    .line 612
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->g(I)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    return v1

    .line 617
    :cond_2e
    const/4 v2, 0x1

    .line 618
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 619
    .line 620
    const/4 v3, 0x3

    .line 621
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->d(I)V

    .line 622
    .line 623
    .line 624
    return v2

    .line 625
    :cond_2f
    const/4 v2, 0x1

    .line 626
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 627
    .line 628
    const/4 v3, 0x2

    .line 629
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->d(I)V

    .line 630
    .line 631
    .line 632
    return v2

    .line 633
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lru/zdevs/zarchiver/ZArchiver;->E()Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    if-eqz v1, :cond_31

    .line 638
    .line 639
    const v1, 0x7f07000e

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-eqz v1, :cond_31

    .line 647
    .line 648
    const/4 v2, 0x1

    .line 649
    goto :goto_11

    .line 650
    :cond_31
    const/4 v2, 0x0

    .line 651
    :goto_11
    return v2

    .line 652
    :cond_32
    iget-object v2, v0, Lb0/c;->b:Landroid/view/ActionMode;

    .line 653
    .line 654
    if-eqz v2, :cond_33

    .line 655
    .line 656
    const/4 v2, 0x0

    .line 657
    invoke-virtual {v6, v2}, Lru/zdevs/zarchiver/d;->g(C)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p0 .. p0}, Lb0/c;->j()V

    .line 661
    .line 662
    .line 663
    const/4 v1, 0x1

    .line 664
    return v1

    .line 665
    :cond_33
    :goto_12
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    return v1

    .line 670
    :cond_34
    const/4 v1, 0x1

    .line 671
    iget-object v2, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 672
    .line 673
    invoke-virtual {v2, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->d(I)V

    .line 674
    .line 675
    .line 676
    return v1

    .line 677
    :cond_35
    const/4 v1, 0x1

    .line 678
    iget-object v3, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 679
    .line 680
    invoke-virtual {v3, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->d(I)V

    .line 681
    .line 682
    .line 683
    return v1

    .line 684
    :cond_36
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 685
    .line 686
    const/4 v2, 0x2

    .line 687
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->g(I)Z

    .line 688
    .line 689
    .line 690
    move-result v1

    .line 691
    return v1

    .line 692
    :cond_37
    const v1, 0x7f070037

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    return v1

    .line 700
    :cond_38
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 701
    .line 702
    const/4 v2, 0x0

    .line 703
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->g(I)Z

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    return v1

    .line 708
    :cond_39
    const/4 v1, 0x1

    .line 709
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZArchiver;->A(Z)V

    .line 710
    .line 711
    .line 712
    return v1

    .line 713
    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZArchiver;->A(Z)V

    .line 10
    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    const/16 v0, 0x54

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 18
    .line 19
    iget-char v1, v0, Lru/zdevs/zarchiver/d;->a:C

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconified()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public final onLowMemory()V
    .locals 2

    .line 1
    const-string v0, "ZArchiver"

    .line 2
    .line 3
    const-string v1, "Low memory image cash release!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 9
    .line 10
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lq0/g;->c(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_10

    .line 4
    .line 5
    invoke-static {p2}, Lz0/e;->m(Landroid/view/Menu;)V

    .line 6
    .line 7
    .line 8
    instance-of v0, p2, Landroid/view/SubMenu;

    .line 9
    .line 10
    if-eqz v0, :cond_10

    .line 11
    .line 12
    move-object v0, p2

    .line 13
    check-cast v0, Landroid/view/SubMenu;

    .line 14
    .line 15
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const v1, 0x7f070027

    .line 24
    .line 25
    .line 26
    if-ne v0, v1, :cond_10

    .line 27
    .line 28
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 29
    .line 30
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/4 v2, 0x4

    .line 35
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget-object v5, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 44
    .line 45
    iget-object v5, v5, Lh0/h;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3, v5}, La0/c;->N(ILjava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v5, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 57
    :goto_1
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    xor-int/2addr v6, v3

    .line 62
    iget-object v7, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 63
    .line 64
    invoke-virtual {v7}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    iget-object v8, v7, Ld0/h;->h:Ld0/b;

    .line 71
    .line 72
    iget v8, v8, Ld0/b;->a:I

    .line 73
    .line 74
    if-lez v8, :cond_2

    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    const/4 v8, 0x0

    .line 79
    :goto_2
    if-eqz v8, :cond_4

    .line 80
    .line 81
    invoke-virtual {v7}, Ld0/h;->d()[I

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    array-length v10, v9

    .line 86
    const/4 v11, 0x0

    .line 87
    :goto_3
    if-ge v11, v10, :cond_4

    .line 88
    .line 89
    aget v12, v9, v11

    .line 90
    .line 91
    invoke-virtual {v7, v12}, Ld0/h;->a(I)Ld0/d;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual {v12}, Ld0/d;->d()B

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    invoke-static {v12}, La0/c;->H(B)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-nez v12, :cond_3

    .line 104
    .line 105
    const/4 v9, 0x0

    .line 106
    goto :goto_4

    .line 107
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    move v9, v8

    .line 111
    :goto_4
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->f()B

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const/4 v10, 0x2

    .line 116
    if-ne v1, v10, :cond_6

    .line 117
    .line 118
    if-eqz v7, :cond_6

    .line 119
    .line 120
    iget-object v7, v7, Ld0/h;->h:Ld0/b;

    .line 121
    .line 122
    iget v7, v7, Ld0/b;->a:I

    .line 123
    .line 124
    if-ge v7, v10, :cond_5

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_5
    const/4 v7, 0x0

    .line 128
    goto :goto_6

    .line 129
    :cond_6
    :goto_5
    const/4 v7, 0x1

    .line 130
    :goto_6
    const v11, 0x7f07000a

    .line 131
    .line 132
    .line 133
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 138
    .line 139
    .line 140
    const v11, 0x7f07000d

    .line 141
    .line 142
    .line 143
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    if-eqz v8, :cond_7

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    if-eq v1, v10, :cond_7

    .line 152
    .line 153
    const/4 v12, 0x1

    .line 154
    goto :goto_7

    .line 155
    :cond_7
    const/4 v12, 0x0

    .line 156
    :goto_7
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 157
    .line 158
    .line 159
    const v11, 0x7f07002f

    .line 160
    .line 161
    .line 162
    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 163
    .line 164
    .line 165
    move-result-object v11

    .line 166
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 167
    .line 168
    iget-object v0, v0, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 169
    .line 170
    if-eqz v0, :cond_8

    .line 171
    .line 172
    const/4 v0, 0x1

    .line 173
    goto :goto_8

    .line 174
    :cond_8
    const/4 v0, 0x0

    .line 175
    :goto_8
    if-eqz v0, :cond_9

    .line 176
    .line 177
    if-eqz v5, :cond_9

    .line 178
    .line 179
    if-eqz v6, :cond_9

    .line 180
    .line 181
    if-eq v1, v10, :cond_9

    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    goto :goto_9

    .line 185
    :cond_9
    const/4 v0, 0x0

    .line 186
    :goto_9
    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 187
    .line 188
    .line 189
    const v0, 0x7f070010

    .line 190
    .line 191
    .line 192
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-nez v2, :cond_b

    .line 197
    .line 198
    if-eqz v8, :cond_a

    .line 199
    .line 200
    if-eqz v9, :cond_a

    .line 201
    .line 202
    goto :goto_a

    .line 203
    :cond_a
    const/4 v1, 0x0

    .line 204
    goto :goto_b

    .line 205
    :cond_b
    :goto_a
    const/4 v1, 0x1

    .line 206
    :goto_b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 207
    .line 208
    .line 209
    const v0, 0x7f07003d

    .line 210
    .line 211
    .line 212
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-nez v2, :cond_d

    .line 217
    .line 218
    if-eqz v8, :cond_c

    .line 219
    .line 220
    if-eqz v9, :cond_c

    .line 221
    .line 222
    goto :goto_c

    .line 223
    :cond_c
    const/4 v1, 0x0

    .line 224
    goto :goto_d

    .line 225
    :cond_d
    :goto_c
    const/4 v1, 0x1

    .line 226
    :goto_d
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 227
    .line 228
    .line 229
    const v0, 0x7f070009

    .line 230
    .line 231
    .line 232
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v8, :cond_e

    .line 237
    .line 238
    if-nez v2, :cond_e

    .line 239
    .line 240
    if-eqz v6, :cond_e

    .line 241
    .line 242
    const/4 v1, 0x1

    .line 243
    goto :goto_e

    .line 244
    :cond_e
    const/4 v1, 0x0

    .line 245
    :goto_e
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 246
    .line 247
    .line 248
    const v0, 0x7f07000e

    .line 249
    .line 250
    .line 251
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-eqz v8, :cond_f

    .line 256
    .line 257
    if-eqz v5, :cond_f

    .line 258
    .line 259
    if-eqz v7, :cond_f

    .line 260
    .line 261
    goto :goto_f

    .line 262
    :cond_f
    const/4 v3, 0x0

    .line 263
    :goto_f
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 264
    .line 265
    .line 266
    :cond_10
    invoke-super {p0, p1, p2}, Lb0/c;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    return p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "ru.zdevs.zarchiver.APP_INSTALL_RESULT"

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_c

    .line 19
    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x15

    .line 23
    .line 24
    if-lt v0, v2, :cond_c

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string v2, "android.content.pm.extra.STATUS"

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v5, 0x0

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    move-object v6, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance v6, Lh0/h;

    .line 56
    .line 57
    invoke-direct {v6, p1}, Lh0/h;-><init>(Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    const/4 p1, 0x1

    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    iget-object v7, v6, Lh0/h;->c:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    const-string v8, ".xapk"

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    const/4 v7, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/4 v7, 0x0

    .line 80
    :goto_1
    iget-object v8, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 81
    .line 82
    if-eqz v7, :cond_4

    .line 83
    .line 84
    if-nez v2, :cond_4

    .line 85
    .line 86
    new-instance v3, La0/q0;

    .line 87
    .line 88
    iget-object v7, v8, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 89
    .line 90
    iget-object v7, v7, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 91
    .line 92
    invoke-direct {v3, v7, v6}, La0/q0;-><init>(Lru/zdevs/zarchiver/c;Lh0/h;)V

    .line 93
    .line 94
    .line 95
    iget-object v7, p0, Lb0/c;->c:Lw0/a;

    .line 96
    .line 97
    invoke-virtual {v3, v5, v7}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    if-eq v2, v3, :cond_5

    .line 102
    .line 103
    const/16 v7, 0x17

    .line 104
    .line 105
    invoke-virtual {v8, v3, p1, v7}, Lru/zdevs/zarchiver/d;->b(III)Lg0/i;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lg0/y;

    .line 110
    .line 111
    if-eqz v3, :cond_5

    .line 112
    .line 113
    invoke-virtual {v3}, Lg0/y;->e()V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 117
    .line 118
    .line 119
    invoke-static {v4}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :pswitch_0
    if-nez v6, :cond_6

    .line 125
    .line 126
    const-string v0, ""

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {v6}, Lh0/h;->e()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :goto_3
    new-instance v2, Le0/a$b;

    .line 134
    .line 135
    invoke-direct {v2, v0}, Le0/a$b;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Le0/a$a;

    .line 139
    .line 140
    invoke-direct {v0, v1, v4}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, v2, Le0/a$b;->c:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    new-instance v0, Le0/a$a;

    .line 149
    .line 150
    const v4, 0x7f0c00ef

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-direct {v0, v1, v4}, Le0/a$a;-><init>(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    new-array p1, p1, [Le0/a$b;

    .line 164
    .line 165
    aput-object v2, p1, v1

    .line 166
    .line 167
    new-instance v0, Lg0/n;

    .line 168
    .line 169
    invoke-direct {v0, v8, p0, p1}, Lg0/n;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Le0/a$b;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, v0, Lg0/n;->g:Landroid/app/AlertDialog;

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    invoke-static {p1}, Lg0/i;->s(Landroid/app/Dialog;)Z

    .line 177
    .line 178
    .line 179
    :cond_7
    new-instance p1, Lru/zdevs/zarchiver/ZArchiver$c;

    .line 180
    .line 181
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZArchiver$c;-><init>(Lru/zdevs/zarchiver/ZArchiver;)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :pswitch_1
    const p1, 0x7f0c00ee

    .line 189
    .line 190
    .line 191
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :pswitch_2
    const-string p1, "android.intent.extra.INTENT"

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Landroid/content/Intent;

    .line 202
    .line 203
    if-nez p1, :cond_8

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "Incorrect confirm pending"

    .line 215
    .line 216
    if-eqz v0, :cond_a

    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "ru.zdevs"

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_9

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_a

    .line 239
    .line 240
    :cond_9
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_a
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const/4 v2, 0x3

    .line 249
    invoke-static {v0, v2}, La0/c;->L(II)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_b
    new-instance v0, Lh1/g;

    .line 260
    .line 261
    const/16 v1, 0x70

    .line 262
    .line 263
    invoke-direct {v0, p0, p1, v1, v5}, Lh1/g;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 267
    .line 268
    .line 269
    :goto_4
    :pswitch_3
    return-void

    .line 270
    :cond_c
    invoke-virtual {p0, p1, v1, v1}, Lru/zdevs/zarchiver/ZArchiver;->N(Landroid/content/Intent;ZZ)Z

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZArchiver;->A(Z)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v1, 0x7f070028

    .line 20
    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 25
    .line 26
    invoke-virtual {p1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lf1/b;

    .line 31
    .line 32
    iget v2, p1, Lru/zdevs/zarchiver/b;->g:I

    .line 33
    .line 34
    iget-boolean v3, p1, Lru/zdevs/zarchiver/b;->i:Z

    .line 35
    .line 36
    iget v4, p1, Lru/zdevs/zarchiver/b;->h:I

    .line 37
    .line 38
    invoke-direct {v0, p0, v2, v3, v4}, Lf1/b;-><init>(Landroid/content/Context;IZI)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2, v1}, Lf1/c;->a(Landroid/view/Window;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lru/zdevs/zarchiver/ZArchiver$f;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/ZArchiver$f;-><init>(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/b;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lf1/b;->h:Lf1/b$e;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 76
    return p1
.end method

.method public final onPause()V
    .locals 5

    .line 1
    invoke-super {p0}, Lb0/c;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->g:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->g:Landroid/os/Handler;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 15
    .line 16
    const/16 v2, 0x64

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, -0x1

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Lw0/a;->f(III)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lru/zdevs/zarchiver/ZArchiver;->p:J

    .line 30
    .line 31
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    array-length p1, p3

    .line 2
    if-lez p1, :cond_3

    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    aget p2, p3, p1

    .line 6
    .line 7
    if-nez p2, :cond_3

    .line 8
    .line 9
    invoke-static {}, Lx0/d;->o()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    check-cast p3, Lx0/d$a;

    .line 28
    .line 29
    iget v0, p3, Lx0/d$a;->f:I

    .line 30
    .line 31
    and-int/lit16 v0, v0, -0x6001

    .line 32
    .line 33
    iput v0, p3, Lx0/d$a;->f:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 37
    .line 38
    iget-object p3, p2, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 39
    .line 40
    aget-object v0, p3, p1

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iput-byte p1, v0, Lru/zdevs/zarchiver/b;->d:B

    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    aget-object p3, p3, v0

    .line 48
    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    iput-byte p1, p3, Lru/zdevs/zarchiver/b;->d:B

    .line 52
    .line 53
    :cond_2
    iget v1, p2, Lru/zdevs/zarchiver/d;->e:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v3, 0x0

    .line 60
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 61
    .line 62
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x0

    .line 67
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    :cond_3
    return-void
.end method

.method public final onRestart()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lt0/b;->h(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    new-instance v1, Lt0/b$a;

    .line 12
    .line 13
    invoke-direct {v1}, Lt0/b$a;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p0, v2, v1}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v3, v1, Lt0/b$a;->a:Z

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    sput-object v4, Lru/zdevs/zarchiver/ZArchiver;->r:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {p0}, Lb0/c;->recreate()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-static {p0}, Lv0/h;->d(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lz0/b;->c:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 37
    .line 38
    .line 39
    iget-boolean v3, v1, Lt0/b$a;->e:Z

    .line 40
    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    sget-object v3, Lf0/a;->e:Lf0/a;

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3}, Lf0/a;->a()V

    .line 48
    .line 49
    .line 50
    :cond_1
    sput-object v4, Lf0/a;->e:Lf0/a;

    .line 51
    .line 52
    iput-boolean v0, v1, Lt0/b$a;->b:Z

    .line 53
    .line 54
    :cond_2
    iget-boolean v3, v1, Lt0/b$a;->b:Z

    .line 55
    .line 56
    if-eqz v3, :cond_6

    .line 57
    .line 58
    const/16 v3, 0x80

    .line 59
    .line 60
    invoke-static {v3}, Lt0/b;->l(I)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    const/4 v3, 0x2

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v3, 0x1

    .line 69
    :goto_0
    const/4 v5, 0x0

    .line 70
    :goto_1
    if-ge v5, v3, :cond_5

    .line 71
    .line 72
    iget-boolean v6, v1, Lt0/b$a;->c:Z

    .line 73
    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 77
    .line 78
    iget-object v6, v6, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 79
    .line 80
    aget-object v6, v6, v5

    .line 81
    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    invoke-virtual {v6}, Lru/zdevs/zarchiver/b;->n()V

    .line 85
    .line 86
    .line 87
    :cond_4
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 88
    .line 89
    invoke-virtual {v6, v5, v4, v2, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->h(ILd0/h;ZZ)V

    .line 90
    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    const-wide/16 v3, 0x0

    .line 96
    .line 97
    iput-wide v3, p0, Lru/zdevs/zarchiver/ZArchiver;->p:J

    .line 98
    .line 99
    :cond_6
    iget-boolean v1, v1, Lt0/b$a;->d:Z

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    const/16 v0, 0xa

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZArchiver;->R(I)V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    :cond_7
    if-eqz v0, :cond_8

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZArchiver;->R(I)V

    .line 114
    .line 115
    .line 116
    :cond_8
    return-void
.end method

.method public final onResume()V
    .locals 13

    .line 1
    invoke-super {p0}, Lb0/c;->onResume()V

    .line 2
    .line 3
    .line 4
    sput-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 5
    .line 6
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-interface {v0, v1}, Lru/zdevs/zarchiver/service/c;->GUIStatus(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 15
    .line 16
    invoke-static {}, Lt0/b;->b()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sget v3, Lt0/b;->g:I

    .line 21
    .line 22
    sget-object v4, Lt0/b;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v2, v3, v4}, Lru/zdevs/zarchiver/service/c;->SetSettings(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    nop

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 31
    .line 32
    const-class v2, Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 33
    .line 34
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->q:Lru/zdevs/zarchiver/ZArchiver$a;

    .line 38
    .line 39
    invoke-static {p0, v0, v2}, Lh1/h;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Landroid/os/Handler;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->g:Landroid/os/Handler;

    .line 44
    .line 45
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget-wide v4, p0, Lru/zdevs/zarchiver/ZArchiver;->p:J

    .line 50
    .line 51
    sub-long/2addr v2, v4

    .line 52
    const-wide/16 v4, 0x1388

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    iget-object v6, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 56
    .line 57
    cmp-long v7, v2, v4

    .line 58
    .line 59
    if-lez v7, :cond_9

    .line 60
    .line 61
    const/16 v2, 0x80

    .line 62
    .line 63
    invoke-static {v2}, Lt0/b;->l(I)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v3, 0x2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    const/4 v2, 0x2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v2, 0x1

    .line 73
    :goto_1
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    :goto_2
    if-ge v5, v2, :cond_9

    .line 76
    .line 77
    iget-object v7, v6, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 78
    .line 79
    aget-object v7, v7, v5

    .line 80
    .line 81
    if-nez v7, :cond_2

    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v7}, Lru/zdevs/zarchiver/b;->i()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_7

    .line 90
    .line 91
    invoke-virtual {v7, v0}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    iget-object v8, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 98
    .line 99
    iget-object v9, v8, Lh0/h;->c:Ljava/lang/String;

    .line 100
    .line 101
    const-string v10, "/uri/"

    .line 102
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-nez v10, :cond_4

    .line 108
    .line 109
    const-string v10, "/SAF"

    .line 110
    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-nez v10, :cond_4

    .line 116
    .line 117
    invoke-static {v8}, Lx0/g;->b(Lh0/h;)B

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-ne v8, v1, :cond_4

    .line 122
    .line 123
    invoke-static {v9}, Ln0/e;->i(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-nez v8, :cond_4

    .line 128
    .line 129
    const/4 v8, 0x2

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    const/4 v8, 0x3

    .line 132
    invoke-virtual {v7, v8}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_5

    .line 137
    .line 138
    :cond_4
    const/4 v8, 0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    const/4 v8, 0x0

    .line 141
    :goto_3
    if-ne v8, v1, :cond_6

    .line 142
    .line 143
    iget-object v9, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 144
    .line 145
    const/4 v10, 0x0

    .line 146
    iget-object v7, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 147
    .line 148
    invoke-virtual {v7, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    const/16 v12, 0x10

    .line 153
    .line 154
    move-object v7, p0

    .line 155
    move v8, v5

    .line 156
    invoke-virtual/range {v7 .. v12}, Lru/zdevs/zarchiver/ZArchiver;->M(ILh0/h;Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    if-ne v8, v3, :cond_8

    .line 161
    .line 162
    new-instance v7, Lh0/h;

    .line 163
    .line 164
    sget-object v8, Lt0/b;->b:[Ljava/lang/String;

    .line 165
    .line 166
    aget-object v8, v8, v5

    .line 167
    .line 168
    invoke-direct {v7, v8}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v5, v4, v7}, Lru/zdevs/zarchiver/ZArchiver;->L(IILh0/h;)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    iget-object v8, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 176
    .line 177
    invoke-virtual {v8, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    if-nez v8, :cond_8

    .line 182
    .line 183
    iget-object v8, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 184
    .line 185
    iget-object v9, v6, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 186
    .line 187
    invoke-virtual {v8, v5}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    invoke-virtual {v8, v7, v9, v10, v4}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 192
    .line 193
    .line 194
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_9
    iget-object v1, v6, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 198
    .line 199
    invoke-virtual {v1}, Lru/zdevs/zarchiver/a;->i()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6, v0}, Lru/zdevs/zarchiver/d;->f(I)Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    invoke-virtual {v6}, Lru/zdevs/zarchiver/d;->d()Lh0/h;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v0, v0, Lh0/h;->c:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v0}, Ln0/e;->l(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_a

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_a
    new-instance v0, La0/h0;

    .line 222
    .line 223
    invoke-direct {v0, p0}, La0/h0;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lb0/c;->c:Lw0/a;

    .line 227
    .line 228
    invoke-virtual {v0, p0, v1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 229
    .line 230
    .line 231
    :goto_5
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    iget-char v1, v0, Lru/zdevs/zarchiver/d;->a:C

    .line 7
    .line 8
    const-string v2, "action"

    .line 9
    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 14
    .line 15
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/16 v4, 0xa

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, La0/a;->h()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ge v2, v4, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->e:La0/a;

    .line 32
    .line 33
    :goto_1
    const-string v5, "c_file"

    .line 34
    .line 35
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, La0/a;->h()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-ge v2, v4, :cond_3

    .line 47
    .line 48
    :cond_2
    iget-object v3, v1, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 49
    .line 50
    :cond_3
    const-string v2, "a_file"

    .line 51
    .line 52
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lru/zdevs/zarchiver/a;->f:Lh1/j;

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    const-string v4, "d_type"

    .line 59
    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    invoke-interface {v2}, Lh1/j;->type()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    const-string v2, "d_data"

    .line 70
    .line 71
    iget-object v1, v1, Lru/zdevs/zarchiver/a;->f:Lh1/j;

    .line 72
    .line 73
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    const-string v1, "page"

    .line 81
    .line 82
    iget v2, v0, Lru/zdevs/zarchiver/d;->e:I

    .line 83
    .line 84
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 88
    .line 89
    aget-object v1, v0, v3

    .line 90
    .line 91
    const-string v2, "p1"

    .line 92
    .line 93
    invoke-virtual {v1, p1, v2}, Lru/zdevs/zarchiver/b;->j(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    aget-object v0, v0, v1

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    const-string v2, "p2"

    .line 102
    .line 103
    invoke-virtual {v0, p1, v2}, Lru/zdevs/zarchiver/b;->j(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const-string v2, "p1pos"

    .line 113
    .line 114
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x80

    .line 118
    .line 119
    invoke-static {v0}, Lt0/b;->l(I)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const-string v1, "p2pos"

    .line 132
    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    :cond_6
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Lb0/c;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    iget-object v1, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 7
    .line 8
    iget-object v2, p0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 9
    .line 10
    invoke-virtual {v1, p0, v2}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 11
    .line 12
    .line 13
    sget v1, Lt0/b;->j:I

    .line 14
    .line 15
    const/high16 v2, 0x3f0000

    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_5

    .line 26
    .line 27
    iget-object v1, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Lq0/g;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lq0/g;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 37
    .line 38
    :cond_1
    sget v1, Lt0/b;->k:I

    .line 39
    .line 40
    iget-object v4, v0, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 41
    .line 42
    aget-object v3, v4, v3

    .line 43
    .line 44
    const v5, 0x7f08002d

    .line 45
    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget v3, v3, Lru/zdevs/zarchiver/b;->g:I

    .line 50
    .line 51
    if-eq v3, v5, :cond_3

    .line 52
    .line 53
    :cond_2
    aget-object v2, v4, v2

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget v2, v2, Lru/zdevs/zarchiver/b;->g:I

    .line 58
    .line 59
    if-ne v2, v5, :cond_4

    .line 60
    .line 61
    :cond_3
    int-to-float v1, v1

    .line 62
    const v2, 0x3fcccccd    # 1.6f

    .line 63
    .line 64
    .line 65
    mul-float v1, v1, v2

    .line 66
    .line 67
    float-to-int v1, v1

    .line 68
    :cond_4
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Lq0/g;->d(Lq0/g$c;I)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final onStop()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-interface {v0, v2}, Lru/zdevs/zarchiver/service/c;->GUIStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    iput-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 14
    .line 15
    :cond_0
    :try_start_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->q:Lru/zdevs/zarchiver/ZArchiver$a;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_1
    nop

    .line 22
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v0, v2, v2, v3}, Lru/zdevs/zarchiver/d;->a(IIZ)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 30
    .line 31
    iget-object v4, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 32
    .line 33
    invoke-virtual {v4}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    mul-int/lit8 v4, v4, 0x2

    .line 38
    .line 39
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->g:Lq0/g;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lq0/g;->e(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lb0/c;->c:Lw0/a;

    .line 47
    .line 48
    const/16 v4, 0x3e8

    .line 49
    .line 50
    invoke-virtual {v0, v4, v3, v2}, Lw0/a;->f(III)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lf0/a;->m()Lf0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lf0/a;->o()V

    .line 58
    .line 59
    .line 60
    sget-boolean v0, Ln0/a;->a:Z

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sput-object v1, Lru/zdevs/zarchiver/io/KitKatExtSD;->a:Ljava/lang/String;

    .line 65
    .line 66
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v2, 0x17

    .line 69
    .line 70
    if-lt v0, v2, :cond_3

    .line 71
    .line 72
    sget-object v0, Lo0/e;->l:Lo0/e$a;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    :try_start_2
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    .line 79
    .line 80
    monitor-exit v0

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v2

    .line 83
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 85
    :catch_2
    :cond_3
    :goto_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 86
    .line 87
    iget-object v0, v0, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v1}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final w()V
    .locals 10

    .line 1
    invoke-static {p0}, Lh1/h;->a(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1e

    .line 12
    .line 13
    if-lt v0, v3, :cond_1

    .line 14
    .line 15
    const/16 v3, 0x21

    .line 16
    .line 17
    if-ge v0, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p0}, Lz0/e;->d(Landroid/content/Context;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x4

    .line 28
    iget-object v3, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v4, p0

    .line 34
    invoke-static/range {v3 .. v9}, Lg0/s;->t(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILx0/d$a;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    .line 40
    .line 41
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 42
    .line 43
    aput-object v3, v0, v2

    .line 44
    .line 45
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 46
    .line 47
    aput-object v3, v0, v1

    .line 48
    .line 49
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Lh1/h;->c()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    new-array v0, v1, [Ljava/lang/String;

    .line 60
    .line 61
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 62
    .line 63
    aput-object v1, v0, v2

    .line 64
    .line 65
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void
.end method

.method public final x(ILjava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p2}, Lx0/g;->f(Ljava/lang/String;)Lx0/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez v4, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/16 v3, 0x21

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz p2, :cond_4

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    iget-object v8, v4, Lx0/d$a;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v9

    .line 28
    if-gt v6, v9, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {v6}, La0/c;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const-string v8, "Android/data"

    .line 44
    .line 45
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    const-string v8, "Android/obb"

    .line 52
    .line 53
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-nez v8, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/16 v8, 0x2f

    .line 61
    .line 62
    invoke-static {v6, v8}, Lv0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    if-lt v9, v3, :cond_3

    .line 69
    .line 70
    array-length v9, v6

    .line 71
    if-lt v9, v1, :cond_4

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    aget-object v9, v6, v7

    .line 79
    .line 80
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    aget-object v9, v6, v0

    .line 87
    .line 88
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    aget-object v6, v6, v2

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_0

    .line 104
    :cond_3
    array-length v9, v6

    .line 105
    if-lt v9, v2, :cond_4

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    aget-object v9, v6, v7

    .line 113
    .line 114
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    aget-object v6, v6, v0

    .line 121
    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    :cond_4
    :goto_0
    move-object v6, v5

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 133
    .line 134
    const/4 p2, 0x0

    .line 135
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    if-lt v5, v3, :cond_5

    .line 138
    .line 139
    const/4 v5, 0x3

    .line 140
    goto :goto_1

    .line 141
    :cond_5
    const/4 v5, 0x2

    .line 142
    :goto_1
    move-object v1, p0

    .line 143
    move v2, p2

    .line 144
    move v3, p1

    .line 145
    invoke-static/range {v0 .. v6}, Lg0/s;->t(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILx0/d$a;ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    return v7

    .line 149
    :cond_6
    const-string v1, "/Android/obb"

    .line 150
    .line 151
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-eqz p2, :cond_7

    .line 156
    .line 157
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    .line 159
    if-lt p2, v3, :cond_7

    .line 160
    .line 161
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 162
    .line 163
    const/4 v2, 0x0

    .line 164
    const/4 v5, 0x1

    .line 165
    const-string v6, "/Android/obb"

    .line 166
    .line 167
    move-object v1, p0

    .line 168
    move v3, p1

    .line 169
    invoke-static/range {v0 .. v6}, Lg0/s;->t(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILx0/d$a;ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return v7

    .line 173
    :cond_7
    :goto_2
    return v0
.end method

.method public final y(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver;->k:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Ld0/h;->h:Ld0/b;

    .line 10
    .line 11
    iget v1, v1, Ld0/b;->a:I

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 16
    .line 17
    iget-object v2, v1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 18
    .line 19
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->f:[Lru/zdevs/zarchiver/b;

    .line 20
    .line 21
    iget v3, v0, Ld0/h;->g:I

    .line 22
    .line 23
    aget-object v1, v1, v3

    .line 24
    .line 25
    invoke-virtual {v0}, Ld0/h;->d()[I

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {v1, v3}, Lru/zdevs/zarchiver/b;->a([I)La0/a;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v2, Lru/zdevs/zarchiver/a;->d:La0/a;

    .line 37
    .line 38
    invoke-virtual {v1}, La0/a;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ld0/h;->h()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZArchiver;->J()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
