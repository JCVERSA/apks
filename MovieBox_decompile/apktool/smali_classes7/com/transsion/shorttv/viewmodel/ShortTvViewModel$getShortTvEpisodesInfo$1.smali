.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodesInfo$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x1c3,
        0x1c8
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

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(IILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$start:I

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$selectEp:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$subjectId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$start:I

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$selectEp:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;-><init>(IILcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->label:I

    .line 7
    .line 8
    const/4 v11, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v12, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    if-ne v1, v11, :cond_0

    .line 16
    .line 17
    iget-object v0, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$3:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/shorttv/bean/Video;

    .line 20
    .line 21
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$2:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lcom/transsion/shorttv/bean/Video;

    .line 24
    .line 25
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$1:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 28
    .line 29
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_1
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Ljava/lang/String;

    .line 52
    .line 53
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 56
    .line 57
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    move-object v14, v1

    .line 61
    move-object/from16 v1, p1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 68
    .line 69
    iget v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$start:I

    .line 70
    .line 71
    iget v4, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$selectEp:I

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "getShortTvEpisodes start isDataNotComplete\uff1a"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, " ,"

    .line 87
    .line 88
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const/4 v7, 0x4

    .line 99
    const/4 v8, 0x0

    .line 100
    const-string v4, "ShortTvViewModel"

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v13, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 107
    .line 108
    iget-object v14, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$subjectId:Ljava/lang/String;

    .line 109
    .line 110
    iget v4, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$selectEp:I

    .line 111
    .line 112
    :try_start_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 113
    .line 114
    invoke-static {v13}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v13, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$0:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v14, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$1:Ljava/lang/Object;

    .line 121
    .line 122
    iput v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->label:I

    .line 123
    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/16 v8, 0x18

    .line 127
    .line 128
    const/4 v9, 0x0

    .line 129
    move-object v2, v14

    .line 130
    move v3, v4

    .line 131
    move-object v7, p0

    .line 132
    invoke-static/range {v1 .. v9}, Lsr/a$a;->c(Lsr/a;Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    if-ne v1, v0, :cond_3

    .line 137
    .line 138
    return-object v0

    .line 139
    :cond_3
    move-object v2, v13

    .line 140
    :goto_0
    move-object v3, v1

    .line 141
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 148
    .line 149
    if-eqz v3, :cond_6

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 162
    .line 163
    if-eqz v3, :cond_6

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    if-eqz v5, :cond_6

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    if-eqz v5, :cond_6

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    if-eqz v6, :cond_5

    .line 186
    .line 187
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-eqz v2, :cond_5

    .line 192
    .line 193
    iput-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    iput-object v3, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$1:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v5, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$2:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v5, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->L$3:Ljava/lang/Object;

    .line 200
    .line 201
    iput v11, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->label:I

    .line 202
    .line 203
    invoke-interface {v2, v14, v4, v6, p0}, Lur/d;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    if-ne v2, v0, :cond_4

    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_4
    move-object v0, v5

    .line 211
    :goto_1
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    move-object v5, v0

    .line 214
    goto :goto_2

    .line 215
    :cond_5
    move-object v2, v12

    .line 216
    :goto_2
    invoke-virtual {v5, v2}, Lcom/transsion/shorttv/bean/Video;->setUrl(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_6
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 220
    .line 221
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    goto :goto_4

    .line 226
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 227
    .line 228
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    :goto_4
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 237
    .line 238
    iget-object v2, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->$subjectId:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_a

    .line 245
    .line 246
    move-object v3, v0

    .line 247
    check-cast v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 248
    .line 249
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    check-cast v4, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 254
    .line 255
    if-eqz v4, :cond_7

    .line 256
    .line 257
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    goto :goto_5

    .line 262
    :cond_7
    move-object v4, v12

    .line 263
    :goto_5
    invoke-static {v1, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->E(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/util/List;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-eqz v4, :cond_8

    .line 268
    .line 269
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    :cond_8
    invoke-virtual {v3}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;

    .line 285
    .line 286
    if-eqz v3, :cond_9

    .line 287
    .line 288
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTvInfoEpisodeList;->getItems()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    if-eqz v3, :cond_9

    .line 293
    .line 294
    check-cast v3, Ljava/util/Collection;

    .line 295
    .line 296
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    goto :goto_6

    .line 301
    :cond_9
    move-object v3, v12

    .line 302
    :goto_6
    invoke-static {v1, v2, v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    .line 304
    .line 305
    :cond_a
    iget-object v1, v10, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodesInfo$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 306
    .line 307
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-eqz v0, :cond_b

    .line 312
    .line 313
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, v12}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 321
    .line 322
    return-object v0
.end method
