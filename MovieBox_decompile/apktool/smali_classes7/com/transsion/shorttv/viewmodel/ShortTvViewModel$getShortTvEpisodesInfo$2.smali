.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodesInfo$2"
    f = "ShortTvViewModel.kt"
    l = {
        0x1e1,
        0x1e7
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $selectEp:I

.field final synthetic $start:I

.field final synthetic $subjectId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(ILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$start:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$selectEp:I

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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$start:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$selectEp:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;-><init>(ILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->label:I

    .line 8
    .line 9
    const/4 v11, 0x2

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v12, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    if-ne v1, v11, :cond_0

    .line 17
    .line 18
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$6:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lcom/transsion/shorttv/bean/Video;

    .line 21
    .line 22
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$5:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lcom/transsion/shorttv/bean/Video;

    .line 25
    .line 26
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$4:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 29
    .line 30
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$3:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/util/Iterator;

    .line 33
    .line 34
    iget-object v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$2:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v4, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    iget-object v5, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$0:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v5, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 43
    .line 44
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    move-object v7, v1

    .line 48
    move-object/from16 v1, p1

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_1
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 70
    .line 71
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    move-object v14, v1

    .line 75
    move-object/from16 v1, p1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    iget v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$start:I

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v5, "getShortTvEpisodes start\uff1a"

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "  "

    .line 99
    .line 100
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/4 v7, 0x4

    .line 108
    const/4 v8, 0x0

    .line 109
    const-string v4, "ShortTvViewModel"

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v13, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 116
    .line 117
    iget-object v14, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$subjectId:Ljava/lang/String;

    .line 118
    .line 119
    iget v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$start:I

    .line 120
    .line 121
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 122
    .line 123
    invoke-static {v13}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    add-int/lit8 v4, v3, 0x13

    .line 128
    .line 129
    iput-object v13, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v14, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    iput v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->label:I

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    const/4 v6, 0x0

    .line 137
    const/16 v8, 0x18

    .line 138
    .line 139
    const/4 v9, 0x0

    .line 140
    move-object v2, v14

    .line 141
    move-object/from16 v7, p0

    .line 142
    .line 143
    invoke-static/range {v1 .. v9}, Lsr/a$a;->c(Lsr/a;Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-ne v1, v0, :cond_3

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_3
    move-object v2, v13

    .line 151
    :goto_0
    move-object v3, v1

    .line 152
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 159
    .line 160
    if-eqz v3, :cond_8

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-eqz v3, :cond_8

    .line 167
    .line 168
    check-cast v3, Ljava/lang/Iterable;

    .line 169
    .line 170
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    move-object v5, v2

    .line 175
    move-object v2, v3

    .line 176
    move-object v4, v14

    .line 177
    move-object v3, v1

    .line 178
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 189
    .line 190
    sget-object v6, Ldr/b;->a:Ldr/b;

    .line 191
    .line 192
    invoke-virtual {v6, v1}, Ldr/b;->d(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    if-eqz v7, :cond_4

    .line 204
    .line 205
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    if-eqz v7, :cond_4

    .line 210
    .line 211
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    if-eqz v8, :cond_6

    .line 216
    .line 217
    invoke-virtual {v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    if-eqz v9, :cond_6

    .line 222
    .line 223
    iput-object v5, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v4, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$1:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$2:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$3:Ljava/lang/Object;

    .line 230
    .line 231
    iput-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$4:Ljava/lang/Object;

    .line 232
    .line 233
    iput-object v7, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$5:Ljava/lang/Object;

    .line 234
    .line 235
    iput-object v7, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->L$6:Ljava/lang/Object;

    .line 236
    .line 237
    iput v11, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->label:I

    .line 238
    .line 239
    invoke-interface {v9, v4, v6, v8, v10}, Lur/d;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-ne v1, v0, :cond_5

    .line 244
    .line 245
    return-object v0

    .line 246
    :cond_5
    :goto_2
    check-cast v1, Ljava/lang/String;

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_6
    move-object v1, v12

    .line 250
    :goto_3
    invoke-virtual {v7, v1}, Lcom/transsion/shorttv/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_1

    .line 254
    :cond_7
    move-object v1, v3

    .line 255
    :cond_8
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 256
    .line 257
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    goto :goto_5

    .line 262
    :goto_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 263
    .line 264
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :goto_5
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 273
    .line 274
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$subjectId:Ljava/lang/String;

    .line 275
    .line 276
    iget v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$selectEp:I

    .line 277
    .line 278
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_f

    .line 283
    .line 284
    move-object v4, v0

    .line 285
    check-cast v4, Lcom/tn/lib/net/bean/BaseDto;

    .line 286
    .line 287
    invoke-virtual {v4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 292
    .line 293
    if-eqz v5, :cond_9

    .line 294
    .line 295
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    goto :goto_6

    .line 300
    :cond_9
    move-object v5, v12

    .line 301
    :goto_6
    invoke-virtual {v4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    check-cast v6, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 306
    .line 307
    if-eqz v6, :cond_a

    .line 308
    .line 309
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getInfo()Lcom/transsion/shorttv/bean/Subject;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    goto :goto_7

    .line 314
    :cond_a
    move-object v6, v12

    .line 315
    :goto_7
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    const/4 v8, 0x0

    .line 324
    if-nez v7, :cond_c

    .line 325
    .line 326
    move-object v7, v5

    .line 327
    check-cast v7, Ljava/util/Collection;

    .line 328
    .line 329
    if-eqz v7, :cond_c

    .line 330
    .line 331
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-eqz v7, :cond_b

    .line 336
    .line 337
    goto :goto_8

    .line 338
    :cond_b
    if-eqz v6, :cond_c

    .line 339
    .line 340
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    check-cast v7, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 345
    .line 346
    const-wide/16 v13, 0x0

    .line 347
    .line 348
    invoke-virtual {v1, v6, v7, v13, v14}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b1(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;J)V

    .line 349
    .line 350
    .line 351
    sget-object v15, Lwf/a;->a:Lwf/a$a;

    .line 352
    .line 353
    const/16 v19, 0x4

    .line 354
    .line 355
    const/16 v20, 0x0

    .line 356
    .line 357
    const-string v16, "ShortTvViewModel"

    .line 358
    .line 359
    const-string v17, "\u6ca1\u6709\u5386\u53f2"

    .line 360
    .line 361
    const/16 v18, 0x0

    .line 362
    .line 363
    invoke-static/range {v15 .. v20}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    :cond_c
    :goto_8
    invoke-static {v1, v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/util/List;)Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-eqz v6, :cond_d

    .line 371
    .line 372
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    invoke-virtual {v4}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v6, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    :cond_d
    if-eqz v5, :cond_e

    .line 384
    .line 385
    check-cast v5, Ljava/util/Collection;

    .line 386
    .line 387
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    goto :goto_9

    .line 392
    :cond_e
    move-object v4, v12

    .line 393
    :goto_9
    invoke-static {v1, v2, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/util/List;)V

    .line 394
    .line 395
    .line 396
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    :cond_f
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 423
    .line 424
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$subjectId:Ljava/lang/String;

    .line 425
    .line 426
    iget v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$2;->$selectEp:I

    .line 427
    .line 428
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    if-eqz v0, :cond_10

    .line 433
    .line 434
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v0, v12}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    const/4 v2, -0x1

    .line 461
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 469
    .line 470
    return-object v0
.end method
