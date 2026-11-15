.class final Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->p(Lcom/transsion/moviedetailapi/bean/Subject;)V
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
    c = "com.transsion.videodetail.music.data.MusicLikedFragmentViewModel$clickLikedMusic$1"
    f = "MusicLikedFragmentViewModel.kt"
    l = {
        0x75,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subject:Lcom/transsion/moviedetailapi/bean/Subject;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/bean/Subject;",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

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
    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 28
    .line 29
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    iget-object v0, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    .line 48
    .line 49
    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 52
    .line 53
    iget-object v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 56
    .line 57
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lkotlinx/coroutines/n0;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->$subject:Lcom/transsion/moviedetailapi/bean/Subject;

    .line 70
    .line 71
    iget-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->this$0:Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 72
    .line 73
    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 74
    .line 75
    new-instance v6, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    .line 76
    .line 77
    const/16 v19, 0x7ff

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    const/4 v13, 0x0

    .line 87
    const/4 v14, 0x0

    .line 88
    const/4 v15, 0x0

    .line 89
    const/16 v16, 0x0

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    move-object v7, v6

    .line 96
    invoke-direct/range {v7 .. v20}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSubjectId(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setTitle(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setCover(Lcom/transsion/moviedetailapi/bean/Cover;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setCountryName(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setGenre(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setReleaseDate(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getDurationSeconds()Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setDurationSeconds(Ljava/lang/Integer;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setLikeTime(Ljava/lang/Long;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getStaffList()Ljava/util/List;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    if-eqz v7, :cond_3

    .line 164
    .line 165
    move-object v8, v7

    .line 166
    check-cast v8, Ljava/util/Collection;

    .line 167
    .line 168
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_3

    .line 173
    .line 174
    const/4 v8, 0x0

    .line 175
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    check-cast v7, Lcom/transsion/moviedetailapi/bean/Staff;

    .line 180
    .line 181
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v6, v8}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSingerName(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/Staff;->getAvatarUrl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v6, v7}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setSingerAvatar(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_3
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getLikeStatus()Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    if-nez v7, :cond_4

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_6

    .line 207
    .line 208
    iput-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v6, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    .line 213
    .line 214
    iput v4, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    .line 215
    .line 216
    invoke-static {v5, v6, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->m(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-ne v3, v0, :cond_5

    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_5
    move-object v3, v2

    .line 224
    move-object v2, v5

    .line 225
    move-object v0, v6

    .line 226
    :goto_0
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->ADD:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    .line 227
    .line 228
    :goto_1
    move-object v6, v0

    .line 229
    move-object v5, v2

    .line 230
    move-object v2, v3

    .line 231
    goto :goto_5

    .line 232
    :cond_6
    :goto_2
    if-nez v7, :cond_7

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result v7

    .line 239
    if-ne v7, v4, :cond_9

    .line 240
    .line 241
    iput-object v2, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$0:Ljava/lang/Object;

    .line 242
    .line 243
    iput-object v5, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$1:Ljava/lang/Object;

    .line 244
    .line 245
    iput-object v6, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->L$2:Ljava/lang/Object;

    .line 246
    .line 247
    iput v3, v1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;->label:I

    .line 248
    .line 249
    invoke-static {v5, v6, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    if-ne v3, v0, :cond_8

    .line 254
    .line 255
    return-object v0

    .line 256
    :cond_8
    move-object v3, v2

    .line 257
    move-object v2, v5

    .line 258
    move-object v0, v6

    .line 259
    :goto_3
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->REMOVE:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_9
    :goto_4
    sget-object v4, Lcom/transsion/videodetail/music/bean/LikeListActionEnum;->ADD:Lcom/transsion/videodetail/music/bean/LikeListActionEnum;

    .line 263
    .line 264
    :goto_5
    invoke-virtual {v6, v4}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->setActionEnum(Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v5}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->h(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Landroidx/lifecycle/b0;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0, v6}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v5}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->i(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v5, v0, v4}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->G(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V

    .line 282
    .line 283
    .line 284
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 285
    .line 286
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    goto :goto_7

    .line 291
    :goto_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 292
    .line 293
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 302
    .line 303
    .line 304
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 305
    .line 306
    return-object v0
.end method
