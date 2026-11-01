.class public Lru/zdevs/zarchiver/ZSelectFile;
.super Lb0/c;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Ld0/h$a;
.implements Lq0/g$c;
.implements Lru/zdevs/zarchiver/ui/FilePanelView$g;
.implements Lru/zdevs/zarchiver/ui/FilePanelView$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ZSelectFile$b;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public f:Lru/zdevs/zarchiver/b;

.field public g:Lq0/g;

.field public h:Z

.field public i:I

.field public j:Lru/zdevs/zarchiver/ui/FilePanelView;

.field public k:Landroid/view/View;

.field public l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

.field public m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 6
    .line 7
    return-void
.end method

.method public static u(Lru/zdevs/zarchiver/ZSelectFile;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iput-object p1, v0, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lru/zdevs/zarchiver/b;->n:I

    .line 12
    .line 13
    new-instance v3, Ld0/i;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Ld0/i;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v3, v0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 19
    .line 20
    iget v3, v0, Lru/zdevs/zarchiver/b;->f:I

    .line 21
    .line 22
    or-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    iput v3, v0, Lru/zdevs/zarchiver/b;->f:I

    .line 25
    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 28
    .line 29
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 30
    .line 31
    iget-object v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v3, v2, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 34
    .line 35
    .line 36
    if-nez p3, :cond_0

    .line 37
    .line 38
    iget-object p3, p0, Lb0/c;->c:Lw0/a;

    .line 39
    .line 40
    const/16 v0, 0xd

    .line 41
    .line 42
    invoke-virtual {p3, v0, v2, v2}, Lw0/a;->f(III)V

    .line 43
    .line 44
    .line 45
    new-instance v0, La0/t0;

    .line 46
    .line 47
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 48
    .line 49
    invoke-direct {v0, v1, p1, p2}, La0/t0;-><init>(Lru/zdevs/zarchiver/b;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0, p3}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method


# virtual methods
.method public final A(ZZ)V
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
    invoke-virtual {v0, v1, v2, v2}, Lw0/a;->f(III)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 10
    .line 11
    iget-object v1, v0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    :try_start_0
    iput-object p1, v0, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, v0, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 20
    .line 21
    iput v2, v0, Lru/zdevs/zarchiver/b;->n:I

    .line 22
    .line 23
    iput-object p1, v0, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 24
    .line 25
    :cond_0
    iget p1, v0, Lru/zdevs/zarchiver/b;->f:I

    .line 26
    .line 27
    and-int/lit8 p1, p1, -0x2

    .line 28
    .line 29
    iput p1, v0, Lru/zdevs/zarchiver/b;->f:I

    .line 30
    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->b()V

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz p2, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 42
    .line 43
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 44
    .line 45
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 46
    .line 47
    invoke-virtual {p1, p2, v0, v2, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p1
.end method

.method public final B(Z)V
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 4
    .line 5
    iget-wide v0, v0, Lru/zdevs/zarchiver/b;->j:J

    .line 6
    .line 7
    const-string v2, " ..."

    .line 8
    .line 9
    const/4 v10, 0x1

    .line 10
    const-wide/16 v3, -0x1

    .line 11
    .line 12
    const v5, 0x7f0c0073

    .line 13
    .line 14
    .line 15
    const-wide/16 v11, -0x2

    .line 16
    .line 17
    cmp-long v6, v0, v11

    .line 18
    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    cmp-long v6, v0, v3

    .line 25
    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " ---"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v0, v1, v10, v5}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    move-object v5, v0

    .line 79
    const/4 v13, 0x0

    .line 80
    iget-object v14, v9, Lb0/c;->c:Lw0/a;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 85
    .line 86
    iget-wide v0, v0, Lru/zdevs/zarchiver/b;->l:J

    .line 87
    .line 88
    cmp-long v6, v0, v3

    .line 89
    .line 90
    if-nez v6, :cond_3

    .line 91
    .line 92
    const/4 v0, 0x4

    .line 93
    invoke-virtual {v14, v0, v13, v13}, Lw0/a;->f(III)V

    .line 94
    .line 95
    .line 96
    new-instance v0, La0/f0;

    .line 97
    .line 98
    iget-object v1, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 99
    .line 100
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 101
    .line 102
    invoke-direct {v0, v1, v13}, La0/f0;-><init>(Lh0/h;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v9, v14}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    const v0, 0x7f0c0060

    .line 109
    .line 110
    .line 111
    const/4 v15, 0x0

    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    iget-object v1, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 115
    .line 116
    iget-wide v6, v1, Lru/zdevs/zarchiver/b;->l:J

    .line 117
    .line 118
    cmp-long v1, v6, v3

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, " "

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 140
    .line 141
    iget-wide v2, v0, Lru/zdevs/zarchiver/b;->k:J

    .line 142
    .line 143
    invoke-static {v2, v3, v10, v15}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, "/\n"

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 156
    .line 157
    iget-wide v2, v0, Lru/zdevs/zarchiver/b;->l:J

    .line 158
    .line 159
    invoke-static {v2, v3, v10, v15}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    :goto_2
    move-object v2, v0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const v1, 0x7f0c0075

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const/16 v1, 0x20

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const v1, 0x7f0c0077

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, ": "

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object v1, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 243
    .line 244
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 245
    .line 246
    invoke-virtual {v1}, Lh0/h;->e()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    const-wide/16 v6, 0x0

    .line 258
    .line 259
    const-wide/16 v16, 0x0

    .line 260
    .line 261
    move-object/from16 v0, p0

    .line 262
    .line 263
    move-object v1, v3

    .line 264
    move-object v3, v4

    .line 265
    move-object v4, v5

    .line 266
    move-wide v5, v6

    .line 267
    move-wide/from16 v7, v16

    .line 268
    .line 269
    invoke-virtual/range {v0 .. v8}, Lb0/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 270
    .line 271
    .line 272
    if-nez p1, :cond_5

    .line 273
    .line 274
    return-void

    .line 275
    :cond_5
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 276
    .line 277
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 278
    .line 279
    if-eqz v1, :cond_6

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_6
    const/4 v10, 0x0

    .line 283
    :goto_3
    if-eqz v10, :cond_8

    .line 284
    .line 285
    iget-object v1, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 286
    .line 287
    iget-wide v2, v1, Lru/zdevs/zarchiver/b;->j:J

    .line 288
    .line 289
    cmp-long v4, v2, v11

    .line 290
    .line 291
    if-nez v4, :cond_7

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_7
    iget-object v15, v1, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 295
    .line 296
    :goto_4
    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_8
    iget-object v0, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 301
    .line 302
    iget-wide v0, v0, Lru/zdevs/zarchiver/b;->j:J

    .line 303
    .line 304
    cmp-long v2, v0, v11

    .line 305
    .line 306
    if-nez v2, :cond_9

    .line 307
    .line 308
    const/4 v0, 0x3

    .line 309
    invoke-virtual {v14, v0, v13, v13}, Lw0/a;->f(III)V

    .line 310
    .line 311
    .line 312
    new-instance v0, La0/i0;

    .line 313
    .line 314
    iget-object v1, v9, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 315
    .line 316
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 317
    .line 318
    invoke-direct {v0, v1, v13}, La0/i0;-><init>(Lh0/h;I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v9, v14}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 322
    .line 323
    .line 324
    :cond_9
    :goto_5
    return-void
.end method

.method public final b(Lw0/a$b;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lw0/a$b;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_c

    .line 7
    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v0, v1, :cond_b

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-eq v0, v1, :cond_a

    .line 16
    .line 17
    const/4 v1, 0x7

    .line 18
    if-eq v0, v1, :cond_8

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/16 v1, 0x11

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0x12

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_0
    check-cast p1, La0/v;

    .line 35
    .line 36
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 37
    .line 38
    iget v1, p1, La0/v;->a:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_e

    .line 45
    .line 46
    invoke-virtual {v0}, Ld0/h;->c()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const v2, 0x7f08002e

    .line 51
    .line 52
    .line 53
    if-ne v1, v2, :cond_e

    .line 54
    .line 55
    iget-object p1, p1, La0/v;->b:Ld0/f;

    .line 56
    .line 57
    iget-object v1, v0, Ld0/h;->h:Ld0/b;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ld0/b;->a(Ld0/f;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    check-cast p1, La0/w;

    .line 68
    .line 69
    iget p1, p1, La0/w;->b:I

    .line 70
    .line 71
    const/16 v0, 0x64

    .line 72
    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lb0/c;->t()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_2
    mul-int/lit16 p1, p1, 0x2710

    .line 81
    .line 82
    div-int/2addr p1, v0

    .line 83
    invoke-virtual {p0, p1}, Lb0/c;->s(I)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_3
    check-cast p1, La0/p;

    .line 89
    .line 90
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 91
    .line 92
    iget-object v0, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->e:Landroid/view/View;

    .line 93
    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object v0, p1, La0/p;->h:Ld0/b;

    .line 100
    .line 101
    if-nez v0, :cond_5

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 106
    .line 107
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0, v2, v2}, Lru/zdevs/zarchiver/ZSelectFile;->A(ZZ)V

    .line 114
    .line 115
    .line 116
    :cond_6
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 117
    .line 118
    iget-object v0, v0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 122
    .line 123
    iget-object v2, p1, La0/p;->h:Ld0/b;

    .line 124
    .line 125
    iput-object v2, v1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 126
    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget v0, p1, La0/p;->c:I

    .line 129
    .line 130
    const/16 v1, 0x300

    .line 131
    .line 132
    invoke-static {v0, v1}, La0/c;->L(II)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    new-instance v0, La0/e0;

    .line 139
    .line 140
    iget-object v1, p1, La0/p;->b:Lh0/h;

    .line 141
    .line 142
    iget-object v2, p1, La0/p;->h:Ld0/b;

    .line 143
    .line 144
    iget v4, p1, La0/p;->c:I

    .line 145
    .line 146
    iget-object v5, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 147
    .line 148
    iget v5, v5, Lru/zdevs/zarchiver/b;->b:I

    .line 149
    .line 150
    invoke-direct {v0, v1, v2, v4, v5}, La0/e0;-><init>(Lh0/h;Ld0/b;II)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lb0/c;->c:Lw0/a;

    .line 154
    .line 155
    invoke-virtual {v0, p0, v1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 159
    .line 160
    iget-object v1, p1, La0/p;->b:Lh0/h;

    .line 161
    .line 162
    iget-byte v2, p1, La0/p;->j:B

    .line 163
    .line 164
    iget v4, p1, La0/p;->f:I

    .line 165
    .line 166
    invoke-virtual {v0, v1, v2, v4}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 170
    .line 171
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 172
    .line 173
    iget-object v2, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 174
    .line 175
    iget v4, p1, La0/p;->d:I

    .line 176
    .line 177
    iget p1, p1, La0/p;->c:I

    .line 178
    .line 179
    invoke-virtual {v0, v1, v2, v4, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->k(Lru/zdevs/zarchiver/b;Lq0/g;II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZSelectFile;->B(Z)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :catchall_0
    move-exception p1

    .line 188
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw p1

    .line 190
    :cond_8
    :try_start_2
    check-cast p1, La0/q;

    .line 191
    .line 192
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 193
    .line 194
    iget-wide v1, p1, La0/q;->b:J

    .line 195
    .line 196
    iput-wide v1, v0, Lru/zdevs/zarchiver/b;->j:J

    .line 197
    .line 198
    const v0, 0x7f0700d1

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/TextView;

    .line 206
    .line 207
    if-eqz v0, :cond_e

    .line 208
    .line 209
    iget-wide v1, p1, La0/q;->b:J

    .line 210
    .line 211
    const-wide/16 v4, -0x1

    .line 212
    .line 213
    const p1, 0x7f0c0073

    .line 214
    .line 215
    .line 216
    cmp-long v6, v1, v4

    .line 217
    .line 218
    if-eqz v6, :cond_9

    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-static {v1, v2, v3, p1}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    goto :goto_0

    .line 229
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p1, " ---"

    .line 242
    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_a
    check-cast p1, La0/o;

    .line 255
    .line 256
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 257
    .line 258
    iget-object v1, p1, La0/o;->b:Lh0/e$a;

    .line 259
    .line 260
    iget-wide v4, v1, Lh0/e$a;->a:J

    .line 261
    .line 262
    iput-wide v4, v0, Lru/zdevs/zarchiver/b;->k:J

    .line 263
    .line 264
    iget-wide v1, v1, Lh0/e$a;->b:J

    .line 265
    .line 266
    iput-wide v1, v0, Lru/zdevs/zarchiver/b;->l:J

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    const v1, 0x7f0c0060

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v1, " "

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget-object v1, p1, La0/o;->b:Lh0/e$a;

    .line 289
    .line 290
    iget-wide v1, v1, Lh0/e$a;->a:J

    .line 291
    .line 292
    const/4 v4, 0x0

    .line 293
    invoke-static {v1, v2, v3, v4}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v1, "/\n"

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget-object v1, p1, La0/o;->b:Lh0/e$a;

    .line 306
    .line 307
    iget-wide v1, v1, Lh0/e$a;->b:J

    .line 308
    .line 309
    invoke-static {v1, v2, v3, v4}, Lv0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iget-object p1, p1, La0/o;->b:Lh0/e$a;

    .line 321
    .line 322
    iget-wide v6, p1, Lh0/e$a;->b:J

    .line 323
    .line 324
    iget-wide v0, p1, Lh0/e$a;->a:J

    .line 325
    .line 326
    sub-long v4, v6, v0

    .line 327
    .line 328
    move-object v2, p0

    .line 329
    invoke-virtual/range {v2 .. v7}, Lb0/c;->p(Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 330
    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_b
    const p1, 0x7f070083

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Landroid/widget/ListView;

    .line 341
    .line 342
    if-eqz p1, :cond_e

    .line 343
    .line 344
    new-instance v0, Lc0/d;

    .line 345
    .line 346
    invoke-direct {v0, p0, v3, v2}, Lc0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_c
    check-cast p1, La0/z;

    .line 354
    .line 355
    iget-object v0, p1, La0/z;->a:Ljava/lang/String;

    .line 356
    .line 357
    if-eqz v0, :cond_d

    .line 358
    .line 359
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_d
    iget p1, p1, La0/z;->b:I

    .line 364
    .line 365
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 366
    .line 367
    .line 368
    :catch_0
    :cond_e
    :goto_1
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p1, Lq0/g;->g:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 12
    .line 13
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Ld0/h;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 26
    .line 27
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v0, v1}, Ld0/h;->n(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final d(IIZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    if-eq p2, p3, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    const/16 p2, 0x8

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 16
    .line 17
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->h()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lb0/c;->i()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 43
    .line 44
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 51
    .line 52
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 53
    .line 54
    invoke-virtual {p1}, Lh0/h;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1}, Lh0/h;->c()Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v3, v2

    .line 63
    :goto_1
    invoke-virtual {p0, v3, v2, v0}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return v1

    .line 67
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    return p1
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

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
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 11
    .line 12
    iget-object v0, v0, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 13
    .line 14
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0700d1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const v3, 0x7f0c0073

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, " ..."

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lb0/c;->c:Lw0/a;

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {v1, v2, v3, v3}, Lw0/a;->f(III)V

    .line 63
    .line 64
    .line 65
    new-instance v2, La0/i0;

    .line 66
    .line 67
    invoke-direct {v2, v0, v3}, La0/i0;-><init>(Lh0/h;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p0, v1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lq0/g;->c(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 10
    .line 11
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0, v0, p1}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lb0/c;->k(Landroid/content/res/Configuration;)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->i:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->i:I

    .line 14
    .line 15
    iget-object p1, p0, Lb0/c;->c:Lw0/a;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lw0/a;->d(Lw0/a$c;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->c(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->b(I)Ld0/h;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {p0}, Lz0/e;->e(Landroid/app/Activity;)V

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->i:I

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZSelectFile;->w(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZSelectFile;->x()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 48
    .line 49
    iget-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 50
    .line 51
    iget-object v4, v4, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 52
    .line 53
    iget-object v4, v4, Lh0/h;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v3, v4}, Lb0/c;->r(Landroid/view/View;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ZSelectFile;->B(Z)V

    .line 60
    .line 61
    .line 62
    iget-object v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 63
    .line 64
    invoke-virtual {v3, v1, v2, v1, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->h(ILd0/h;ZZ)V

    .line 65
    .line 66
    .line 67
    if-lez v0, :cond_1

    .line 68
    .line 69
    iget-object v2, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 70
    .line 71
    invoke-virtual {v2, v1, v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->j(II)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 75
    .line 76
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 77
    .line 78
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->e()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setMessage(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p0, p0}, Lw0/a;->a(Lw0/a$c;Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0}, Lz0/e;->g(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Lv0/b;->d(Landroid/content/res/Configuration;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    invoke-static {p0, v2}, Lz0/e;->o(Landroid/app/Activity;Z)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lt0/b;->e:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p0, v2}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lb0/c;->k(Landroid/content/res/Configuration;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->i:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZSelectFile;->w(I)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lru/zdevs/zarchiver/b;

    .line 60
    .line 61
    invoke-direct {p1, v0}, Lru/zdevs/zarchiver/b;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 65
    .line 66
    sget v2, Lt0/b;->j:I

    .line 67
    .line 68
    and-int/lit16 v3, v2, 0xf00

    .line 69
    .line 70
    const/16 v5, 0x200

    .line 71
    .line 72
    const v6, 0x7f08002d

    .line 73
    .line 74
    .line 75
    if-eq v3, v5, :cond_2

    .line 76
    .line 77
    const/16 v5, 0x300

    .line 78
    .line 79
    if-eq v3, v5, :cond_1

    .line 80
    .line 81
    const v3, 0x7f08002c

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const v3, 0x7f08002d

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const v3, 0x7f08002b

    .line 90
    .line 91
    .line 92
    :goto_1
    iput v3, p1, Lru/zdevs/zarchiver/b;->g:I

    .line 93
    .line 94
    and-int/lit16 v2, v2, 0xf8

    .line 95
    .line 96
    iput v2, p1, Lru/zdevs/zarchiver/b;->h:I

    .line 97
    .line 98
    const/4 v2, 0x4

    .line 99
    invoke-static {v2}, Lt0/b;->g(I)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iput-boolean v2, p1, Lru/zdevs/zarchiver/b;->i:Z

    .line 104
    .line 105
    invoke-static {p0}, Lv0/h;->d(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lt0/b;->d()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget-object v2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 113
    .line 114
    iget v2, v2, Lru/zdevs/zarchiver/b;->g:I

    .line 115
    .line 116
    if-ne v2, v6, :cond_3

    .line 117
    .line 118
    const/4 v2, 0x1

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v2, 0x0

    .line 121
    :goto_2
    invoke-static {p0, p1, v2}, Lz0/b;->f(Landroid/content/Context;IZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v3, "android.intent.action.GET_CONTENT"

    .line 141
    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-nez v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v3, "android.intent.action.OPEN_DOCUMENT"

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_4

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_4
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v3, 0x12

    .line 164
    .line 165
    if-lt v2, v3, :cond_5

    .line 166
    .line 167
    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    .line 168
    .line 169
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_5
    const/4 v4, 0x0

    .line 177
    :goto_3
    iput-boolean v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->h:Z

    .line 178
    .line 179
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ZSelectFile;->x()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v1, v1, v0}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Lru/zdevs/zarchiver/ZSelectFile$b;

    .line 186
    .line 187
    invoke-direct {p1, p0}, Lru/zdevs/zarchiver/ZSelectFile$b;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1}, Lb0/c;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 191
    .line 192
    .line 193
    const p1, 0x7f03003f

    .line 194
    .line 195
    .line 196
    invoke-static {p0, p1}, Lz0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const/high16 v0, 0x1040000

    .line 201
    .line 202
    invoke-static {p0, p1, v0}, Lz0/e;->f(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_6
    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lb0/c;->i()V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 7
    .line 8
    invoke-virtual {p2}, Lru/zdevs/zarchiver/b;->i()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    if-ltz p3, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 17
    .line 18
    iget-object p2, p2, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 19
    .line 20
    invoke-virtual {p2}, Ld0/b;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-ge p3, p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 27
    .line 28
    iget-object p2, p2, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ld0/i;->j(I)Ld0/f;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iget-object p4, p2, Ld0/f;->k:Lh0/h;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    monitor-exit p1

    .line 38
    return-void

    .line 39
    :cond_1
    if-ltz p3, :cond_6

    .line 40
    .line 41
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 42
    .line 43
    iget-object p2, p2, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 44
    .line 45
    invoke-virtual {p2}, Ld0/b;->size()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-ge p3, p2, :cond_6

    .line 50
    .line 51
    iget-object p2, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 52
    .line 53
    iget-object p2, p2, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ld0/b;->b(I)Ld0/d;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance p4, Lh0/h;

    .line 60
    .line 61
    iget-object p5, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 62
    .line 63
    iget-object p5, p5, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 64
    .line 65
    invoke-direct {p4, p5}, Lh0/h;-><init>(Lh0/h;)V

    .line 66
    .line 67
    .line 68
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p2}, Ld0/d;->f()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 p5, 0x1

    .line 74
    const/4 v0, 0x0

    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p2}, Ld0/d;->g()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p2, Ld0/d;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p4}, Lh0/h;->c()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_2

    .line 90
    .line 91
    iput-object p1, p4, Lh0/h;->d:Ljava/lang/String;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 p5, 0x0

    .line 95
    :goto_1
    if-eqz p5, :cond_5

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object p1, p2, Ld0/d;->a:Ljava/lang/String;

    .line 99
    .line 100
    iget-object p2, p2, Ld0/d;->b:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p4, p1}, Lh0/h;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object p2, p4, Lh0/h;->d:Ljava/lang/String;

    .line 106
    .line 107
    :goto_2
    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1, p4, v0}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_4
    new-array p1, p5, [I

    .line 113
    .line 114
    aput p3, p1, v0

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZSelectFile;->z([I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_3
    return-void

    .line 120
    :cond_6
    :try_start_1
    monitor-exit p1

    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p2

    .line 123
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p2
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

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
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 21
    .line 22
    iget-object p1, p1, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 23
    .line 24
    invoke-virtual {p1}, Lh0/h;->e()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lh0/h;->c()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v0, v3

    .line 33
    :goto_0
    invoke-virtual {p0, v0, v3, v2}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const v1, 0x7f070028

    .line 38
    .line 39
    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    new-instance p1, Lf1/b;

    .line 43
    .line 44
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 45
    .line 46
    iget v2, v0, Lru/zdevs/zarchiver/b;->g:I

    .line 47
    .line 48
    iget-boolean v3, v0, Lru/zdevs/zarchiver/b;->i:Z

    .line 49
    .line 50
    iget v0, v0, Lru/zdevs/zarchiver/b;->h:I

    .line 51
    .line 52
    invoke-direct {p1, p0, v2, v3, v0}, Lf1/b;-><init>(Landroid/content/Context;IZI)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1, v0}, Lf1/c;->a(Landroid/view/Window;Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lru/zdevs/zarchiver/ZSelectFile$a;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/ZSelectFile$a;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Lf1/b;->h:Lf1/b$e;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const v1, 0x7f070039

    .line 75
    .line 76
    .line 77
    if-ne v0, v1, :cond_3

    .line 78
    .line 79
    new-instance p1, Landroid/content/Intent;

    .line 80
    .line 81
    const-class v0, Lru/zdevs/zarchiver/activity/SettingsDlg;

    .line 82
    .line 83
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0, p1}, Lh1/h;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const v1, 0x7f070002

    .line 91
    .line 92
    .line 93
    if-ne v0, v1, :cond_4

    .line 94
    .line 95
    new-instance p1, Landroid/content/Intent;

    .line 96
    .line 97
    const-class v0, Lru/zdevs/zarchiver/activity/AboutDlg;

    .line 98
    .line 99
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p1}, Lh1/h;->e(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    const v1, 0x7f07000f

    .line 107
    .line 108
    .line 109
    if-ne v0, v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lb0/c;->i()V

    .line 115
    .line 116
    .line 117
    :goto_1
    const/4 p1, 0x1

    .line 118
    return p1

    .line 119
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lb0/c;->onStart()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La0/x0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, La0/x0;-><init>(I[Lru/zdevs/zarchiver/b;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lb0/c;->c:Lw0/a;

    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 14
    .line 15
    .line 16
    sget v0, Lt0/b;->j:I

    .line 17
    .line 18
    const/high16 v1, 0x3f0000

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lq0/g;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lq0/g;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 40
    .line 41
    sget v1, Lt0/b;->k:I

    .line 42
    .line 43
    invoke-virtual {v0, p0, v1}, Lq0/g;->d(Lq0/g$c;I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final onStop()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->g:Lq0/g;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 9
    .line 10
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListMaxVisibleItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lq0/g;->e(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    const/4 v1, -0x1

    .line 21
    iget-object v2, p0, Lb0/c;->c:Lw0/a;

    .line 22
    .line 23
    const/16 v3, 0x3e8

    .line 24
    .line 25
    invoke-virtual {v2, v3, v0, v1}, Lw0/a;->f(III)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final v(I)Landroid/net/Uri;
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 18
    .line 19
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 20
    .line 21
    invoke-virtual {v1}, Ld0/b;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge p1, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 28
    .line 29
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->r:Ld0/i;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ld0/i;->j(I)Ld0/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v1, Lh0/h;

    .line 36
    .line 37
    iget-object v3, p1, Ld0/f;->k:Lh0/h;

    .line 38
    .line 39
    invoke-direct {v1, v3}, Lh0/h;-><init>(Lh0/h;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-object v2

    .line 45
    :cond_1
    if-ltz p1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 48
    .line 49
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 50
    .line 51
    invoke-virtual {v1}, Ld0/b;->size()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge p1, v1, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 58
    .line 59
    iget-object v1, v1, Lru/zdevs/zarchiver/b;->q:Ld0/b;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ld0/b;->b(I)Ld0/d;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lh0/h;

    .line 66
    .line 67
    iget-object v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 68
    .line 69
    iget-object v3, v3, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 70
    .line 71
    invoke-direct {v1, v3}, Lh0/h;-><init>(Lh0/h;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p1, Ld0/d;->a:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p1, Ld0/d;->b:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lh0/h;->a(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, v1, Lh0/h;->d:Ljava/lang/String;

    .line 83
    .line 84
    const-wide/16 v3, 0x0

    .line 85
    .line 86
    invoke-static {p0, v1, v3, v4, v2}, Lv0/e;->b(Landroid/content/Context;Lh0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_2
    :try_start_1
    monitor-exit v0

    .line 92
    return-object v2

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw p1
.end method

.method public final w(I)V
    .locals 6

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
    iput-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnListRefreshListener(Lru/zdevs/zarchiver/ui/FilePanelView$g;)V

    .line 16
    .line 17
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v1, 0x15

    .line 21
    .line 22
    if-lt v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v2, Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const v3, 0x7f0600cb

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCircleView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const v2, 0x7f08001a

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-ne p1, v2, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    const v4, 0x7f080001

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iput-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 68
    .line 69
    const v5, 0x7f0700b1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 77
    .line 78
    iput-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {}, Lt0/b;->c()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v4, v5}, Landroid/content/Context;->setTheme(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/4 v4, 0x0

    .line 95
    iput-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 96
    .line 97
    iput-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 98
    .line 99
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 100
    .line 101
    const p1, 0x7f070098

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 109
    .line 110
    invoke-virtual {p0, v2}, Lb0/c;->q(Landroid/app/ActionBar;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    const p1, 0x7f0700df

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const v2, 0x7f080025

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 130
    .line 131
    invoke-virtual {p1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    .line 136
    .line 137
    const v2, 0x1010031

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v2}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    .line 146
    .line 147
    if-lt v0, v1, :cond_5

    .line 148
    .line 149
    const/high16 v0, 0x41c80000    # 25.0f

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setExtendView(Landroid/support/constraint/ConstraintLayout;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 160
    .line 161
    invoke-virtual {p1, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnExtendShowListener(Lru/zdevs/zarchiver/ui/FilePanelView$f;)V

    .line 162
    .line 163
    .line 164
    :cond_6
    const p1, 0x7f070091

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Landroid/widget/ProgressBar;

    .line 172
    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    const/4 v0, -0x3

    .line 176
    invoke-static {p0, p1, v0}, Lz0/e;->n(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 177
    .line 178
    .line 179
    :cond_7
    return-void
.end method

.method public final x()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/16 v4, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-static {p0}, Lv0/b;->i(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const/16 v5, 0x8

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v5, "android:id/search_button"

    .line 49
    .line 50
    invoke-virtual {v0, v5, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v5, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 55
    .line 56
    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    instance-of v5, v0, Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v5, :cond_2

    .line 63
    .line 64
    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .line 66
    const v5, 0x7f03005a

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v5}, Lz0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 77
    .line 78
    new-instance v5, La0/y0;

    .line 79
    .line 80
    invoke-direct {v5, p0}, La0/y0;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 87
    .line 88
    new-instance v5, La0/z0;

    .line 89
    .line 90
    invoke-direct {v5, p0}, La0/z0;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v5}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 97
    .line 98
    new-instance v5, La0/a1;

    .line 99
    .line 100
    invoke-direct {v5, p0}, La0/a1;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/ui/text/ExSearchView;->setOnQueryListener(Lru/zdevs/zarchiver/ui/text/ExSearchView$c;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 107
    .line 108
    const v5, 0x7f070096

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    new-instance v5, La0/b1;

    .line 118
    .line 119
    invoke-direct {v5, p0}, La0/b1;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    sget v0, Lt0/b;->d:I

    .line 126
    .line 127
    const/high16 v5, 0xf0000

    .line 128
    .line 129
    and-int/2addr v0, v5

    .line 130
    const/high16 v5, 0x10000

    .line 131
    .line 132
    if-eq v0, v5, :cond_9

    .line 133
    .line 134
    const/high16 v6, 0x20000

    .line 135
    .line 136
    const v7, 0x7f030001

    .line 137
    .line 138
    .line 139
    if-eq v0, v6, :cond_8

    .line 140
    .line 141
    const/high16 v6, 0x40000

    .line 142
    .line 143
    if-eq v0, v6, :cond_7

    .line 144
    .line 145
    sget v6, Lt0/b;->h:I

    .line 146
    .line 147
    and-int/lit16 v6, v6, 0xff

    .line 148
    .line 149
    if-le v6, v2, :cond_5

    .line 150
    .line 151
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 152
    .line 153
    const/16 v8, 0x15

    .line 154
    .line 155
    if-lt v6, v8, :cond_6

    .line 156
    .line 157
    :cond_5
    const/16 v6, 0x400

    .line 158
    .line 159
    invoke-static {v6}, Lt0/b;->k(I)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_a

    .line 164
    .line 165
    :cond_6
    invoke-static {p0, v7}, Lz0/c;->c(Landroid/content/Context;I)I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    goto :goto_2

    .line 170
    :cond_7
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    const-string v7, "iGUICustomBGPath"

    .line 175
    .line 176
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    if-eqz v6, :cond_a

    .line 181
    .line 182
    invoke-static {v6}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_1

    .line 187
    :catch_0
    move-exception v6

    .line 188
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    .line 190
    .line 191
    const-string v6, "Error on the loading the background image"

    .line 192
    .line 193
    invoke-static {v6}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_8
    invoke-static {p0, v7}, Lz0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    goto :goto_1

    .line 202
    :cond_9
    :try_start_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 207
    .line 208
    .line 209
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    goto :goto_1

    .line 211
    :catch_1
    move-exception v6

    .line 212
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    const-string v6, "Error on get the wallpaper"

    .line 216
    .line 217
    invoke-static {v6}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_a
    :goto_1
    const/4 v6, 0x0

    .line 221
    :goto_2
    const v7, 0x7f07007a

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    check-cast v7, Landroid/widget/ImageView;

    .line 229
    .line 230
    instance-of v8, v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 231
    .line 232
    const v9, 0x3f333333    # 0.7f

    .line 233
    .line 234
    .line 235
    if-eqz v8, :cond_c

    .line 236
    .line 237
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 238
    .line 239
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 244
    .line 245
    .line 246
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 247
    .line 248
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 249
    .line 250
    .line 251
    if-ne v0, v5, :cond_b

    .line 252
    .line 253
    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    .line 254
    .line 255
    .line 256
    :cond_b
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCacheEnabled(Z)V

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_c
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 263
    .line 264
    .line 265
    if-eqz v3, :cond_d

    .line 266
    .line 267
    if-ne v0, v5, :cond_e

    .line 268
    .line 269
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 270
    .line 271
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_d
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    if-eqz v6, :cond_e

    .line 282
    .line 283
    const v0, 0x7f070097

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 291
    .line 292
    .line 293
    :cond_e
    :goto_3
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FilePanelView;->setCacheEnabled(Z)V

    .line 296
    .line 297
    .line 298
    :goto_4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 299
    .line 300
    const v3, 0x8000

    .line 301
    .line 302
    .line 303
    invoke-static {v3}, Lt0/b;->l(I)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v0, v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->setFastScrollEnabled(Z)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 311
    .line 312
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 313
    .line 314
    .line 315
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->h:Z

    .line 316
    .line 317
    if-eqz v0, :cond_f

    .line 318
    .line 319
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 320
    .line 321
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FilePanelView;->setOnItemSelectChanged(Ld0/h$a;)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_f
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/FilePanelView;->setSelectByIcon(Z)V

    .line 328
    .line 329
    .line 330
    :goto_5
    const v0, 0x7f070083

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Landroid/widget/ListView;

    .line 338
    .line 339
    if-eqz v0, :cond_10

    .line 340
    .line 341
    new-instance v3, Lc0/d;

    .line 342
    .line 343
    invoke-direct {v3, p0, v2, v1}, Lc0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0}, Lz0/e;->l(Landroid/widget/AbsListView;)V

    .line 350
    .line 351
    .line 352
    new-instance v1, La0/c1;

    .line 353
    .line 354
    invoke-direct {v1, p0}, La0/c1;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 358
    .line 359
    .line 360
    :cond_10
    const v0, 0x7f070072

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    check-cast v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 368
    .line 369
    iput-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 370
    .line 371
    if-eqz v0, :cond_11

    .line 372
    .line 373
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 377
    .line 378
    const v1, 0x7f0600ec

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuButtonImageResource(I)V

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 385
    .line 386
    const/16 v1, 0x10

    .line 387
    .line 388
    invoke-static {v1}, Lt0/b;->l(I)Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setTransparent(Z)V

    .line 393
    .line 394
    .line 395
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 396
    .line 397
    const/16 v1, 0x20

    .line 398
    .line 399
    invoke-static {v1}, Lt0/b;->l(I)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setAnimated(Z)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 407
    .line 408
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 412
    .line 413
    new-instance v1, La0/d1;

    .line 414
    .line 415
    invoke-direct {v1, p0}, La0/d1;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 422
    .line 423
    new-instance v1, La0/e1;

    .line 424
    .line 425
    invoke-direct {v1, p0}, La0/e1;-><init>(Lru/zdevs/zarchiver/ZSelectFile;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setOnMenuToggleListener(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu$c;)V

    .line 429
    .line 430
    .line 431
    :cond_11
    return-void
.end method

.method public final y(Ljava/lang/String;Lh0/h;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lb0/c;->c:Lw0/a;

    .line 6
    .line 7
    const/16 v3, 0xa

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-virtual {v2, v3, v4, v5}, Lw0/a;->f(III)V

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 15
    .line 16
    invoke-virtual {v3}, Lru/zdevs/zarchiver/b;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Lru/zdevs/zarchiver/ZSelectFile;->A(ZZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 28
    .line 29
    invoke-virtual {v3, v1, v5, v5}, Lru/zdevs/zarchiver/b;->l(Lh0/h;BI)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 33
    .line 34
    iget-object v6, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 35
    .line 36
    iget-object v6, v6, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 37
    .line 38
    iget-object v6, v6, Lh0/h;->c:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v3, v6}, Lb0/c;->r(Landroid/view/View;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 44
    .line 45
    iget-object v3, v3, Lru/zdevs/zarchiver/ui/FilePanelView;->d:Landroid/support/constraint/ConstraintLayout;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_0
    if-nez v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/ZSelectFile;->B(Z)V

    .line 55
    .line 56
    .line 57
    :cond_3
    if-eqz p3, :cond_4

    .line 58
    .line 59
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 60
    .line 61
    invoke-virtual {v3}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListPosition()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    move v11, v3

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    const/4 v3, -0x1

    .line 68
    const/4 v11, -0x1

    .line 69
    :goto_1
    iget-object v3, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 70
    .line 71
    iget-boolean v3, v3, Lru/zdevs/zarchiver/b;->i:Z

    .line 72
    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    const/16 v3, 0x20

    .line 76
    .line 77
    const/16 v12, 0x20

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    const/4 v12, 0x0

    .line 81
    :goto_2
    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-object v6, v0, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 85
    .line 86
    invoke-virtual {v6}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListSize()Landroid/graphics/Point;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    move-object v13, v6

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    move-object v13, v3

    .line 93
    :goto_3
    new-instance v15, La0/j0;

    .line 94
    .line 95
    iget-object v7, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 96
    .line 97
    iget-object v8, v7, Lru/zdevs/zarchiver/b;->c:Lh0/h;

    .line 98
    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    const/4 v9, 0x1

    .line 102
    goto :goto_4

    .line 103
    :cond_7
    const/4 v9, 0x0

    .line 104
    :goto_4
    const/4 v14, 0x0

    .line 105
    move-object v6, v15

    .line 106
    move-object/from16 v10, p1

    .line 107
    .line 108
    invoke-direct/range {v6 .. v14}, La0/j0;-><init>(Lru/zdevs/zarchiver/b;Lh0/h;ZLjava/lang/String;IILandroid/graphics/Point;Ld0/b;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v15, v3, v2}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final z([I)V
    .locals 11

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "file"

    .line 9
    .line 10
    const/16 v4, 0x12

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x1

    .line 14
    if-ne v1, v6, :cond_1

    .line 15
    .line 16
    aget p1, p1, v5

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ZSelectFile;->v(I)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    xor-int/2addr v1, v6

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    if-lt v3, v4, :cond_5

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    if-lt v1, v4, :cond_9

    .line 52
    .line 53
    array-length v1, p1

    .line 54
    if-le v1, v6, :cond_9

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    array-length v7, p1

    .line 59
    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    array-length v7, p1

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    :goto_0
    if-ge v9, v7, :cond_3

    .line 66
    .line 67
    aget v10, p1, v9

    .line 68
    .line 69
    invoke-virtual {p0, v10}, Lru/zdevs/zarchiver/ZSelectFile;->v(I)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    if-eqz v10, :cond_2

    .line 74
    .line 75
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-nez v10, :cond_2

    .line 87
    .line 88
    const/4 v8, 0x1

    .line 89
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const-string p1, "android.intent.extra.STREAM"

    .line 93
    .line 94
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    new-instance p1, Landroid/content/ClipData;

    .line 98
    .line 99
    new-array v3, v6, [Ljava/lang/String;

    .line 100
    .line 101
    const-string v7, "*/*"

    .line 102
    .line 103
    aput-object v7, v3, v5

    .line 104
    .line 105
    new-instance v7, Landroid/content/ClipData$Item;

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Landroid/net/Uri;

    .line 112
    .line 113
    invoke-direct {v7, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p1, v2, v3, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    :goto_1
    if-ge v6, v2, :cond_4

    .line 124
    .line 125
    new-instance v3, Landroid/content/ClipData$Item;

    .line 126
    .line 127
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Landroid/net/Uri;

    .line 132
    .line 133
    invoke-direct {v3, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 137
    .line 138
    .line 139
    add-int/lit8 v6, v6, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 143
    .line 144
    .line 145
    move v1, v8

    .line 146
    :cond_5
    :goto_2
    if-eqz v1, :cond_7

    .line 147
    .line 148
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 149
    .line 150
    if-lt p1, v4, :cond_6

    .line 151
    .line 152
    const/4 v1, 0x3

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    :cond_6
    const/16 v1, 0x13

    .line 157
    .line 158
    if-lt p1, v1, :cond_8

    .line 159
    .line 160
    const/16 p1, 0x40

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 167
    .line 168
    const/16 v1, 0x18

    .line 169
    .line 170
    if-lt p1, v1, :cond_8

    .line 171
    .line 172
    invoke-static {}, Lv0/e;->g()Z

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_3
    const/4 p1, -0x1

    .line 176
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Lb0/c;->i()V

    .line 180
    .line 181
    .line 182
    :cond_9
    return-void
.end method
