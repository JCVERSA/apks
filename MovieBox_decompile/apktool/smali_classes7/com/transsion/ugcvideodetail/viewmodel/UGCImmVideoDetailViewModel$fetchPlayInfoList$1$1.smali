.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0x21d,
        0x21f,
        0x224,
        0x241
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

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
    .locals 3
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
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    iget v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    .line 8
    .line 9
    const/4 v8, 0x4

    .line 10
    const/4 v9, 0x3

    .line 11
    const/4 v10, 0x2

    .line 12
    const/4 v11, 0x1

    .line 13
    const/4 v12, 0x0

    .line 14
    const/4 v13, 0x0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    if-eq v0, v11, :cond_3

    .line 18
    .line 19
    if-eq v0, v10, :cond_0

    .line 20
    .line 21
    if-eq v0, v9, :cond_2

    .line 22
    .line 23
    if-ne v0, v8, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_f

    .line 29
    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_2
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 41
    .line 42
    iget-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/util/Iterator;

    .line 45
    .line 46
    iget-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 49
    .line 50
    iget-object v3, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 53
    .line 54
    iget-object v4, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lkotlinx/coroutines/flow/b;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object/from16 v5, p1

    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_3
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 68
    .line 69
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object v14, v0

    .line 73
    move-object/from16 v0, p1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v14, v0

    .line 82
    check-cast v14, Lkotlinx/coroutines/flow/b;

    .line 83
    .line 84
    iget-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->t0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Lju/a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->$videoData:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 91
    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    check-cast v1, Ljava/lang/Iterable;

    .line 101
    .line 102
    new-instance v2, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_6

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v3, :cond_5

    .line 128
    .line 129
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_6
    new-array v1, v12, [Ljava/lang/String;

    .line 134
    .line 135
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, [Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    move-object v1, v13

    .line 143
    :goto_1
    iput-object v14, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput v11, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    .line 146
    .line 147
    const/4 v2, 0x0

    .line 148
    const/4 v4, 0x2

    .line 149
    const/4 v5, 0x0

    .line 150
    move-object/from16 v3, p0

    .line 151
    .line 152
    invoke-static/range {v0 .. v5}, Lju/a$a;->a(Lju/a;[Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-ne v0, v7, :cond_8

    .line 157
    .line 158
    return-object v7

    .line 159
    :cond_8
    :goto_2
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    const-string v2, "0"

    .line 166
    .line 167
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_19

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    .line 178
    .line 179
    if-eqz v1, :cond_9

    .line 180
    .line 181
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    goto :goto_3

    .line 186
    :cond_9
    move-object v1, v13

    .line 187
    :goto_3
    check-cast v1, Ljava/util/Collection;

    .line 188
    .line 189
    if-eqz v1, :cond_19

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_a

    .line 196
    .line 197
    goto/16 :goto_e

    .line 198
    .line 199
    :cond_a
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    .line 204
    .line 205
    if-eqz v1, :cond_18

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_18

    .line 212
    .line 213
    check-cast v1, Ljava/lang/Iterable;

    .line 214
    .line 215
    iget-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 216
    .line 217
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    move-object v3, v0

    .line 222
    move-object v4, v14

    .line 223
    :cond_b
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_17

    .line 228
    .line 229
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    if-eqz v5, :cond_12

    .line 240
    .line 241
    sget-object v14, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 242
    .line 243
    invoke-virtual {v14}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    iput-object v4, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v3, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    .line 250
    .line 251
    iput-object v2, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    .line 252
    .line 253
    iput-object v1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    .line 254
    .line 255
    iput-object v0, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    .line 256
    .line 257
    iput v9, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    .line 258
    .line 259
    invoke-virtual {v14, v5, v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    if-ne v5, v7, :cond_c

    .line 264
    .line 265
    return-object v7

    .line 266
    :cond_c
    :goto_5
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 267
    .line 268
    if-eqz v5, :cond_d

    .line 269
    .line 270
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 271
    .line 272
    .line 273
    move-result v14

    .line 274
    goto :goto_6

    .line 275
    :cond_d
    move v14, v12

    .line 276
    :goto_6
    invoke-virtual {v0, v14}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setDownloadStatus(I)V

    .line 277
    .line 278
    .line 279
    if-eqz v5, :cond_12

    .line 280
    .line 281
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    if-eqz v14, :cond_12

    .line 286
    .line 287
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    if-nez v14, :cond_e

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_e
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    const/4 v15, 0x5

    .line 299
    if-ne v14, v15, :cond_12

    .line 300
    .line 301
    new-instance v14, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 302
    .line 303
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v15

    .line 307
    const-string v16, ""

    .line 308
    .line 309
    if-nez v15, :cond_f

    .line 310
    .line 311
    move-object/from16 v18, v16

    .line 312
    .line 313
    goto :goto_7

    .line 314
    :cond_f
    move-object/from16 v18, v15

    .line 315
    .line 316
    :goto_7
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    if-nez v15, :cond_10

    .line 321
    .line 322
    move-object/from16 v19, v16

    .line 323
    .line 324
    goto :goto_8

    .line 325
    :cond_10
    move-object/from16 v19, v15

    .line 326
    .line 327
    :goto_8
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v20

    .line 335
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 336
    .line 337
    .line 338
    move-result-object v15

    .line 339
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v21

    .line 343
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    move-result-object v15

    .line 347
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v22

    .line 351
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    if-nez v5, :cond_11

    .line 356
    .line 357
    const-string v5, "ResourceId"

    .line 358
    .line 359
    :cond_11
    move-object/from16 v25, v5

    .line 360
    .line 361
    const-string v17, "Mp4"

    .line 362
    .line 363
    const-string v23, ""

    .line 364
    .line 365
    const-string v24, ""

    .line 366
    .line 367
    move-object/from16 v16, v14

    .line 368
    .line 369
    invoke-direct/range {v16 .. v25}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v0, v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setResources(Ljava/util/List;)V

    .line 377
    .line 378
    .line 379
    :cond_12
    :goto_9
    invoke-static {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->v0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    div-int/2addr v5, v10

    .line 384
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    if-eqz v14, :cond_13

    .line 389
    .line 390
    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v14

    .line 394
    if-eqz v14, :cond_13

    .line 395
    .line 396
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v14

    .line 400
    goto :goto_a

    .line 401
    :cond_13
    move v14, v12

    .line 402
    :goto_a
    if-gtz v14, :cond_14

    .line 403
    .line 404
    move/from16 v19, v5

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_14
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 408
    .line 409
    .line 410
    move-result-object v14

    .line 411
    if-eqz v14, :cond_15

    .line 412
    .line 413
    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getHeight()Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v14

    .line 417
    if-eqz v14, :cond_15

    .line 418
    .line 419
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v14

    .line 423
    goto :goto_b

    .line 424
    :cond_15
    move v14, v12

    .line 425
    :goto_b
    mul-int/2addr v14, v5

    .line 426
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 427
    .line 428
    .line 429
    move-result-object v15

    .line 430
    if-eqz v15, :cond_16

    .line 431
    .line 432
    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getWidth()Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v15

    .line 436
    if-eqz v15, :cond_16

    .line 437
    .line 438
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v15

    .line 442
    goto :goto_c

    .line 443
    :cond_16
    move v15, v11

    .line 444
    :goto_c
    div-int/2addr v14, v15

    .line 445
    move/from16 v19, v14

    .line 446
    .line 447
    :goto_d
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getFirstImage()Lcom/transsion/moviedetailapi/bean/FirstFrame;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    if-eqz v0, :cond_b

    .line 452
    .line 453
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/FirstFrame;->getUrl()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    if-eqz v0, :cond_b

    .line 458
    .line 459
    sget-object v14, Lni/g;->a:Lni/g;

    .line 460
    .line 461
    const/16 v23, 0xac

    .line 462
    .line 463
    const/16 v24, 0x0

    .line 464
    .line 465
    const/16 v17, 0x0

    .line 466
    .line 467
    const/16 v18, 0x0

    .line 468
    .line 469
    const/16 v20, 0x0

    .line 470
    .line 471
    const/16 v21, 0x1

    .line 472
    .line 473
    const/16 v22, 0x0

    .line 474
    .line 475
    move-object v15, v0

    .line 476
    move/from16 v16, v5

    .line 477
    .line 478
    invoke-static/range {v14 .. v24}, Lni/g;->e(Lni/g;Ljava/lang/String;IZZIZZIILjava/lang/Object;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v15

    .line 482
    sget-object v14, Lni/f;->a:Lni/f$a;

    .line 483
    .line 484
    const/16 v19, 0x8

    .line 485
    .line 486
    const/16 v20, 0x0

    .line 487
    .line 488
    const/16 v18, 0x0

    .line 489
    .line 490
    move-object/from16 v16, v0

    .line 491
    .line 492
    move/from16 v17, v5

    .line 493
    .line 494
    invoke-static/range {v14 .. v20}, Lni/f$a;->j(Lni/f$a;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_4

    .line 498
    .line 499
    :cond_17
    move-object v0, v3

    .line 500
    move-object v14, v4

    .line 501
    :cond_18
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 506
    .line 507
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$1:Ljava/lang/Object;

    .line 508
    .line 509
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$2:Ljava/lang/Object;

    .line 510
    .line 511
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$3:Ljava/lang/Object;

    .line 512
    .line 513
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$4:Ljava/lang/Object;

    .line 514
    .line 515
    iput v8, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    .line 516
    .line 517
    invoke-interface {v14, v0, v6}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    if-ne v0, v7, :cond_1a

    .line 522
    .line 523
    return-object v7

    .line 524
    :cond_19
    :goto_e
    iput-object v13, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->L$0:Ljava/lang/Object;

    .line 525
    .line 526
    iput v10, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$1;->label:I

    .line 527
    .line 528
    invoke-interface {v14, v13, v6}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-ne v0, v7, :cond_1a

    .line 533
    .line 534
    return-object v7

    .line 535
    :cond_1a
    :goto_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 536
    .line 537
    return-object v0
.end method
