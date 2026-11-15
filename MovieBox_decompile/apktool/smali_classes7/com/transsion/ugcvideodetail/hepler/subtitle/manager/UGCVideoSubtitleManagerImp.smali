.class public final Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$a;


# instance fields
.field private b:Ljava/util/Set;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$resDownloadListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->f:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 10
    .line 11
    const-class v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    .line 28
    .line 29
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$resDownloadListener$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$resDownloadListener$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->e:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$resDownloadListener$1;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic g(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->m(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method private final k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isVideo()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_a

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMusic()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    sget-object v2, Lyg/l;->a:Lyg/l;

    .line 20
    .line 21
    invoke-virtual {v2}, Lyg/l;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 29
    .line 30
    sget-object v2, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->c()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v4, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, " checkDownloadSubtitle ,\u65e0\u7f51\u7edc\u4e0d\u505a\u68c0\u6d4b"

    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v1, v2, v4, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_8

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_2

    .line 70
    .line 71
    goto/16 :goto_3

    .line 72
    .line 73
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-eqz v7, :cond_6

    .line 78
    .line 79
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    goto/16 :goto_2

    .line 86
    .line 87
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_4

    .line 92
    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isStream()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    const-string v2, "StreamId"

    .line 100
    .line 101
    :cond_4
    :goto_0
    move-object v11, v2

    .line 102
    goto :goto_1

    .line 103
    :cond_5
    const-string v2, "ResourceId"

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_1
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 107
    .line 108
    sget-object v4, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v5, " checkUGCVideoSubtitle, name = "

    .line 137
    .line 138
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, " ugcVideoId:"

    .line 145
    .line 146
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v5, " collectionId:"

    .line 153
    .line 154
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, " videoResourceId:"

    .line 161
    .line 162
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v5, " idType:"

    .line 169
    .line 170
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v2, v4, v5, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    sget-object v4, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v10

    .line 205
    new-instance v12, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;

    .line 206
    .line 207
    move-object/from16 v2, p1

    .line 208
    .line 209
    invoke-direct {v12, v0, v1, v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/c;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {v4 .. v12}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :cond_6
    :goto_2
    sget-object v13, Lwf/a;->a:Lwf/a$a;

    .line 217
    .line 218
    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 219
    .line 220
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v14

    .line 224
    iget-object v2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 225
    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v2, " checkUGCVideoSubtitle fail\uff0cUGC\u89c6\u9891\u7f3a\u5c11resourceId\uff08videoResourceId\uff09"

    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    const/16 v17, 0x4

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    const/16 v16, 0x0

    .line 248
    .line 249
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    if-eqz v1, :cond_7

    .line 253
    .line 254
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 255
    .line 256
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    :cond_7
    return-void

    .line 260
    :cond_8
    :goto_3
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 261
    .line 262
    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 263
    .line 264
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    iget-object v2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 269
    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v2, " checkUGCVideoSubtitle fail\uff0cUGC\u89c6\u9891\u7f3a\u5c11ugcVideoId"

    .line 279
    .line 280
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    const/4 v7, 0x4

    .line 288
    const/4 v8, 0x0

    .line 289
    const/4 v6, 0x0

    .line 290
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    if-eqz v1, :cond_9

    .line 294
    .line 295
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 296
    .line 297
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    :cond_9
    return-void

    .line 301
    :cond_a
    :goto_4
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 302
    .line 303
    sget-object v2, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b;->a:Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;

    .line 304
    .line 305
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/b$a;->c()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    iget-object v2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->c:Ljava/lang/String;

    .line 310
    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    const-string v2, " checkDownloadSubtitle fail\uff0c has no shorTvId"

    .line 320
    .line 321
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    const/4 v7, 0x4

    .line 329
    const/4 v8, 0x0

    .line 330
    const/4 v6, 0x0

    .line 331
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    if-eqz v1, :cond_b

    .line 335
    .line 336
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 337
    .line 338
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    :cond_b
    return-void
.end method

.method static synthetic l(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final m(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/jvm/functions/Function1;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->d:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v7, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v1, v7

    .line 7
    move-object v2, p1

    .line 8
    move v3, p3

    .line 9
    move-object v4, p0

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$checkDownloadSubtitle$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x3

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    move-object v3, v7

    .line 19
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;-><init>(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v2, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 63
    .line 64
    iput-object p2, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp$getSubtitleList$1;->label:I

    .line 67
    .line 68
    invoke-virtual {v2, p1, v0}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object v4, p2

    .line 76
    move-object p2, p1

    .line 77
    move-object p1, v4

    .line 78
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    check-cast p2, Ljava/lang/Iterable;

    .line 83
    .line 84
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 99
    .line 100
    new-instance v1, Lht/a;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lht/a;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    return-object p1
.end method

.method public b(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->b(Lcom/transsion/subtitle_download/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lcom/transsion/subtitle_download/a;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->s(Lcom/transsion/subtitle_download/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public d(Llt/c;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const-string p2, "bean"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {p0, p1, p2, v0, p2}, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->l(Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Llt/c;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/subtitle/manager/UGCVideoSubtitleManagerImp;->b:Ljava/util/Set;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public h(Lht/a;)V
    .locals 1

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lht/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->d(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
