.class final Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/u$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->a:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->h(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->e(Ljava/util/List;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->g(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->f(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->k(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/b0;->c:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 12
    .line 13
    const-string v1, "CSeq"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->d(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private g(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->l(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 6
    .line 7
    const-string v1, "CSeq"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/b0;

    .line 34
    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 39
    .line 40
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->g0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    .line 46
    .line 47
    iget v0, v1, Lcom/google/android/exoplayer2/source/rtsp/b0;->b:I

    .line 48
    .line 49
    :try_start_0
    iget v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    .line 50
    .line 51
    const/16 v2, 0xc8

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    if-eq v1, v2, :cond_9

    .line 55
    .line 56
    const/16 v2, 0x191

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-eq v1, v2, :cond_4

    .line 60
    .line 61
    const/16 v2, 0x12d

    .line 62
    .line 63
    if-eq v1, v2, :cond_1

    .line 64
    .line 65
    const/16 v2, 0x12e

    .line 66
    .line 67
    if-eq v1, v2, :cond_1

    .line 68
    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    const/4 v1, -0x1

    .line 78
    if-eq v0, v1, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 81
    .line 82
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 90
    .line 91
    const-string v0, "Location"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "Redirection without new location."

    .line 106
    .line 107
    invoke-interface {p1, v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->p(Landroid/net/Uri;)Landroid/net/Uri;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->l(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Landroid/net/Uri;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->n(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->e0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/y$a;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c(Landroid/net/Uri;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    return-void

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 156
    .line 157
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->d0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/y$a;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_8

    .line 162
    .line 163
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 164
    .line 165
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->m(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_8

    .line 170
    .line 171
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 172
    .line 173
    const-string v0, "WWW-Authenticate"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/o;->e(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_7

    .line 184
    .line 185
    :goto_2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-ge v4, v0, :cond_6

    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 192
    .line 193
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/y;->o(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->X(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/l;)Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->W(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/l;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:I

    .line 213
    .line 214
    const/4 v1, 0x2

    .line 215
    if-ne v0, v1, :cond_5

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->b()V

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 231
    .line 232
    const/4 v0, 0x1

    .line 233
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->n(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_7
    const-string p1, "Missing WWW-Authenticate header in a 401 response."

    .line 238
    .line 239
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    throw p1

    .line 244
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 245
    .line 246
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/y;->t(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v0, " "

    .line 261
    .line 262
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    .line 266
    .line 267
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_9
    packed-switch v0, :pswitch_data_0

    .line 282
    .line 283
    .line 284
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 285
    .line 286
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 291
    .line 292
    const-string v1, "Session"

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 299
    .line 300
    const-string v2, "Transport"

    .line 301
    .line 302
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    if-eqz v0, :cond_a

    .line 307
    .line 308
    if-eqz v1, :cond_a

    .line 309
    .line 310
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/y;->m(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/y$b;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/e0;

    .line 315
    .line 316
    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    .line 317
    .line 318
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/e0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/y$b;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->m(Lcom/google/android/exoplayer2/source/rtsp/e0;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_8

    .line 325
    .line 326
    :cond_a
    const-string p1, "Missing mandatory session or transport header"

    .line 327
    .line 328
    invoke-static {p1, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    throw p1

    .line 333
    :pswitch_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 334
    .line 335
    const-string v1, "Range"

    .line 336
    .line 337
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-nez v0, :cond_b

    .line 342
    .line 343
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/d0;->c:Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_b
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/d0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 347
    .line 348
    .line 349
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_5
    :try_start_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 351
    .line 352
    const-string v2, "RTP-Info"

    .line 353
    .line 354
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    if-nez v1, :cond_c

    .line 359
    .line 360
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    goto :goto_6

    .line 365
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 366
    .line 367
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/f0;->a(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    .line 372
    .line 373
    .line 374
    move-result-object v1
    :try_end_1
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    goto :goto_6

    .line 376
    :catch_1
    :try_start_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    :goto_6
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/a0;

    .line 381
    .line 382
    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->a:I

    .line 383
    .line 384
    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/a0;-><init>(ILcom/google/android/exoplayer2/source/rtsp/d0;Ljava/util/List;)V

    .line 385
    .line 386
    .line 387
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->l(Lcom/google/android/exoplayer2/source/rtsp/a0;)V

    .line 388
    .line 389
    .line 390
    goto :goto_8

    .line 391
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->k()V

    .line 392
    .line 393
    .line 394
    goto :goto_8

    .line 395
    :pswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/z;

    .line 396
    .line 397
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->b:Lcom/google/android/exoplayer2/source/rtsp/o;

    .line 398
    .line 399
    const-string v2, "Public"

    .line 400
    .line 401
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/o;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->j(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/z;-><init>(ILjava/util/List;)V

    .line 410
    .line 411
    .line 412
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->j(Lcom/google/android/exoplayer2/source/rtsp/z;)V

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :pswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/n;

    .line 417
    .line 418
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/c0;->c:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/h0;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/g0;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/n;-><init>(ILcom/google/android/exoplayer2/source/rtsp/g0;)V

    .line 425
    .line 426
    .line 427
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->i(Lcom/google/android/exoplayer2/source/rtsp/n;)V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    .line 429
    .line 430
    goto :goto_8

    .line 431
    :goto_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 432
    .line 433
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;

    .line 434
    .line 435
    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f0(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    :goto_8
    :pswitch_5
    return-void

    .line 442
    nop

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private synthetic h(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->e(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/source/rtsp/n;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/d0;->c:Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/n;->b:Lcom/google/android/exoplayer2/source/rtsp/g0;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    .line 6
    .line 7
    const-string v2, "range"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/d0;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SDP format error."

    .line 30
    .line 31
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/n;->b:Lcom/google/android/exoplayer2/source/rtsp/g0;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->r(Lcom/google/android/exoplayer2/source/rtsp/g0;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "No playable track."

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->f(Lcom/google/android/exoplayer2/source/rtsp/d0;Lcom/google/common/collect/ImmutableList;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->s(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private j(Lcom/google/android/exoplayer2/source/rtsp/z;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

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
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/z;->b:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->q(Ljava/util/List;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->h(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->k(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->y(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$c;->c(Landroid/net/Uri;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->j(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "DESCRIBE not supported."

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    move v0, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 19
    .line 20
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 24
    .line 25
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->w(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->u(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->u(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->D0(J)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/source/rtsp/a0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 30
    .line 31
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 32
    .line 33
    const-wide/16 v2, 0x7530

    .line 34
    .line 35
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->p(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->o(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$KeepAliveMonitor;->start()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 51
    .line 52
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->v(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;J)J

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->x(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/rtsp/a0;->b:Lcom/google/android/exoplayer2/source/rtsp/d0;

    .line 67
    .line 68
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/rtsp/d0;->a:J

    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/p0;->B0(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/a0;->c:Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$d;->e(JLcom/google/common/collect/ImmutableList;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/source/rtsp/e0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->b(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->f(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;I)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/e0;->b:Lcom/google/android/exoplayer2/source/rtsp/y$b;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/y$b;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->S(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->b:Lcom/google/android/exoplayer2/source/rtsp/RtspClient;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspClient;->t(Lcom/google/android/exoplayer2/source/rtsp/RtspClient;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/v;->a(Lcom/google/android/exoplayer2/source/rtsp/u$d;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic b(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/v;->b(Lcom/google/android/exoplayer2/source/rtsp/u$d;Ljava/util/List;Ljava/lang/Exception;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;->a:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/m;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/m;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtspClient$b;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
