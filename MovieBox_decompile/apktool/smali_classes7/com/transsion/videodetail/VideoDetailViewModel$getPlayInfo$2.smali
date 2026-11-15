.class final Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel;->v(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V
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
    c = "com.transsion.videodetail.VideoDetailViewModel$getPlayInfo$2"
    f = "VideoDetailViewModel.kt"
    l = {
        0x10e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $se:I

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/VideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;IILcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/VideoDetailViewModel;",
            "Ljava/lang/String;",
            "II",
            "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance v8, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/String;IILcom/transsion/videodetail/bean/VideoDetailMediaSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->label:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 36
    .line 37
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 38
    .line 39
    iget-object v3, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$subjectId:Ljava/lang/String;

    .line 40
    .line 41
    iget v4, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    .line 42
    .line 43
    iget v5, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    .line 44
    .line 45
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->l(Lcom/transsion/videodetail/VideoDetailViewModel;)Lcom/transsion/videodetail/b;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput v2, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->label:I

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    const/16 v7, 0x8

    .line 55
    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v2, v3

    .line 58
    move v3, v4

    .line 59
    move v4, v5

    .line 60
    move-object v5, v6

    .line 61
    move-object/from16 v6, p0

    .line 62
    .line 63
    invoke-static/range {v1 .. v8}, Lcom/transsion/videodetail/b$a;->a(Lcom/transsion/videodetail/b;Ljava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-ne v1, v0, :cond_2

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 71
    .line 72
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_2
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 88
    .line 89
    iget v2, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$se:I

    .line 90
    .line 91
    iget v3, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$ep:I

    .line 92
    .line 93
    iget-object v4, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$videoDetailMediaSource:Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 94
    .line 95
    iget-object v5, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->$key:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    const/4 v7, 0x0

    .line 102
    if-eqz v6, :cond_8

    .line 103
    .line 104
    move-object v6, v0

    .line 105
    check-cast v6, Lcom/tn/lib/net/bean/BaseDto;

    .line 106
    .line 107
    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->i(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v6}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    .line 116
    .line 117
    if-eqz v10, :cond_6

    .line 118
    .line 119
    invoke-virtual {v10, v2}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setSe(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v10, v3}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->setEp(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    invoke-virtual {v10}, Lcom/transsion/videodetail/bean/VideoDetailStreamList;->getStreams()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/Iterable;

    .line 142
    .line 143
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_4

    .line 152
    .line 153
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    move-object v12, v11

    .line 158
    check-cast v12, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 159
    .line 160
    invoke-virtual {v12}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getFormat()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    const-string v14, "DEFAULT"

    .line 165
    .line 166
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-eqz v13, :cond_3

    .line 171
    .line 172
    invoke-virtual {v12}, Lcom/transsion/videodetail/bean/VideoDetailStream;->getResolutions()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eqz v12, :cond_3

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_4
    move-object v11, v7

    .line 192
    :goto_3
    check-cast v11, Lcom/transsion/videodetail/bean/VideoDetailStream;

    .line 193
    .line 194
    if-eqz v11, :cond_5

    .line 195
    .line 196
    invoke-virtual {v11, v3}, Lcom/transsion/videodetail/bean/VideoDetailStream;->setUrl(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v12, Lwf/a;->a:Lwf/a$a;

    .line 200
    .line 201
    const/16 v16, 0x4

    .line 202
    .line 203
    const/16 v17, 0x0

    .line 204
    .line 205
    const-string v13, "CommonInfo"

    .line 206
    .line 207
    const-string v14, "getVideoPlayInfo \u6709\u4e0b\u8f7d\u5730\u5740\uff0c\u76f4\u63a5\u7528\u4e0b\u8f7d\u5730\u5740"

    .line 208
    .line 209
    const/4 v15, 0x0

    .line 210
    invoke-static/range {v12 .. v17}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    invoke-virtual {v6}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    .line 218
    .line 219
    if-eqz v2, :cond_7

    .line 220
    .line 221
    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->j(Lcom/transsion/videodetail/VideoDetailViewModel;)Ljava/util/HashMap;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_6
    move-object v10, v7

    .line 230
    :cond_7
    :goto_4
    invoke-virtual {v8, v10}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_8
    iget-object v1, v9, Lcom/transsion/videodetail/VideoDetailViewModel$getPlayInfo$2;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 234
    .line 235
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    invoke-static {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->i(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 249
    .line 250
    return-object v0
.end method
