.class final Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->p(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$download$1"
    f = "LocalVideoNotExistUtil.kt"
    l = {
        0xa3,
        0xb6,
        0xc9
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $isSeries:Z

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $seriesPosition:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    .line 8
    .line 9
    iget v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v5, :cond_1

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v7, "2 download, resourceId = "

    .line 58
    .line 59
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    const/4 v10, 0x4

    .line 70
    const/4 v11, 0x0

    .line 71
    const-string v7, "LocalVideoNotExistUtil"

    .line 72
    .line 73
    const/4 v9, 0x0

    .line 74
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    .line 84
    .line 85
    iput v4, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    .line 86
    .line 87
    invoke-virtual {p1, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_4

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    :goto_0
    move-object v1, p1

    .line 95
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 96
    .line 97
    if-eqz v1, :cond_d

    .line 98
    .line 99
    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v6, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$resourceId:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const-string v8, "getApp(...)"

    .line 110
    .line 111
    const/16 v9, 0x1d

    .line 112
    .line 113
    if-eq v7, v5, :cond_6

    .line 114
    .line 115
    if-eq v7, v3, :cond_5

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    if-lt v7, v9, :cond_7

    .line 121
    .line 122
    sget-object v7, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    .line 123
    .line 124
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v9, p1}, Lcom/transsnet/downloader/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_6
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 136
    .line 137
    if-lt v7, v9, :cond_7

    .line 138
    .line 139
    sget-object v7, Lcom/transsnet/downloader/y;->a:Lcom/transsnet/downloader/y;

    .line 140
    .line 141
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v9, p1}, Lcom/transsnet/downloader/y;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 152
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->H(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 158
    .line 159
    .line 160
    sget-object p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->h(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;)Lui/n0;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iput-object v1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput v5, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    .line 169
    .line 170
    invoke-interface {p1, v6, p0}, Lui/n0;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-ne p1, v0, :cond_8

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_8
    :goto_2
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 178
    .line 179
    const/4 v10, 0x4

    .line 180
    const/4 v11, 0x0

    .line 181
    const-string v7, "LocalVideoNotExistUtil"

    .line 182
    .line 183
    const-string v8, "2 download, \u52a0\u5165\u4e0b\u8f7d\u961f\u5217"

    .line 184
    .line 185
    const/4 v9, 0x0

    .line 186
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eq p1, v4, :cond_c

    .line 194
    .line 195
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    .line 197
    const/16 v4, 0x1c

    .line 198
    .line 199
    if-gt p1, v4, :cond_9

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPathType()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-ne p1, v5, :cond_9

    .line 206
    .line 207
    sget-object p1, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_9
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    if-eqz v4, :cond_b

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getRootPath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-nez p1, :cond_a

    .line 228
    .line 229
    sget-object p1, Lui/b;->a:Lui/b$a;

    .line 230
    .line 231
    invoke-virtual {p1}, Lui/b$a;->e()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :cond_a
    move-object v5, p1

    .line 236
    sget-object p1, Lui/b;->a:Lui/b$a;

    .line 237
    .line 238
    invoke-virtual {p1}, Lui/b$a;->e()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    const/4 v8, 0x4

    .line 243
    const/4 v9, 0x0

    .line 244
    const/4 v7, 0x0

    .line 245
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    goto :goto_3

    .line 250
    :cond_b
    move-object p1, v2

    .line 251
    :goto_3
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_c
    :goto_4
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 255
    .line 256
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {p1, v4}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {p1, v1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 265
    .line 266
    .line 267
    :cond_d
    iget-object p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$path:Ljava/lang/String;

    .line 268
    .line 269
    if-eqz p1, :cond_e

    .line 270
    .line 271
    new-instance v1, Ljava/io/File;

    .line 272
    .line 273
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-eqz p1, :cond_e

    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 283
    .line 284
    .line 285
    :cond_e
    iput-object v2, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->L$0:Ljava/lang/Object;

    .line 286
    .line 287
    iput v3, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->label:I

    .line 288
    .line 289
    const-wide/16 v1, 0xc8

    .line 290
    .line 291
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    if-ne p1, v0, :cond_f

    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_f
    :goto_5
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 299
    .line 300
    const/4 v5, 0x4

    .line 301
    const/4 v6, 0x0

    .line 302
    const-string v2, "LocalVideoNotExistUtil"

    .line 303
    .line 304
    const-string v3, "2 download, \u5237\u65b0\u5217\u8868"

    .line 305
    .line 306
    const/4 v4, 0x0

    .line 307
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-boolean p1, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$isSeries:Z

    .line 311
    .line 312
    if-eqz p1, :cond_10

    .line 313
    .line 314
    sget-object p1, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->a:Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;

    .line 315
    .line 316
    iget v0, p0, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil$download$1;->$seriesPosition:I

    .line 317
    .line 318
    invoke-static {p1, v0}, Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;->j(Lcom/transsnet/downloader/util/LocalVideoNotExistUtil;I)V

    .line 319
    .line 320
    .line 321
    :cond_10
    new-instance p1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 322
    .line 323
    const/16 v6, 0xc

    .line 324
    .line 325
    const/4 v7, 0x0

    .line 326
    const-string v2, ""

    .line 327
    .line 328
    const-string v3, ""

    .line 329
    .line 330
    const/4 v4, 0x0

    .line 331
    const/4 v5, 0x0

    .line 332
    move-object v1, p1

    .line 333
    invoke-direct/range {v1 .. v7}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 337
    .line 338
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 339
    .line 340
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 345
    .line 346
    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    const-string v2, "getName(...)"

    .line 353
    .line 354
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-wide/16 v2, 0x0

    .line 358
    .line 359
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 360
    .line 361
    .line 362
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 363
    .line 364
    return-object p1
.end method
