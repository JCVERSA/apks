.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$updateHistory$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0x29b,
        0x2bc,
        0x2c4,
        0x2c6
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

.field final synthetic $playProgress:J

.field final synthetic $totalDuration:J

.field I$0:I

.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;",
            "JJ",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    .line 6
    .line 7
    iput-object p6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
    new-instance p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    .line 8
    .line 9
    iget-object v6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 67

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v10

    .line 7
    iget v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    .line 8
    .line 9
    const-wide/16 v1, 0x3e8

    .line 10
    .line 11
    const/4 v6, 0x4

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const-string v5, ", progress "

    .line 15
    .line 16
    const-string v7, ", ugcVideoId:"

    .line 17
    .line 18
    const/4 v12, 0x1

    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    if-eq v0, v12, :cond_3

    .line 22
    .line 23
    if-eq v0, v4, :cond_0

    .line 24
    .line 25
    if-eq v0, v3, :cond_2

    .line 26
    .line 27
    if-ne v0, v6, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-wide v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 30
    .line 31
    iget-object v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ljava/lang/String;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_12

    .line 43
    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    iget-wide v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    .line 53
    .line 54
    iget v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->I$0:I

    .line 55
    .line 56
    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 57
    .line 58
    iget-object v5, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    iget-object v7, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v7, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v15, v10

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    iget-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    .line 73
    .line 74
    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 75
    .line 76
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v15, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v11, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 87
    .line 88
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    move-object/from16 v1, p1

    .line 92
    .line 93
    move-object v6, v0

    .line 94
    move-object v8, v15

    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 101
    .line 102
    if-eqz v0, :cond_1d

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    if-nez v11, :cond_5

    .line 109
    .line 110
    goto/16 :goto_13

    .line 111
    .line 112
    :cond_5
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_6
    iget-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    .line 122
    .line 123
    cmp-long v13, v3, v1

    .line 124
    .line 125
    if-gez v13, :cond_8

    .line 126
    .line 127
    iget-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_7

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 146
    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getDuration()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    if-eqz v3, :cond_7

    .line 154
    .line 155
    invoke-static {v3}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 162
    .line 163
    .line 164
    move-result-wide v15

    .line 165
    goto :goto_0

    .line 166
    :cond_7
    const-wide/16 v15, 0x0

    .line 167
    .line 168
    :goto_0
    const/16 v3, 0x3e8

    .line 169
    .line 170
    int-to-long v3, v3

    .line 171
    mul-long/2addr v3, v15

    .line 172
    :cond_8
    iget-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$playProgress:J

    .line 173
    .line 174
    cmp-long v15, v13, v3

    .line 175
    .line 176
    if-lez v15, :cond_9

    .line 177
    .line 178
    move-wide v13, v3

    .line 179
    :cond_9
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    if-eqz v15, :cond_a

    .line 184
    .line 185
    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    goto :goto_1

    .line 190
    :cond_a
    const/4 v15, 0x0

    .line 191
    :goto_1
    if-nez v15, :cond_b

    .line 192
    .line 193
    new-instance v15, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v6, "SINGLE_"

    .line 199
    .line 200
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    :cond_b
    sget-object v17, Lwf/a;->a:Lwf/a$a;

    .line 211
    .line 212
    iget-wide v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$totalDuration:J

    .line 213
    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v8, "imm saveUGCVideoHistory -------- collectionId:"

    .line 220
    .line 221
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v8, "\uff0c totalDuration\uff1a"

    .line 240
    .line 241
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v19

    .line 251
    const/16 v21, 0x4

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    const-string v18, "UGCImmVideoDetailViewModel"

    .line 256
    .line 257
    const/16 v20, 0x0

    .line 258
    .line 259
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    .line 273
    .line 274
    iput-wide v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 275
    .line 276
    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    .line 277
    .line 278
    iput v12, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    .line 279
    .line 280
    invoke-interface {v1, v15, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-ne v1, v10, :cond_c

    .line 285
    .line 286
    return-object v10

    .line 287
    :cond_c
    move-object v8, v0

    .line 288
    move-object v6, v15

    .line 289
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 290
    .line 291
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 292
    .line 293
    if-nez v1, :cond_d

    .line 294
    .line 295
    move v2, v12

    .line 296
    goto :goto_3

    .line 297
    :cond_d
    const/4 v2, 0x0

    .line 298
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v12, "imm saveUGCVideoHistory2 -------- "

    .line 304
    .line 305
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v19

    .line 315
    const/16 v21, 0x4

    .line 316
    .line 317
    const/16 v22, 0x0

    .line 318
    .line 319
    const-string v18, "UGCImmVideoDetailViewModel"

    .line 320
    .line 321
    const/16 v20, 0x0

    .line 322
    .line 323
    move-object/from16 v17, v0

    .line 324
    .line 325
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    if-eqz v1, :cond_e

    .line 333
    .line 334
    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    goto :goto_4

    .line 339
    :cond_e
    const/4 v2, 0x0

    .line 340
    :goto_4
    iget-object v15, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->$data:Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 341
    .line 342
    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 343
    .line 344
    .line 345
    move-result-object v15

    .line 346
    if-eqz v15, :cond_f

    .line 347
    .line 348
    invoke-virtual {v15}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v15

    .line 352
    goto :goto_5

    .line 353
    :cond_f
    const/4 v15, 0x0

    .line 354
    :goto_5
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v1, :cond_10

    .line 359
    .line 360
    if-nez v2, :cond_11

    .line 361
    .line 362
    :cond_10
    move-object v15, v10

    .line 363
    goto/16 :goto_b

    .line 364
    .line 365
    :cond_11
    move-object/from16 v66, v10

    .line 366
    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 368
    .line 369
    .line 370
    move-result-wide v10

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v15, "saveUGCVideoHistory old,collectionId:"

    .line 377
    .line 378
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v5, ", timeStamp:"

    .line 397
    .line 398
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v19

    .line 408
    const/16 v21, 0x4

    .line 409
    .line 410
    const/16 v22, 0x0

    .line 411
    .line 412
    const-string v18, "UGCImmVideoDetailViewModel"

    .line 413
    .line 414
    const/16 v20, 0x0

    .line 415
    .line 416
    move-object/from16 v17, v0

    .line 417
    .line 418
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    if-eqz v0, :cond_12

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 428
    .line 429
    .line 430
    move-result-wide v0

    .line 431
    :goto_6
    const-wide/16 v17, 0x3e8

    .line 432
    .line 433
    goto :goto_7

    .line 434
    :cond_12
    const-wide/16 v0, 0x0

    .line 435
    .line 436
    goto :goto_6

    .line 437
    :goto_7
    cmp-long v0, v0, v17

    .line 438
    .line 439
    if-gez v0, :cond_14

    .line 440
    .line 441
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    iput-object v8, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 448
    .line 449
    iput-object v6, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 450
    .line 451
    const/4 v1, 0x0

    .line 452
    iput-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    .line 453
    .line 454
    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 455
    .line 456
    iput v12, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->I$0:I

    .line 457
    .line 458
    iput-wide v10, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$1:J

    .line 459
    .line 460
    const/4 v1, 0x3

    .line 461
    iput v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    .line 462
    .line 463
    move-object v1, v6

    .line 464
    move-object v2, v8

    .line 465
    move-object/from16 v5, p0

    .line 466
    .line 467
    invoke-interface/range {v0 .. v5}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->h(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    move-object/from16 v15, v66

    .line 472
    .line 473
    if-ne v0, v15, :cond_13

    .line 474
    .line 475
    return-object v15

    .line 476
    :cond_13
    move-object v5, v6

    .line 477
    move-object v7, v8

    .line 478
    move-wide v0, v10

    .line 479
    move v2, v12

    .line 480
    move-wide v3, v13

    .line 481
    :goto_8
    move-wide v13, v3

    .line 482
    move-object v10, v5

    .line 483
    move-object v11, v7

    .line 484
    move-wide v3, v0

    .line 485
    move v7, v2

    .line 486
    goto :goto_9

    .line 487
    :cond_14
    move-object/from16 v15, v66

    .line 488
    .line 489
    move-wide v3, v10

    .line 490
    move v7, v12

    .line 491
    move-object v10, v6

    .line 492
    move-object v11, v8

    .line 493
    :goto_9
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 494
    .line 495
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iput-object v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 500
    .line 501
    iput-object v10, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 502
    .line 503
    const/4 v1, 0x0

    .line 504
    iput-object v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    .line 505
    .line 506
    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 507
    .line 508
    const/4 v1, 0x4

    .line 509
    iput v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    .line 510
    .line 511
    move-object v1, v10

    .line 512
    move-object v2, v11

    .line 513
    move-wide v5, v13

    .line 514
    move-object/from16 v8, p0

    .line 515
    .line 516
    invoke-interface/range {v0 .. v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->e(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    if-ne v0, v15, :cond_15

    .line 521
    .line 522
    return-object v15

    .line 523
    :cond_15
    move-object v2, v10

    .line 524
    move-object v3, v11

    .line 525
    :goto_a
    move-wide v0, v13

    .line 526
    goto/16 :goto_12

    .line 527
    .line 528
    :goto_b
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v28

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 533
    .line 534
    .line 535
    move-result-wide v37

    .line 536
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    if-eqz v1, :cond_16

    .line 541
    .line 542
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    move-object/from16 v29, v1

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_16
    const/16 v29, 0x0

    .line 550
    .line 551
    :goto_c
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    if-eqz v1, :cond_17

    .line 556
    .line 557
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    move-object/from16 v30, v1

    .line 562
    .line 563
    goto :goto_d

    .line 564
    :cond_17
    const/16 v30, 0x0

    .line 565
    .line 566
    :goto_d
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    if-eqz v1, :cond_18

    .line 571
    .line 572
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    move-object/from16 v42, v1

    .line 577
    .line 578
    goto :goto_e

    .line 579
    :cond_18
    const/16 v42, 0x0

    .line 580
    .line 581
    :goto_e
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v32

    .line 585
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v56

    .line 589
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    if-eqz v1, :cond_19

    .line 594
    .line 595
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v1

    .line 599
    move-object/from16 v57, v1

    .line 600
    .line 601
    goto :goto_f

    .line 602
    :cond_19
    const/16 v57, 0x0

    .line 603
    .line 604
    :goto_f
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    if-eqz v1, :cond_1a

    .line 609
    .line 610
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    move-object/from16 v58, v1

    .line 615
    .line 616
    goto :goto_10

    .line 617
    :cond_1a
    const/16 v58, 0x0

    .line 618
    .line 619
    :goto_10
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    if-eqz v1, :cond_1b

    .line 624
    .line 625
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    move-object/from16 v59, v1

    .line 630
    .line 631
    goto :goto_11

    .line 632
    :cond_1b
    const/16 v59, 0x0

    .line 633
    .line 634
    :goto_11
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v60

    .line 638
    invoke-virtual {v11}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v61

    .line 642
    sget-object v1, Lij/o;->a:Lij/o;

    .line 643
    .line 644
    invoke-virtual {v1}, Lij/o;->d()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v62

    .line 648
    new-instance v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 649
    .line 650
    move-object/from16 v23, v1

    .line 651
    .line 652
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 653
    .line 654
    .line 655
    move-result-object v40

    .line 656
    const-wide/16 v2, 0x0

    .line 657
    .line 658
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 659
    .line 660
    .line 661
    move-result-object v51

    .line 662
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 663
    .line 664
    .line 665
    move-result-object v52

    .line 666
    move-object v2, v15

    .line 667
    const/16 v64, 0x0

    .line 668
    .line 669
    const/16 v65, 0x0

    .line 670
    .line 671
    const/16 v33, 0x0

    .line 672
    .line 673
    const/16 v34, 0x0

    .line 674
    .line 675
    const/16 v35, 0x0

    .line 676
    .line 677
    const/16 v36, 0x0

    .line 678
    .line 679
    const/16 v39, 0x0

    .line 680
    .line 681
    const/16 v41, 0x0

    .line 682
    .line 683
    const/16 v43, 0x0

    .line 684
    .line 685
    const/16 v44, 0x0

    .line 686
    .line 687
    const/16 v45, 0x0

    .line 688
    .line 689
    const/16 v46, 0x0

    .line 690
    .line 691
    const/16 v47, 0x0

    .line 692
    .line 693
    const/16 v48, 0x0

    .line 694
    .line 695
    const-wide/16 v49, 0x0

    .line 696
    .line 697
    const/16 v53, 0x0

    .line 698
    .line 699
    const/16 v54, 0x1

    .line 700
    .line 701
    const/16 v55, 0x0

    .line 702
    .line 703
    const v63, 0xaeaf00

    .line 704
    .line 705
    .line 706
    move-object/from16 v24, v6

    .line 707
    .line 708
    move-object/from16 v25, v8

    .line 709
    .line 710
    move-wide/from16 v26, v13

    .line 711
    .line 712
    move/from16 v31, v12

    .line 713
    .line 714
    invoke-direct/range {v23 .. v65}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 715
    .line 716
    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .line 721
    .line 722
    const-string v4, "saveUGCVideoHistory new,collectionId:"

    .line 723
    .line 724
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v19

    .line 746
    const/16 v21, 0x4

    .line 747
    .line 748
    const/16 v22, 0x0

    .line 749
    .line 750
    const-string v18, "UGCImmVideoDetailViewModel"

    .line 751
    .line 752
    const/16 v20, 0x0

    .line 753
    .line 754
    move-object/from16 v17, v0

    .line 755
    .line 756
    invoke-static/range {v17 .. v22}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 760
    .line 761
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    iput-object v8, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$0:Ljava/lang/Object;

    .line 766
    .line 767
    iput-object v6, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$1:Ljava/lang/Object;

    .line 768
    .line 769
    const/4 v3, 0x0

    .line 770
    iput-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->L$2:Ljava/lang/Object;

    .line 771
    .line 772
    iput-wide v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->J$0:J

    .line 773
    .line 774
    const/4 v3, 0x2

    .line 775
    iput v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;->label:I

    .line 776
    .line 777
    invoke-interface {v0, v1, v9}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->n(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    if-ne v0, v2, :cond_1c

    .line 782
    .line 783
    return-object v2

    .line 784
    :cond_1c
    move-object v2, v6

    .line 785
    move-object v3, v8

    .line 786
    goto/16 :goto_a

    .line 787
    .line 788
    :goto_12
    new-instance v4, Lyw/e;

    .line 789
    .line 790
    const/4 v5, 0x0

    .line 791
    const/4 v6, 0x1

    .line 792
    invoke-direct {v4, v6, v5}, Lyw/e;-><init>(ZZ)V

    .line 793
    .line 794
    .line 795
    sget-object v5, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 796
    .line 797
    const-class v6, Lcom/transsnet/flow/event/FlowEventBus;

    .line 798
    .line 799
    invoke-virtual {v5, v6}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    check-cast v7, Lcom/transsnet/flow/event/FlowEventBus;

    .line 804
    .line 805
    const-class v8, Lyw/e;

    .line 806
    .line 807
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v8

    .line 811
    const-string v10, "getName(...)"

    .line 812
    .line 813
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    const-wide/16 v11, 0x0

    .line 817
    .line 818
    invoke-virtual {v7, v8, v4, v11, v12}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 819
    .line 820
    .line 821
    new-instance v4, Lyw/g;

    .line 822
    .line 823
    invoke-direct {v4, v3, v2, v0, v1}, Lyw/g;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v5, v6}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 831
    .line 832
    const-class v1, Lyw/g;

    .line 833
    .line 834
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0, v1, v4, v11, v12}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 842
    .line 843
    .line 844
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 845
    .line 846
    return-object v0

    .line 847
    :cond_1d
    :goto_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 848
    .line 849
    return-object v0
.end method
