.class public final Lru/zdevs/zarchiver/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/zdevs/zarchiver/service/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    return-void
.end method

.method public static c(Lh0/h;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lh0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, La0/c;->q(Lh0/h;)Lh0/h;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lh0/h;->l()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lh0/h;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    invoke-static {p0}, Lh0/e;->d(Lh0/h;)Lh0/e$a;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v1

    .line 34
    :cond_2
    invoke-static {p0}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lh0/f;->o()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    iget-wide v4, v0, Lh0/e$a;->a:J

    .line 43
    .line 44
    cmp-long p0, v2, v4

    .line 45
    .line 46
    if-ltz p0, :cond_3

    .line 47
    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .line 50
    cmp-long p0, v4, v2

    .line 51
    .line 52
    if-lez p0, :cond_3

    .line 53
    .line 54
    const p0, 0x7f0c0048

    .line 55
    .line 56
    .line 57
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_3
    return v1
.end method

.method public static f(Lh0/h;Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lh0/h;->h()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    return v1

    .line 19
    :cond_1
    new-instance v0, Lh0/h;

    .line 20
    .line 21
    iget-object p0, p0, Lh0/h;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object p0, v0

    .line 27
    :cond_2
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-static {p0, v2}, Lx0/g;->d(Lh0/h;Z)B

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ne v0, v2, :cond_4

    .line 34
    .line 35
    :cond_3
    if-nez p1, :cond_5

    .line 36
    .line 37
    invoke-static {p0}, Lx0/g;->b(Lh0/h;)B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x2

    .line 42
    if-ne p1, v0, :cond_5

    .line 43
    .line 44
    :cond_4
    iget-object p0, p0, Lh0/h;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lt0/b;->i(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_5

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :cond_5
    return v1
.end method


# virtual methods
.method public final a(Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lru/zdevs/zarchiver/service/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lh0/h;->o()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {p4}, Lh0/h;->g()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p4, Lh0/h;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, La0/c;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {p4}, La0/c;->q(Lh0/h;)Lh0/h;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lh0/h;->e()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v3}, Lru/zdevs/zarchiver/c;->c(Lh0/h;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-static {p3}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-static {v0}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_5

    .line 68
    .line 69
    const-string p3, "\\-spp"

    .line 70
    .line 71
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 p3, 0x2f

    .line 78
    .line 79
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_5
    const/4 p3, 0x1

    .line 83
    invoke-static {v4, v2, v3, p3}, La0/c;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Lh0/h;Z)V

    .line 84
    .line 85
    .line 86
    invoke-static {p4, p3}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_6

    .line 91
    .line 92
    or-int/lit8 p5, p5, 0x1

    .line 93
    .line 94
    :cond_6
    move v7, p5

    .line 95
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    move-object v5, p2

    .line 100
    move-object v6, p1

    .line 101
    invoke-interface/range {v1 .. v7}, Lru/zdevs/zarchiver/service/c;->ArchiveAddFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    return-void
.end method

.method public final b(La0/a;Lh0/h;ZZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lru/zdevs/zarchiver/service/c;

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lt0/b;->j()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v5, 0x1

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    if-nez p4, :cond_1

    .line 27
    .line 28
    invoke-static {v1, v5}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move/from16 v6, p4

    .line 37
    .line 38
    :goto_0
    invoke-virtual/range {p1 .. p1}, La0/a;->h()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v9, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    new-instance v10, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v11, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const/4 v12, 0x0

    .line 63
    move v13, v6

    .line 64
    const/4 v6, 0x0

    .line 65
    :goto_1
    if-ge v6, v7, :cond_a

    .line 66
    .line 67
    invoke-virtual {v0, v6}, La0/a;->b(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    invoke-virtual {v0, v6}, La0/a;->a(I)Lh0/h;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    if-nez v13, :cond_2

    .line 78
    .line 79
    invoke-static {v15, v12}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 80
    .line 81
    .line 82
    move-result v16

    .line 83
    if-eqz v16, :cond_2

    .line 84
    .line 85
    const/4 v13, 0x1

    .line 86
    :cond_2
    invoke-static {v14, v12}, La0/c;->O(Ljava/lang/String;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v16

    .line 90
    if-eqz v16, :cond_5

    .line 91
    .line 92
    iget-object v12, v0, La0/a;->a:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    check-cast v12, Ld0/d;

    .line 99
    .line 100
    move/from16 v17, v6

    .line 101
    .line 102
    iget-wide v5, v12, Ld0/d;->d:J

    .line 103
    .line 104
    const-wide v18, 0xc0000000L

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    cmp-long v12, v5, v18

    .line 110
    .line 111
    if-lez v12, :cond_3

    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    const/4 v5, 0x0

    .line 116
    :goto_2
    if-eqz v5, :cond_4

    .line 117
    .line 118
    const-string v5, "\\-mmt=1"

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    invoke-static {}, Lt0/b;->a()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-lez v5, :cond_6

    .line 126
    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v6, "\\-mmt="

    .line 130
    .line 131
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Lt0/b;->a()I

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    move/from16 v17, v6

    .line 147
    .line 148
    :cond_6
    const-string v5, ""

    .line 149
    .line 150
    :goto_3
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, v14}, Le0/h;->e(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_7

    .line 159
    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v5, "\\-p"

    .line 169
    .line 170
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    const/4 v12, 0x1

    .line 178
    invoke-virtual {v5, v12}, Le0/h;->c(Z)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    :cond_7
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    if-eqz p3, :cond_9

    .line 199
    .line 200
    invoke-static {v14}, La0/c;->X(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-eqz v6, :cond_8

    .line 209
    .line 210
    invoke-static {v14}, La0/c;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    :cond_8
    new-instance v6, Lh0/h;

    .line 215
    .line 216
    invoke-direct {v6, v5, v1}, Lh0/h;-><init>(Ljava/lang/String;Lh0/h;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_9
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    :goto_4
    add-int/lit8 v6, v17, 0x1

    .line 227
    .line 228
    const/4 v5, 0x1

    .line 229
    const/4 v12, 0x0

    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_a
    if-ne v7, v5, :cond_b

    .line 233
    .line 234
    const/4 v0, 0x0

    .line 235
    :try_start_0
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    move-object v5, v1

    .line 240
    check-cast v5, Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    move-object v6, v1

    .line 247
    check-cast v6, Lh0/h;

    .line 248
    .line 249
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    move-object v7, v1

    .line 254
    check-cast v7, Ljava/lang/String;

    .line 255
    .line 256
    const-string v8, ""

    .line 257
    .line 258
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    move-object v9, v0

    .line 263
    check-cast v9, Lh0/h;

    .line 264
    .line 265
    move v10, v13

    .line 266
    invoke-interface/range {v4 .. v10}, Lru/zdevs/zarchiver/service/c;->ArchiveExtract(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_b
    const/4 v0, 0x0

    .line 271
    move-object v5, v9

    .line 272
    move-object v6, v8

    .line 273
    move-object v7, v10

    .line 274
    move-object v8, v0

    .line 275
    move-object v9, v11

    .line 276
    move v10, v13

    .line 277
    invoke-interface/range {v4 .. v10}, Lru/zdevs/zarchiver/service/c;->ArchiveExtractMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .line 279
    .line 280
    :catch_0
    :goto_5
    return-void
.end method

.method public final d(Lh0/h;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lru/zdevs/zarchiver/service/c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lru/zdevs/zarchiver/service/c;->IsLock(Lh0/h;I)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    return v1
.end method

.method public final e(Lh0/h;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lru/zdevs/zarchiver/service/c;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Lh0/h;->g()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p1, Lh0/h;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, La0/c;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p1, Lh0/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v2, v3}, La0/c;->O(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lt0/b;->a()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    const-string v2, "\\-mmt="

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lt0/b;->a()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v4, p1, Lh0/h;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Le0/h;->e(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    const-string v2, "\\-p"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v2, v4}, Le0/h;->c(Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_2
    const/16 v2, 0x2f

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v4, -0x1

    .line 93
    if-eq v2, v4, :cond_3

    .line 94
    .line 95
    const-string v2, "\\-z"

    .line 96
    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, La0/c;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-static {p1, v3}, Lru/zdevs/zarchiver/c;->f(Lh0/h;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    or-int/lit8 p2, p2, 0x1

    .line 114
    .line 115
    :cond_4
    move v6, p2

    .line 116
    iget-object p2, p1, Lh0/h;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p2}, La0/c;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    iput-object p2, p1, Lh0/h;->d:Ljava/lang/String;

    .line 123
    .line 124
    :try_start_0
    invoke-static {v5}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    move-object v3, p1

    .line 133
    invoke-interface/range {v1 .. v6}, Lru/zdevs/zarchiver/service/c;->ArchiveOpenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_5
    invoke-virtual {p1}, Lh0/h;->k()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    :try_start_1
    invoke-interface {v1, p1, p2}, Lru/zdevs/zarchiver/service/c;->PluginOpenFile(Lh0/h;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .line 145
    .line 146
    :catch_0
    :cond_6
    return-void
.end method
