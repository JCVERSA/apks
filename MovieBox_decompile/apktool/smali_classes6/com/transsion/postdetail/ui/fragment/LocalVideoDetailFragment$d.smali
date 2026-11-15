.class public final Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lzn/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->F2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->k1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v5, 0x4

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "2------ playNextVideo, postDelayed start video"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->L0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;Z)V
    .locals 8

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const-string v2, "LocalVideoMiddle"

    .line 11
    .line 12
    const-string v3, "onNext"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->O0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->X0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v1, v2, v3, v4, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->s1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;JZ)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Lcom/transsnet/downloader/manager/g;->H()V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Lcom/transsnet/downloader/manager/g;->o()V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const/4 v1, 0x1

    .line 64
    const/4 v7, 0x0

    .line 65
    if-eqz p2, :cond_0

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-static {p2, v7, v1, v2}, Lcom/transsion/postdetail/layer/local/c0;->c(Lcom/transsion/postdetail/layer/local/c0;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 72
    .line 73
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/c0;->g()V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->U0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/postdetail/layer/local/c0;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/transsion/postdetail/layer/local/c0;->a()V

    .line 91
    .line 92
    .line 93
    :cond_2
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 94
    .line 95
    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->K1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 99
    .line 100
    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->E1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const-string v3, ""

    .line 110
    .line 111
    if-nez v2, :cond_3

    .line 112
    .line 113
    move-object v2, v3

    .line 114
    :cond_3
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->D1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-nez v2, :cond_4

    .line 124
    .line 125
    move-object v2, v3

    .line 126
    :cond_4
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->H1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    if-nez v2, :cond_5

    .line 136
    .line 137
    move-object v2, v3

    .line 138
    :cond_5
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->M1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    const/4 v4, 0x5

    .line 148
    if-ne v2, v4, :cond_6

    .line 149
    .line 150
    move v2, v1

    .line 151
    goto :goto_0

    .line 152
    :cond_6
    move v2, v7

    .line 153
    :goto_0
    invoke-static {p2, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->u1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 154
    .line 155
    .line 156
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 157
    .line 158
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->N0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    xor-int/2addr v1, v2

    .line 163
    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->x1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    move-object v1, v3

    .line 175
    :cond_7
    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->L1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Q1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_8
    move-object v3, v1

    .line 197
    :goto_1
    invoke-static {p2, v3}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->C1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 201
    .line 202
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->j1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    if-eqz p2, :cond_9

    .line 207
    .line 208
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 209
    .line 210
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-interface {p2, p1}, Lcom/transsnet/downloader/manager/g;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 218
    .line 219
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsnet/downloader/manager/g;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-interface {v1, p1}, Lcom/transsnet/downloader/manager/g;->h(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-static {p2, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->J1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 231
    .line 232
    invoke-static {p2, p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->v1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 236
    .line 237
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->h1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 241
    .line 242
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->b1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 247
    .line 248
    .line 249
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 250
    .line 251
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->a1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    if-eqz p2, :cond_a

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/transsion/subtitle/VideoSubtitleControl;->X()V

    .line 258
    .line 259
    .line 260
    :cond_a
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 261
    .line 262
    invoke-static {p2, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->g1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 263
    .line 264
    .line 265
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 266
    .line 267
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->c1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 276
    .line 277
    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->j1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v3, "playNextVideo, episode = :"

    .line 287
    .line 288
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string p1, "\uff0c isDownloadingPlay = "

    .line 295
    .line 296
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    const/4 v5, 0x4

    .line 307
    const/4 v6, 0x0

    .line 308
    const/4 v4, 0x0

    .line 309
    move-object v1, v0

    .line 310
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 314
    .line 315
    const-wide/16 v0, 0x0

    .line 316
    .line 317
    invoke-static {p1, v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->F1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;J)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 321
    .line 322
    invoke-static {p1, v7}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->I1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 323
    .line 324
    .line 325
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 326
    .line 327
    const/4 p2, 0x0

    .line 328
    invoke-static {p1, p2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->P1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;F)V

    .line 329
    .line 330
    .line 331
    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->y1(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;->Y0(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$d;->a:Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/postdetail/ui/fragment/p0;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/p0;-><init>(Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 v2, 0x1388

    .line 26
    .line 27
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
