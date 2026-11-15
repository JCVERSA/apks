.class final Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/download_render/utils/ReportUtil;->c(Lcom/transsion/lib_web/download_render/utils/RenderStage;)V
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
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.lib_web.download_render.utils.ReportUtil$reportRender$1"
    f = "ReportUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/lib_web/download_render/utils/RenderStage;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/lib_web/download_render/utils/RenderStage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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
    new-instance p1, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;-><init>(Lcom/transsion/lib_web/download_render/utils/RenderStage;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/lib_web/download_render/utils/ReportUtil$reportRender$1;->$renderStage:Lcom/transsion/lib_web/download_render/utils/RenderStage;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getNeedReport()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getReported()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->setReported(Z)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "url"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v1, "source"

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getSource()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string v1, "type"

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getType()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getRenderWithDownload()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "rwd"

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "s1_score"

    .line 89
    .line 90
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "s1_fdn"

    .line 106
    .line 107
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const-string v2, "s1_fosa"

    .line 123
    .line 124
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v2, "s1_fue"

    .line 140
    .line 141
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v2, "s1_exp"

    .line 157
    .line 158
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "s1_rt"

    .line 174
    .line 175
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "s1_hfr"

    .line 191
    .line 192
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string v2, "s2_score"

    .line 208
    .line 209
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "s2_fdn"

    .line 225
    .line 226
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const-string v2, "s2_fosa"

    .line 242
    .line 243
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v2, "s2_fue"

    .line 259
    .line 260
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const-string v2, "s2_exp"

    .line 276
    .line 277
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    .line 285
    .line 286
    .line 287
    move-result-wide v1

    .line 288
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const-string v2, "s2_rt"

    .line 293
    .line 294
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    const-string v2, "s2_hfr"

    .line 310
    .line 311
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getScore()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v2, "s3_score"

    .line 327
    .line 328
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileDataNull()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const-string v2, "s3_fdn"

    .line 344
    .line 345
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileOperateStatusAbort()I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    const-string v2, "s3_fosa"

    .line 361
    .line 362
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getFileUnExist()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    const-string v2, "s3_fue"

    .line 378
    .line 379
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getException()I

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const-string v2, "s3_exp"

    .line 395
    .line 396
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getRenderTime()J

    .line 404
    .line 405
    .line 406
    move-result-wide v1

    .line 407
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string v2, "s3_rt"

    .line 412
    .line 413
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-virtual {p1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->getHtmlFromRemote()I

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    const-string v1, "s3_hfr"

    .line 429
    .line 430
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    new-instance p1, Landroid/os/Bundle;

    .line 434
    .line 435
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 436
    .line 437
    .line 438
    const-string v1, "ext"

    .line 439
    .line 440
    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 448
    .line 449
    const-string v1, "render"

    .line 450
    .line 451
    const/16 v2, 0x921

    .line 452
    .line 453
    invoke-virtual {v0, v1, p1, v2}, Lqi/h;->g(Ljava/lang/String;Landroid/os/Bundle;I)Z

    .line 454
    .line 455
    .line 456
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 457
    .line 458
    return-object p1

    .line 459
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 460
    .line 461
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 462
    .line 463
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    throw p1
.end method
