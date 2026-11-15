.class final Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl;->F(Ljava/util/List;)V
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
    c = "com.transsnet.downloader.core.DownloadTaskImpl$updateDBRanges$1"
    f = "DownloadTaskImpl.kt"
    l = {
        0x2f2
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $downloadRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadRange;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadRange;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->$downloadRanges:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->$downloadRanges:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->label:I

    .line 8
    .line 9
    const-string v3, "updateDBRanges, size= "

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    if-ne v2, v4, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$3:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$2:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v5, Ljava/util/Iterator;

    .line 23
    .line 24
    iget-object v6, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v6, Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 27
    .line 28
    iget-object v7, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v7, Ljava/util/List;

    .line 31
    .line 32
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->$downloadRanges:Ljava/util/List;

    .line 53
    .line 54
    check-cast v5, Ljava/util/Collection;

    .line 55
    .line 56
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    :try_start_1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 62
    .line 63
    invoke-static {v5}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->o(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, " ------------------start"

    .line 83
    .line 84
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/4 v10, 0x4

    .line 92
    const/4 v11, 0x0

    .line 93
    const/4 v9, 0x0

    .line 94
    invoke-static/range {v6 .. v11}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 98
    .line 99
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    move-object v7, v2

    .line 104
    move-object/from16 v22, v6

    .line 105
    .line 106
    move-object v6, v5

    .line 107
    move-object/from16 v5, v22

    .line 108
    .line 109
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    .line 120
    .line 121
    invoke-static {v6}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->n(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lui/n0;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iput-object v7, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$0:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v6, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$1:Ljava/lang/Object;

    .line 128
    .line 129
    iput-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$2:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v2, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->L$3:Ljava/lang/Object;

    .line 132
    .line 133
    iput v4, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->label:I

    .line 134
    .line 135
    invoke-interface {v8, v2, v0}, Lui/n0;->c(Lcom/transsion/baselib/db/download/DownloadRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    if-ne v8, v1, :cond_2

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_2
    :goto_1
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 143
    .line 144
    invoke-static {v6}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->o(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 153
    .line 154
    .line 155
    move-result-wide v11

    .line 156
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    move-object/from16 p1, v5

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v15, "updateDBRanges,rangeId = "

    .line 172
    .line 173
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v10, ", start = "

    .line 180
    .line 181
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v10, ", end = "

    .line 188
    .line 189
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v10, ", progress = "

    .line 196
    .line 197
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    filled-new-array {v2}, [Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    const/4 v12, 0x4

    .line 212
    const/4 v13, 0x0

    .line 213
    const/4 v11, 0x0

    .line 214
    invoke-static/range {v8 .. v13}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    move-object/from16 v5, p1

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    goto :goto_0

    .line 221
    :cond_3
    sget-object v16, Lwf/a;->a:Lwf/a$a;

    .line 222
    .line 223
    iget-object v1, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;->this$0:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 224
    .line 225
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->o(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v17

    .line 229
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, " ------------------end"

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v18

    .line 253
    const/16 v20, 0x4

    .line 254
    .line 255
    const/16 v21, 0x0

    .line 256
    .line 257
    const/16 v19, 0x0

    .line 258
    .line 259
    invoke-static/range {v16 .. v21}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .line 261
    .line 262
    :catchall_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 263
    .line 264
    return-object v1
.end method
