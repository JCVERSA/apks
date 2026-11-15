.class final Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/VideoDetailViewModel;->p(Ljava/lang/String;Ljava/util/List;)V
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
    c = "com.transsion.videodetail.VideoDetailViewModel$fetchEpisodeMediaList$1"
    f = "VideoDetailViewModel.kt"
    l = {
        0x9a,
        0xa2,
        0xaa,
        0xbd,
        0xc8
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $seasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subjectId:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/videodetail/VideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videodetail/VideoDetailViewModel;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/ResourcesSeason;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    new-instance p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;-><init>(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

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
    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 8
    .line 9
    const-string v3, ","

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x5

    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v11, 0x1

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    if-eq v2, v11, :cond_4

    .line 20
    .line 21
    if-eq v2, v8, :cond_3

    .line 22
    .line 23
    if-eq v2, v7, :cond_2

    .line 24
    .line 25
    if-eq v2, v6, :cond_1

    .line 26
    .line 27
    if-ne v2, v5, :cond_0

    .line 28
    .line 29
    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    .line 30
    .line 31
    iget v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    .line 32
    .line 33
    iget v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 34
    .line 35
    iget v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 36
    .line 37
    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v12, Landroidx/lifecycle/b0;

    .line 40
    .line 41
    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v13, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 44
    .line 45
    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v14, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 48
    .line 49
    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v15, Ljava/lang/Integer;

    .line 52
    .line 53
    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Ljava/util/Iterator;

    .line 56
    .line 57
    iget-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v5, Ljava/util/List;

    .line 60
    .line 61
    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v9, Ljava/util/List;

    .line 64
    .line 65
    iget-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v10, Ljava/util/Map;

    .line 68
    .line 69
    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v11, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 72
    .line 73
    move/from16 v16, v2

    .line 74
    .line 75
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Ljava/util/List;

    .line 78
    .line 79
    move-object/from16 v17, v2

    .line 80
    .line 81
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 84
    .line 85
    move-object/from16 v18, v2

    .line 86
    .line 87
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Ljava/lang/String;

    .line 90
    .line 91
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v19, v3

    .line 95
    .line 96
    move-object v3, v12

    .line 97
    move v12, v4

    .line 98
    move-object/from16 v4, p1

    .line 99
    .line 100
    move/from16 p1, v16

    .line 101
    .line 102
    move-object/from16 v16, v15

    .line 103
    .line 104
    move-object v15, v5

    .line 105
    move-object v5, v1

    .line 106
    move-object v1, v13

    .line 107
    move-object v13, v2

    .line 108
    move-object v2, v14

    .line 109
    move-object/from16 v14, v17

    .line 110
    .line 111
    goto/16 :goto_d

    .line 112
    .line 113
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :cond_1
    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$4:I

    .line 122
    .line 123
    iget v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    .line 124
    .line 125
    iget v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    .line 126
    .line 127
    iget v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 128
    .line 129
    iget v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 130
    .line 131
    iget-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v8, Landroidx/lifecycle/b0;

    .line 134
    .line 135
    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 138
    .line 139
    iget-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v10, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 142
    .line 143
    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v11, Ljava/util/List;

    .line 146
    .line 147
    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v12, Ljava/util/List;

    .line 150
    .line 151
    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v13, Ljava/util/Map;

    .line 154
    .line 155
    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v14, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 158
    .line 159
    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v15, Ljava/util/List;

    .line 162
    .line 163
    move/from16 v16, v2

    .line 164
    .line 165
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v2, Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 168
    .line 169
    move-object/from16 v17, v2

    .line 170
    .line 171
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v2, Ljava/lang/String;

    .line 174
    .line 175
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    move-object/from16 v19, v3

    .line 179
    .line 180
    move-object v3, v2

    .line 181
    move/from16 v2, v16

    .line 182
    .line 183
    move-object/from16 v16, v15

    .line 184
    .line 185
    move-object v15, v14

    .line 186
    move-object v14, v13

    .line 187
    move-object v13, v12

    .line 188
    move-object v12, v11

    .line 189
    move-object v11, v10

    .line 190
    move-object v10, v9

    .line 191
    move-object v9, v8

    .line 192
    move v8, v6

    .line 193
    move v6, v5

    .line 194
    move v5, v4

    .line 195
    move v4, v7

    .line 196
    move-object v7, v1

    .line 197
    move-object/from16 v1, p1

    .line 198
    .line 199
    goto/16 :goto_11

    .line 200
    .line 201
    :cond_2
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v2, Landroidx/lifecycle/b0;

    .line 204
    .line 205
    iget-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v5, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 208
    .line 209
    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v6, Ljava/util/List;

    .line 212
    .line 213
    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 216
    .line 217
    iget-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v10, Ljava/util/Iterator;

    .line 220
    .line 221
    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v11, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 224
    .line 225
    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v12, Ljava/util/Iterator;

    .line 228
    .line 229
    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v13, Ljava/util/List;

    .line 232
    .line 233
    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v14, Ljava/util/List;

    .line 236
    .line 237
    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v15, Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 240
    .line 241
    iget-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v8, Ljava/lang/String;

    .line 244
    .line 245
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    move v4, v7

    .line 249
    move-object v7, v9

    .line 250
    move-object/from16 v9, p1

    .line 251
    .line 252
    goto/16 :goto_4

    .line 253
    .line 254
    :cond_3
    iget v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 255
    .line 256
    iget v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 257
    .line 258
    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v6, Landroidx/lifecycle/b0;

    .line 261
    .line 262
    iget-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v8, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 265
    .line 266
    iget-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 269
    .line 270
    iget-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v10, Ljava/util/List;

    .line 273
    .line 274
    iget-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v11, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 277
    .line 278
    iget-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v12, Ljava/util/Iterator;

    .line 281
    .line 282
    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v13, Ljava/util/List;

    .line 285
    .line 286
    iget-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v14, Ljava/util/List;

    .line 289
    .line 290
    iget-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v15, Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 293
    .line 294
    iget-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v7, Ljava/lang/String;

    .line 297
    .line 298
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    move-object/from16 v19, v3

    .line 302
    .line 303
    move-object v3, v7

    .line 304
    move-object v4, v12

    .line 305
    move-object v12, v14

    .line 306
    move-object/from16 v7, p1

    .line 307
    .line 308
    move-object v14, v13

    .line 309
    const/4 v13, 0x2

    .line 310
    move-object/from16 v32, v15

    .line 311
    .line 312
    move-object v15, v11

    .line 313
    :goto_0
    move-object/from16 v11, v32

    .line 314
    .line 315
    goto/16 :goto_9

    .line 316
    .line 317
    :cond_4
    iget-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v1, Landroidx/lifecycle/b0;

    .line 320
    .line 321
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v2, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 324
    .line 325
    iget-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v3, Ljava/util/List;

    .line 328
    .line 329
    iget-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v4, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 332
    .line 333
    iget-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v5, Ljava/util/List;

    .line 336
    .line 337
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    move-object v14, v5

    .line 341
    move-object v5, v4

    .line 342
    move-object/from16 v4, p1

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 347
    .line 348
    .line 349
    iget-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 350
    .line 351
    invoke-static {v2}, Lcom/transsion/videodetail/VideoDetailViewModel;->f(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    iget-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$seasons:Ljava/util/List;

    .line 356
    .line 357
    if-eqz v5, :cond_1d

    .line 358
    .line 359
    iget-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->$subjectId:Ljava/lang/String;

    .line 360
    .line 361
    iget-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->this$0:Lcom/transsion/videodetail/VideoDetailViewModel;

    .line 362
    .line 363
    new-instance v14, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    if-nez v7, :cond_7

    .line 373
    .line 374
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 375
    .line 376
    .line 377
    move-result v7

    .line 378
    const/4 v8, 0x1

    .line 379
    if-ne v7, v8, :cond_8

    .line 380
    .line 381
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    check-cast v7, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 386
    .line 387
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    if-nez v8, :cond_8

    .line 392
    .line 393
    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    if-nez v7, :cond_8

    .line 398
    .line 399
    new-instance v3, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 400
    .line 401
    const/16 v11, 0x8

    .line 402
    .line 403
    const/4 v12, 0x0

    .line 404
    const/4 v8, 0x0

    .line 405
    const/4 v9, 0x0

    .line 406
    const/4 v10, 0x0

    .line 407
    move-object v6, v3

    .line 408
    move-object v7, v13

    .line 409
    invoke-direct/range {v6 .. v12}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 410
    .line 411
    .line 412
    sget-object v4, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 413
    .line 414
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    invoke-virtual {v4, v5}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v3}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-virtual {v3}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 431
    .line 432
    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 433
    .line 434
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 435
    .line 436
    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 437
    .line 438
    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 439
    .line 440
    const/4 v7, 0x1

    .line 441
    iput v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 442
    .line 443
    invoke-interface {v4, v13, v5, v6, v0}, Lcom/transsnet/downloader/manager/g;->t(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    if-ne v4, v1, :cond_6

    .line 448
    .line 449
    return-object v1

    .line 450
    :cond_6
    move-object v1, v2

    .line 451
    move-object v2, v3

    .line 452
    move-object v5, v2

    .line 453
    move-object v3, v14

    .line 454
    :goto_1
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 455
    .line 456
    invoke-virtual {v2, v4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 457
    .line 458
    .line 459
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 464
    .line 465
    .line 466
    move-object v2, v1

    .line 467
    :cond_7
    move-object v10, v14

    .line 468
    goto/16 :goto_13

    .line 469
    .line 470
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 471
    .line 472
    .line 473
    move-result-object v7

    .line 474
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 475
    .line 476
    .line 477
    move-result v8

    .line 478
    if-eqz v8, :cond_12

    .line 479
    .line 480
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    check-cast v8, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 485
    .line 486
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v9

    .line 490
    if-eqz v9, :cond_9

    .line 491
    .line 492
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 493
    .line 494
    .line 495
    move-result v9

    .line 496
    if-nez v9, :cond_a

    .line 497
    .line 498
    :cond_9
    const/4 v4, 0x3

    .line 499
    goto/16 :goto_7

    .line 500
    .line 501
    :cond_a
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v18

    .line 505
    if-eqz v18, :cond_e

    .line 506
    .line 507
    filled-new-array {v3}, [Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v19

    .line 511
    const/16 v22, 0x6

    .line 512
    .line 513
    const/16 v23, 0x0

    .line 514
    .line 515
    const/16 v20, 0x0

    .line 516
    .line 517
    const/16 v21, 0x0

    .line 518
    .line 519
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    if-eqz v9, :cond_e

    .line 524
    .line 525
    check-cast v9, Ljava/lang/Iterable;

    .line 526
    .line 527
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    move-object v11, v8

    .line 532
    move-object v10, v9

    .line 533
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 534
    .line 535
    .line 536
    move-result v8

    .line 537
    if-eqz v8, :cond_d

    .line 538
    .line 539
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v8

    .line 543
    check-cast v8, Ljava/lang/String;

    .line 544
    .line 545
    invoke-static {v8}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    if-eqz v8, :cond_c

    .line 550
    .line 551
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 552
    .line 553
    .line 554
    move-result v21

    .line 555
    new-instance v8, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 556
    .line 557
    invoke-virtual {v11}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 558
    .line 559
    .line 560
    move-result v20

    .line 561
    const/16 v23, 0x8

    .line 562
    .line 563
    const/16 v24, 0x0

    .line 564
    .line 565
    const/16 v22, 0x0

    .line 566
    .line 567
    move-object/from16 v18, v8

    .line 568
    .line 569
    move-object/from16 v19, v13

    .line 570
    .line 571
    invoke-direct/range {v18 .. v24}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v8}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 575
    .line 576
    .line 577
    move-result v9

    .line 578
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v9

    .line 582
    invoke-static {v6, v9}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    invoke-virtual {v8, v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    sget-object v9, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 590
    .line 591
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 592
    .line 593
    .line 594
    move-result-object v12

    .line 595
    invoke-virtual {v9, v12}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    invoke-virtual {v8}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 600
    .line 601
    .line 602
    move-result v12

    .line 603
    invoke-virtual {v8}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 604
    .line 605
    .line 606
    move-result v15

    .line 607
    iput-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 608
    .line 609
    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 610
    .line 611
    iput-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 612
    .line 613
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 614
    .line 615
    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 616
    .line 617
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 618
    .line 619
    iput-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 620
    .line 621
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 622
    .line 623
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 624
    .line 625
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 626
    .line 627
    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 628
    .line 629
    const/4 v4, 0x3

    .line 630
    iput v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 631
    .line 632
    invoke-interface {v9, v13, v12, v15, v0}, Lcom/transsnet/downloader/manager/g;->t(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v9

    .line 636
    if-ne v9, v1, :cond_b

    .line 637
    .line 638
    return-object v1

    .line 639
    :cond_b
    move-object v15, v6

    .line 640
    move-object v12, v7

    .line 641
    move-object v7, v8

    .line 642
    move-object v6, v14

    .line 643
    move-object v8, v13

    .line 644
    move-object v13, v6

    .line 645
    move-object v14, v5

    .line 646
    move-object v5, v7

    .line 647
    :goto_4
    check-cast v9, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 648
    .line 649
    invoke-virtual {v5, v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 650
    .line 651
    .line 652
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-object v7, v12

    .line 656
    move-object v5, v14

    .line 657
    move-object v6, v15

    .line 658
    move-object v14, v13

    .line 659
    move-object v13, v8

    .line 660
    goto :goto_5

    .line 661
    :cond_c
    const/4 v4, 0x3

    .line 662
    :goto_5
    const/4 v4, 0x0

    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    :cond_d
    :goto_6
    const/4 v4, 0x0

    .line 666
    goto/16 :goto_2

    .line 667
    .line 668
    :cond_e
    const/4 v4, 0x3

    .line 669
    :cond_f
    move-object/from16 v19, v3

    .line 670
    .line 671
    const/4 v3, 0x2

    .line 672
    goto/16 :goto_a

    .line 673
    .line 674
    :goto_7
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    .line 675
    .line 676
    .line 677
    move-result v9

    .line 678
    const/4 v10, 0x1

    .line 679
    if-gt v10, v9, :cond_f

    .line 680
    .line 681
    move-object v12, v5

    .line 682
    move-object v11, v6

    .line 683
    move-object v15, v8

    .line 684
    move-object v5, v13

    .line 685
    move-object v6, v2

    .line 686
    move-object v13, v7

    .line 687
    move v2, v9

    .line 688
    const/4 v9, 0x1

    .line 689
    :goto_8
    new-instance v10, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 690
    .line 691
    invoke-virtual {v15}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 692
    .line 693
    .line 694
    move-result v17

    .line 695
    const/16 v19, 0x8

    .line 696
    .line 697
    const/16 v20, 0x0

    .line 698
    .line 699
    const/16 v21, 0x0

    .line 700
    .line 701
    move-object v7, v10

    .line 702
    move-object v8, v5

    .line 703
    move/from16 p1, v9

    .line 704
    .line 705
    move/from16 v9, v17

    .line 706
    .line 707
    move-object/from16 v17, v10

    .line 708
    .line 709
    move/from16 v10, p1

    .line 710
    .line 711
    move-object v4, v11

    .line 712
    move-object/from16 v11, v21

    .line 713
    .line 714
    move-object/from16 v25, v12

    .line 715
    .line 716
    move/from16 v12, v19

    .line 717
    .line 718
    move-object/from16 v19, v3

    .line 719
    .line 720
    move-object v3, v13

    .line 721
    move-object/from16 v13, v20

    .line 722
    .line 723
    invoke-direct/range {v7 .. v13}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual/range {v17 .. v17}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 727
    .line 728
    .line 729
    move-result v7

    .line 730
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 731
    .line 732
    .line 733
    move-result-object v7

    .line 734
    invoke-static {v4, v7}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v7

    .line 738
    move-object/from16 v8, v17

    .line 739
    .line 740
    invoke-virtual {v8, v7}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    sget-object v7, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 744
    .line 745
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 746
    .line 747
    .line 748
    move-result-object v9

    .line 749
    invoke-virtual {v7, v9}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 750
    .line 751
    .line 752
    move-result-object v7

    .line 753
    invoke-virtual {v8}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 754
    .line 755
    .line 756
    move-result v9

    .line 757
    invoke-virtual {v8}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 758
    .line 759
    .line 760
    move-result v10

    .line 761
    iput-object v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 762
    .line 763
    iput-object v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 764
    .line 765
    move-object/from16 v11, v25

    .line 766
    .line 767
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 768
    .line 769
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 770
    .line 771
    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 772
    .line 773
    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 774
    .line 775
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 776
    .line 777
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 778
    .line 779
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 780
    .line 781
    iput-object v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 782
    .line 783
    const/4 v12, 0x0

    .line 784
    iput-object v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 785
    .line 786
    move/from16 v12, p1

    .line 787
    .line 788
    iput v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 789
    .line 790
    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 791
    .line 792
    const/4 v13, 0x2

    .line 793
    iput v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 794
    .line 795
    invoke-interface {v7, v5, v9, v10, v0}, Lcom/transsnet/downloader/manager/g;->t(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    if-ne v7, v1, :cond_10

    .line 800
    .line 801
    return-object v1

    .line 802
    :cond_10
    move-object v9, v8

    .line 803
    move-object v10, v14

    .line 804
    move-object/from16 v32, v4

    .line 805
    .line 806
    move-object v4, v3

    .line 807
    move-object v3, v5

    .line 808
    move v5, v12

    .line 809
    move-object v12, v11

    .line 810
    goto/16 :goto_0

    .line 811
    .line 812
    :goto_9
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 813
    .line 814
    invoke-virtual {v8, v7}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 815
    .line 816
    .line 817
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    if-eq v5, v2, :cond_11

    .line 821
    .line 822
    add-int/lit8 v9, v5, 0x1

    .line 823
    .line 824
    move-object v5, v3

    .line 825
    move-object v13, v4

    .line 826
    move-object/from16 v3, v19

    .line 827
    .line 828
    const/4 v4, 0x3

    .line 829
    goto/16 :goto_8

    .line 830
    .line 831
    :cond_11
    move-object v13, v3

    .line 832
    move-object v7, v4

    .line 833
    move-object v2, v6

    .line 834
    move-object v6, v11

    .line 835
    move-object v5, v12

    .line 836
    :goto_a
    move-object/from16 v3, v19

    .line 837
    .line 838
    goto/16 :goto_6

    .line 839
    .line 840
    :cond_12
    move-object/from16 v19, v3

    .line 841
    .line 842
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 843
    .line 844
    .line 845
    move-result v3

    .line 846
    const/4 v4, 0x1

    .line 847
    if-ne v3, v4, :cond_7

    .line 848
    .line 849
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 854
    .line 855
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    const/16 v4, 0x32

    .line 860
    .line 861
    if-le v3, v4, :cond_7

    .line 862
    .line 863
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;

    .line 868
    .line 869
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    add-int/lit8 v5, v5, 0x31

    .line 874
    .line 875
    div-int/2addr v5, v4

    .line 876
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 877
    .line 878
    new-instance v4, Ljava/lang/StringBuilder;

    .line 879
    .line 880
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    .line 882
    .line 883
    const-string v8, "--------\u5355\u5b63\u8d85\u8fc750\u96c6, titleCount:"

    .line 884
    .line 885
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v9

    .line 895
    const/4 v11, 0x4

    .line 896
    const/4 v12, 0x0

    .line 897
    const-string v8, "VideoDetailEpisode"

    .line 898
    .line 899
    const/4 v10, 0x0

    .line 900
    invoke-static/range {v7 .. v12}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 901
    .line 902
    .line 903
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 904
    .line 905
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 906
    .line 907
    .line 908
    move-object v7, v6

    .line 909
    move v6, v5

    .line 910
    move-object v5, v4

    .line 911
    const/4 v4, 0x0

    .line 912
    :goto_b
    if-ge v4, v6, :cond_7

    .line 913
    .line 914
    new-instance v8, Ljava/util/ArrayList;

    .line 915
    .line 916
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .line 918
    .line 919
    mul-int/lit8 v9, v4, 0x32

    .line 920
    .line 921
    add-int/lit8 v10, v9, 0x1

    .line 922
    .line 923
    const/16 v11, 0x32

    .line 924
    .line 925
    add-int/2addr v9, v11

    .line 926
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getMaxEp()I

    .line 927
    .line 928
    .line 929
    move-result v12

    .line 930
    invoke-static {v9, v12}, Lkotlin/ranges/RangesKt;->h(II)I

    .line 931
    .line 932
    .line 933
    move-result v9

    .line 934
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v12

    .line 938
    if-eqz v12, :cond_19

    .line 939
    .line 940
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 941
    .line 942
    .line 943
    move-result v12

    .line 944
    if-nez v12, :cond_13

    .line 945
    .line 946
    goto/16 :goto_f

    .line 947
    .line 948
    :cond_13
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getAllEp()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v20

    .line 952
    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v21

    .line 959
    const/16 v24, 0x6

    .line 960
    .line 961
    const/16 v25, 0x0

    .line 962
    .line 963
    const/16 v22, 0x0

    .line 964
    .line 965
    const/16 v23, 0x0

    .line 966
    .line 967
    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 968
    .line 969
    .line 970
    move-result-object v12

    .line 971
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 972
    .line 973
    .line 974
    move-result-object v12

    .line 975
    move-object v15, v8

    .line 976
    move v8, v4

    .line 977
    move-object v4, v2

    .line 978
    move v2, v9

    .line 979
    move-object v9, v12

    .line 980
    move v12, v10

    .line 981
    move-object v10, v7

    .line 982
    move v7, v6

    .line 983
    move-object v6, v5

    .line 984
    move-object v5, v3

    .line 985
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 986
    .line 987
    .line 988
    move-result v3

    .line 989
    if-eqz v3, :cond_18

    .line 990
    .line 991
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    check-cast v3, Ljava/lang/String;

    .line 996
    .line 997
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    if-eqz v3, :cond_17

    .line 1002
    .line 1003
    new-instance v11, Lkotlin/ranges/IntRange;

    .line 1004
    .line 1005
    invoke-direct {v11, v12, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1006
    .line 1007
    .line 1008
    move-object/from16 p1, v4

    .line 1009
    .line 1010
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1011
    .line 1012
    .line 1013
    move-result v4

    .line 1014
    invoke-virtual {v11, v4}, Lkotlin/ranges/IntRange;->o(I)Z

    .line 1015
    .line 1016
    .line 1017
    move-result v4

    .line 1018
    if-eqz v4, :cond_15

    .line 1019
    .line 1020
    new-instance v11, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 1021
    .line 1022
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 1023
    .line 1024
    .line 1025
    move-result v16

    .line 1026
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1027
    .line 1028
    .line 1029
    move-result v17

    .line 1030
    const/16 v18, 0x8

    .line 1031
    .line 1032
    const/16 v20, 0x0

    .line 1033
    .line 1034
    const/16 v21, 0x0

    .line 1035
    .line 1036
    move-object v4, v3

    .line 1037
    move-object v3, v11

    .line 1038
    move-object/from16 v26, p1

    .line 1039
    .line 1040
    move-object/from16 v27, v4

    .line 1041
    .line 1042
    move-object v4, v13

    .line 1043
    move-object/from16 v28, v5

    .line 1044
    .line 1045
    move/from16 v5, v16

    .line 1046
    .line 1047
    move-object/from16 v29, v6

    .line 1048
    .line 1049
    move/from16 v6, v17

    .line 1050
    .line 1051
    move/from16 v30, v7

    .line 1052
    .line 1053
    move-object/from16 v7, v21

    .line 1054
    .line 1055
    move/from16 v31, v8

    .line 1056
    .line 1057
    move/from16 v8, v18

    .line 1058
    .line 1059
    move-object/from16 v16, v1

    .line 1060
    .line 1061
    move-object v1, v9

    .line 1062
    move-object/from16 v9, v20

    .line 1063
    .line 1064
    invoke-direct/range {v3 .. v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1065
    .line 1066
    .line 1067
    move-object/from16 v3, v27

    .line 1068
    .line 1069
    invoke-static {v10, v3}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v4

    .line 1073
    invoke-virtual {v11, v4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    sget-object v4, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 1077
    .line 1078
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v5

    .line 1082
    invoke-virtual {v4, v5}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v4

    .line 1086
    invoke-virtual {v11}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 1087
    .line 1088
    .line 1089
    move-result v5

    .line 1090
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1091
    .line 1092
    .line 1093
    move-result v6

    .line 1094
    iput-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 1095
    .line 1096
    iput-object v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 1097
    .line 1098
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 1099
    .line 1100
    move-object/from16 v7, v28

    .line 1101
    .line 1102
    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 1103
    .line 1104
    move-object/from16 v8, v29

    .line 1105
    .line 1106
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 1107
    .line 1108
    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 1109
    .line 1110
    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 1111
    .line 1112
    iput-object v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 1113
    .line 1114
    iput-object v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 1115
    .line 1116
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 1117
    .line 1118
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 1119
    .line 1120
    move-object/from16 v9, v26

    .line 1121
    .line 1122
    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    .line 1123
    .line 1124
    move-object/from16 v17, v1

    .line 1125
    .line 1126
    move/from16 v1, v30

    .line 1127
    .line 1128
    iput v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 1129
    .line 1130
    move/from16 v1, v31

    .line 1131
    .line 1132
    iput v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 1133
    .line 1134
    iput v12, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    .line 1135
    .line 1136
    iput v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    .line 1137
    .line 1138
    const/4 v1, 0x5

    .line 1139
    iput v1, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 1140
    .line 1141
    invoke-interface {v4, v13, v5, v6, v0}, Lcom/transsnet/downloader/manager/g;->t(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v4

    .line 1145
    move-object/from16 v5, v16

    .line 1146
    .line 1147
    if-ne v4, v5, :cond_14

    .line 1148
    .line 1149
    return-object v5

    .line 1150
    :cond_14
    move/from16 p1, v2

    .line 1151
    .line 1152
    move-object/from16 v16, v3

    .line 1153
    .line 1154
    move-object v3, v9

    .line 1155
    move-object/from16 v18, v10

    .line 1156
    .line 1157
    move-object v1, v11

    .line 1158
    move-object v2, v1

    .line 1159
    move-object v9, v15

    .line 1160
    move-object/from16 v6, v17

    .line 1161
    .line 1162
    move-object v11, v7

    .line 1163
    move-object v10, v8

    .line 1164
    move/from16 v8, v30

    .line 1165
    .line 1166
    move/from16 v7, v31

    .line 1167
    .line 1168
    :goto_d
    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1169
    .line 1170
    invoke-virtual {v1, v4}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move/from16 v2, p1

    .line 1177
    .line 1178
    move-object v4, v3

    .line 1179
    move-object v9, v6

    .line 1180
    move/from16 v30, v8

    .line 1181
    .line 1182
    move-object v6, v10

    .line 1183
    move-object/from16 v3, v16

    .line 1184
    .line 1185
    move-object/from16 v10, v18

    .line 1186
    .line 1187
    move v8, v7

    .line 1188
    move-object v7, v11

    .line 1189
    goto :goto_e

    .line 1190
    :cond_15
    move/from16 v30, v7

    .line 1191
    .line 1192
    move/from16 v31, v8

    .line 1193
    .line 1194
    move-object/from16 v17, v9

    .line 1195
    .line 1196
    move-object/from16 v9, p1

    .line 1197
    .line 1198
    move-object v7, v5

    .line 1199
    move-object v8, v6

    .line 1200
    move-object v5, v1

    .line 1201
    move-object v4, v9

    .line 1202
    move-object/from16 v9, v17

    .line 1203
    .line 1204
    move/from16 v8, v31

    .line 1205
    .line 1206
    :goto_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    if-le v1, v2, :cond_16

    .line 1211
    .line 1212
    move v9, v2

    .line 1213
    move-object v2, v4

    .line 1214
    move-object v3, v7

    .line 1215
    move v4, v8

    .line 1216
    move-object v8, v15

    .line 1217
    move-object v7, v5

    .line 1218
    move-object v5, v6

    .line 1219
    move/from16 v6, v30

    .line 1220
    .line 1221
    goto/16 :goto_12

    .line 1222
    .line 1223
    :cond_16
    move-object v1, v5

    .line 1224
    move-object v5, v7

    .line 1225
    move/from16 v7, v30

    .line 1226
    .line 1227
    const/16 v11, 0x32

    .line 1228
    .line 1229
    goto/16 :goto_c

    .line 1230
    .line 1231
    :cond_17
    move/from16 v30, v7

    .line 1232
    .line 1233
    move/from16 v31, v8

    .line 1234
    .line 1235
    move-object/from16 v17, v9

    .line 1236
    .line 1237
    move-object v9, v4

    .line 1238
    move-object v7, v5

    .line 1239
    move-object v8, v6

    .line 1240
    move-object/from16 v9, v17

    .line 1241
    .line 1242
    move/from16 v7, v30

    .line 1243
    .line 1244
    move/from16 v8, v31

    .line 1245
    .line 1246
    goto/16 :goto_c

    .line 1247
    .line 1248
    :cond_18
    move-object v9, v4

    .line 1249
    move/from16 v30, v7

    .line 1250
    .line 1251
    move/from16 v31, v8

    .line 1252
    .line 1253
    move-object v7, v5

    .line 1254
    move-object v8, v6

    .line 1255
    move-object v3, v7

    .line 1256
    move-object v5, v8

    .line 1257
    move-object v8, v15

    .line 1258
    move/from16 v6, v30

    .line 1259
    .line 1260
    move/from16 v4, v31

    .line 1261
    .line 1262
    move-object v7, v1

    .line 1263
    move-object/from16 v32, v9

    .line 1264
    .line 1265
    move v9, v2

    .line 1266
    move-object/from16 v2, v32

    .line 1267
    .line 1268
    goto/16 :goto_12

    .line 1269
    .line 1270
    :cond_19
    :goto_f
    if-gt v10, v9, :cond_1c

    .line 1271
    .line 1272
    move-object v11, v8

    .line 1273
    move-object v15, v14

    .line 1274
    move-object v8, v2

    .line 1275
    move-object v14, v3

    .line 1276
    move v3, v6

    .line 1277
    move-object v2, v13

    .line 1278
    move v6, v4

    .line 1279
    move-object v13, v5

    .line 1280
    move v4, v9

    .line 1281
    move v5, v10

    .line 1282
    :goto_10
    new-instance v9, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    .line 1283
    .line 1284
    invoke-virtual {v14}, Lcom/transsion/moviedetailapi/bean/ResourcesSeason;->getSe()I

    .line 1285
    .line 1286
    .line 1287
    move-result v22

    .line 1288
    const/16 v25, 0x8

    .line 1289
    .line 1290
    const/16 v26, 0x0

    .line 1291
    .line 1292
    const/16 v24, 0x0

    .line 1293
    .line 1294
    move-object/from16 v20, v9

    .line 1295
    .line 1296
    move-object/from16 v21, v2

    .line 1297
    .line 1298
    move/from16 v23, v10

    .line 1299
    .line 1300
    invoke-direct/range {v20 .. v26}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;-><init>(Ljava/lang/String;IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 1304
    .line 1305
    .line 1306
    move-result v12

    .line 1307
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v12

    .line 1311
    invoke-static {v7, v12}, Lcom/transsion/videodetail/VideoDetailViewModel;->d(Lcom/transsion/videodetail/VideoDetailViewModel;Ljava/lang/Integer;)Ljava/lang/String;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v12

    .line 1315
    invoke-virtual {v9, v12}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setName(Ljava/lang/String;)V

    .line 1316
    .line 1317
    .line 1318
    sget-object v12, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    .line 1319
    .line 1320
    move-object/from16 v16, v1

    .line 1321
    .line 1322
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {v12, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v1

    .line 1330
    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getSe()I

    .line 1331
    .line 1332
    .line 1333
    move-result v12

    .line 1334
    move-object/from16 p1, v1

    .line 1335
    .line 1336
    invoke-virtual {v9}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->getEp()I

    .line 1337
    .line 1338
    .line 1339
    move-result v1

    .line 1340
    iput-object v2, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$0:Ljava/lang/Object;

    .line 1341
    .line 1342
    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$1:Ljava/lang/Object;

    .line 1343
    .line 1344
    iput-object v15, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$2:Ljava/lang/Object;

    .line 1345
    .line 1346
    iput-object v14, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$3:Ljava/lang/Object;

    .line 1347
    .line 1348
    iput-object v13, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$4:Ljava/lang/Object;

    .line 1349
    .line 1350
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$5:Ljava/lang/Object;

    .line 1351
    .line 1352
    iput-object v11, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$6:Ljava/lang/Object;

    .line 1353
    .line 1354
    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$7:Ljava/lang/Object;

    .line 1355
    .line 1356
    iput-object v9, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$8:Ljava/lang/Object;

    .line 1357
    .line 1358
    iput-object v8, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$9:Ljava/lang/Object;

    .line 1359
    .line 1360
    move-object/from16 v17, v7

    .line 1361
    .line 1362
    const/4 v7, 0x0

    .line 1363
    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$10:Ljava/lang/Object;

    .line 1364
    .line 1365
    iput-object v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->L$11:Ljava/lang/Object;

    .line 1366
    .line 1367
    iput v3, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$0:I

    .line 1368
    .line 1369
    iput v6, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$1:I

    .line 1370
    .line 1371
    iput v5, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$2:I

    .line 1372
    .line 1373
    iput v4, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$3:I

    .line 1374
    .line 1375
    iput v10, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->I$4:I

    .line 1376
    .line 1377
    const/4 v7, 0x4

    .line 1378
    iput v7, v0, Lcom/transsion/videodetail/VideoDetailViewModel$fetchEpisodeMediaList$1;->label:I

    .line 1379
    .line 1380
    move-object/from16 v7, p1

    .line 1381
    .line 1382
    invoke-interface {v7, v2, v12, v1, v0}, Lcom/transsnet/downloader/manager/g;->t(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v1

    .line 1386
    move-object/from16 v7, v16

    .line 1387
    .line 1388
    if-ne v1, v7, :cond_1a

    .line 1389
    .line 1390
    return-object v7

    .line 1391
    :cond_1a
    move-object v12, v11

    .line 1392
    move-object/from16 v16, v15

    .line 1393
    .line 1394
    move-object v11, v9

    .line 1395
    move-object v15, v14

    .line 1396
    move-object v14, v13

    .line 1397
    move-object v9, v8

    .line 1398
    move-object v13, v12

    .line 1399
    move v8, v6

    .line 1400
    move v6, v5

    .line 1401
    move v5, v4

    .line 1402
    move v4, v3

    .line 1403
    move-object v3, v2

    .line 1404
    move v2, v10

    .line 1405
    move-object v10, v11

    .line 1406
    :goto_11
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 1407
    .line 1408
    invoke-virtual {v10, v1}, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;->setDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1412
    .line 1413
    .line 1414
    if-eq v2, v5, :cond_1b

    .line 1415
    .line 1416
    add-int/lit8 v10, v2, 0x1

    .line 1417
    .line 1418
    move-object v2, v3

    .line 1419
    move v3, v4

    .line 1420
    move v4, v5

    .line 1421
    move v5, v6

    .line 1422
    move-object v1, v7

    .line 1423
    move v6, v8

    .line 1424
    move-object v8, v9

    .line 1425
    move-object v11, v12

    .line 1426
    move-object v13, v14

    .line 1427
    move-object v14, v15

    .line 1428
    move-object/from16 v15, v16

    .line 1429
    .line 1430
    move-object/from16 v7, v17

    .line 1431
    .line 1432
    goto/16 :goto_10

    .line 1433
    .line 1434
    :cond_1b
    move-object v13, v3

    .line 1435
    move-object v2, v9

    .line 1436
    move-object v3, v15

    .line 1437
    move-object/from16 v10, v17

    .line 1438
    .line 1439
    move v9, v5

    .line 1440
    move-object v5, v14

    .line 1441
    move-object/from16 v14, v16

    .line 1442
    .line 1443
    move/from16 v32, v6

    .line 1444
    .line 1445
    move v6, v4

    .line 1446
    move v4, v8

    .line 1447
    move-object v8, v12

    .line 1448
    move/from16 v12, v32

    .line 1449
    .line 1450
    goto :goto_12

    .line 1451
    :cond_1c
    move-object/from16 v32, v7

    .line 1452
    .line 1453
    move-object v7, v1

    .line 1454
    move-object/from16 v1, v32

    .line 1455
    .line 1456
    move v12, v10

    .line 1457
    move-object v10, v1

    .line 1458
    :goto_12
    sget-object v20, Lwf/a;->a:Lwf/a$a;

    .line 1459
    .line 1460
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 1461
    .line 1462
    .line 1463
    move-result v1

    .line 1464
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1467
    .line 1468
    .line 1469
    const-string v15, "--------title:"

    .line 1470
    .line 1471
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    const-string v15, "-"

    .line 1478
    .line 1479
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    .line 1485
    const-string v0, ", list:"

    .line 1486
    .line 1487
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v22

    .line 1497
    const/16 v24, 0x4

    .line 1498
    .line 1499
    const/16 v25, 0x0

    .line 1500
    .line 1501
    const-string v21, "VideoDetailEpisode"

    .line 1502
    .line 1503
    const/16 v23, 0x0

    .line 1504
    .line 1505
    invoke-static/range {v20 .. v25}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1506
    .line 1507
    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1509
    .line 1510
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    .line 1518
    .line 1519
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .line 1528
    .line 1529
    invoke-static {v10}, Lcom/transsion/videodetail/VideoDetailViewModel;->g(Lcom/transsion/videodetail/VideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 1530
    .line 1531
    .line 1532
    move-result-object v0

    .line 1533
    invoke-virtual {v0, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1534
    .line 1535
    .line 1536
    const/4 v0, 0x1

    .line 1537
    add-int/2addr v4, v0

    .line 1538
    move-object/from16 v0, p0

    .line 1539
    .line 1540
    move-object v1, v7

    .line 1541
    move-object v7, v10

    .line 1542
    goto/16 :goto_b

    .line 1543
    .line 1544
    :cond_1d
    const/4 v10, 0x0

    .line 1545
    :goto_13
    invoke-virtual {v2, v10}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1546
    .line 1547
    .line 1548
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1549
    .line 1550
    return-object v0
.end method
