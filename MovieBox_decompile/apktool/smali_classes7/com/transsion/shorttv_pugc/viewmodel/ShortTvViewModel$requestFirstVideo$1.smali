.class final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/t1;
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
    c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x92,
        0x9c,
        0xa0,
        0xa1,
        0xa4
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    iget v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x3

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    if-eq v2, v7, :cond_4

    .line 18
    .line 19
    if-eq v2, v6, :cond_3

    .line 20
    .line 21
    if-eq v2, v5, :cond_2

    .line 22
    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    if-ne v2, v3, :cond_0

    .line 26
    .line 27
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_d

    .line 39
    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_1
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v6, v4

    .line 60
    move-object/from16 v4, p1

    .line 61
    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :cond_2
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v6, v5

    .line 76
    move-object/from16 v5, p1

    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_3
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 83
    .line 84
    iget-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v6, Ljava/lang/String;

    .line 87
    .line 88
    iget-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    move-object v7, v6

    .line 96
    move-object/from16 v6, p1

    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_4
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v7, p1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 114
    .line 115
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 121
    .line 122
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 123
    .line 124
    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->O()Lvs/f;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    if-eqz v9, :cond_7

    .line 129
    .line 130
    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v10, Ljava/lang/String;

    .line 133
    .line 134
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    iput v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 137
    .line 138
    invoke-interface {v9, v10, v0}, Lvs/f;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    if-ne v7, v1, :cond_6

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_6
    :goto_0
    check-cast v7, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    move-object v7, v8

    .line 149
    :goto_1
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 150
    .line 151
    invoke-virtual {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->U()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_9

    .line 156
    .line 157
    if-eqz v7, :cond_8

    .line 158
    .line 159
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    goto :goto_2

    .line 164
    :cond_8
    move-object v9, v8

    .line 165
    :goto_2
    iget-object v10, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-nez v9, :cond_9

    .line 172
    .line 173
    move-object v7, v8

    .line 174
    :cond_9
    if-eqz v7, :cond_a

    .line 175
    .line 176
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    iput-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    .line 182
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 183
    .line 184
    invoke-static {v9}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->l(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-virtual {v9, v7}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_a
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v9, :cond_c

    .line 194
    .line 195
    if-eqz v7, :cond_b

    .line 196
    .line 197
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/bean/ShortTvInnerPlayBean;->getCollectionId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v9

    .line 201
    goto :goto_3

    .line 202
    :cond_b
    move-object v9, v8

    .line 203
    :cond_c
    :goto_3
    if-eqz v9, :cond_10

    .line 204
    .line 205
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 206
    .line 207
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    if-eqz v10, :cond_f

    .line 212
    .line 213
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 214
    .line 215
    iput-object v9, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 216
    .line 217
    iput-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    .line 218
    .line 219
    iput v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 220
    .line 221
    invoke-interface {v10, v9, v0}, Lvs/c;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-ne v6, v1, :cond_d

    .line 226
    .line 227
    return-object v1

    .line 228
    :cond_d
    move-object/from16 v17, v7

    .line 229
    .line 230
    move-object v7, v2

    .line 231
    move-object/from16 v2, v17

    .line 232
    .line 233
    :goto_4
    check-cast v6, Ljava/util/List;

    .line 234
    .line 235
    if-eqz v6, :cond_e

    .line 236
    .line 237
    check-cast v6, Ljava/util/Collection;

    .line 238
    .line 239
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    goto :goto_5

    .line 244
    :cond_e
    move-object/from16 v17, v7

    .line 245
    .line 246
    move-object v7, v2

    .line 247
    move-object/from16 v2, v17

    .line 248
    .line 249
    :cond_f
    move-object v6, v8

    .line 250
    move-object/from16 v17, v7

    .line 251
    .line 252
    move-object v7, v2

    .line 253
    move-object/from16 v2, v17

    .line 254
    .line 255
    :goto_5
    invoke-virtual {v2, v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f0(Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    move-object v2, v7

    .line 259
    :cond_10
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 260
    .line 261
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 262
    .line 263
    .line 264
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 265
    .line 266
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    if-eqz v7, :cond_14

    .line 271
    .line 272
    check-cast v7, Ljava/lang/Iterable;

    .line 273
    .line 274
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_12

    .line 283
    .line 284
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    move-object v10, v9

    .line 289
    check-cast v10, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 290
    .line 291
    invoke-virtual {v10}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v10

    .line 295
    iget-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 296
    .line 297
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_11

    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_12
    move-object v9, v8

    .line 305
    :goto_6
    check-cast v9, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 306
    .line 307
    if-nez v9, :cond_13

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_13
    move-object v12, v2

    .line 311
    move-object v2, v6

    .line 312
    move-object v5, v9

    .line 313
    goto/16 :goto_c

    .line 314
    .line 315
    :cond_14
    :goto_7
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 316
    .line 317
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    if-eqz v7, :cond_16

    .line 322
    .line 323
    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v9, Ljava/lang/String;

    .line 326
    .line 327
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    .line 332
    .line 333
    iput v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 334
    .line 335
    invoke-interface {v7, v9, v0}, Lvs/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-ne v5, v1, :cond_15

    .line 340
    .line 341
    return-object v1

    .line 342
    :cond_15
    move-object/from16 v17, v6

    .line 343
    .line 344
    move-object v6, v2

    .line 345
    move-object/from16 v2, v17

    .line 346
    .line 347
    :goto_8
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_16
    move-object v5, v8

    .line 351
    move-object/from16 v17, v6

    .line 352
    .line 353
    move-object v6, v2

    .line 354
    move-object/from16 v2, v17

    .line 355
    .line 356
    :goto_9
    if-nez v5, :cond_1b

    .line 357
    .line 358
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 359
    .line 360
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    if-eqz v5, :cond_18

    .line 365
    .line 366
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 367
    .line 368
    iput-object v6, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 369
    .line 370
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 371
    .line 372
    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    .line 373
    .line 374
    iput v4, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 375
    .line 376
    invoke-interface {v5, v7, v0}, Lvs/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    if-ne v4, v1, :cond_17

    .line 381
    .line 382
    return-object v1

    .line 383
    :cond_17
    :goto_a
    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 384
    .line 385
    move-object v5, v4

    .line 386
    move-object v4, v2

    .line 387
    move-object v2, v6

    .line 388
    goto :goto_b

    .line 389
    :cond_18
    move-object v4, v2

    .line 390
    move-object v2, v6

    .line 391
    move-object v5, v8

    .line 392
    :goto_b
    if-nez v5, :cond_19

    .line 393
    .line 394
    iget-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 395
    .line 396
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    if-eqz v5, :cond_1a

    .line 401
    .line 402
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 407
    .line 408
    :cond_19
    move-object v12, v2

    .line 409
    move-object v2, v4

    .line 410
    goto :goto_c

    .line 411
    :cond_1a
    move-object v12, v2

    .line 412
    move-object v2, v4

    .line 413
    move-object v5, v8

    .line 414
    goto :goto_c

    .line 415
    :cond_1b
    move-object v12, v6

    .line 416
    :goto_c
    sget-object v4, Lyg/l;->a:Lyg/l;

    .line 417
    .line 418
    invoke-virtual {v4}, Lyg/l;->e()Z

    .line 419
    .line 420
    .line 421
    move-result v4

    .line 422
    if-eqz v4, :cond_1d

    .line 423
    .line 424
    new-instance v4, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;

    .line 425
    .line 426
    iget-object v11, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 427
    .line 428
    iget-object v13, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$collectionId:Ljava/lang/String;

    .line 429
    .line 430
    iget-object v14, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->$subjectId:Ljava/lang/String;

    .line 431
    .line 432
    const/16 v16, 0x0

    .line 433
    .line 434
    move-object v9, v4

    .line 435
    move-object v10, v2

    .line 436
    move-object v15, v5

    .line 437
    invoke-direct/range {v9 .. v16}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lkotlin/coroutines/Continuation;)V

    .line 438
    .line 439
    .line 440
    iput-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$0:Ljava/lang/Object;

    .line 441
    .line 442
    iput-object v5, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$1:Ljava/lang/Object;

    .line 443
    .line 444
    iput-object v8, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->L$2:Ljava/lang/Object;

    .line 445
    .line 446
    iput v3, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->label:I

    .line 447
    .line 448
    invoke-static {v4, v0}, Lkotlinx/coroutines/l2;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    if-ne v3, v1, :cond_1c

    .line 453
    .line 454
    return-object v1

    .line 455
    :cond_1c
    move-object v1, v5

    .line 456
    :goto_d
    move-object v5, v1

    .line 457
    :cond_1d
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 458
    .line 459
    if-nez v1, :cond_1f

    .line 460
    .line 461
    if-eqz v5, :cond_1e

    .line 462
    .line 463
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 464
    .line 465
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    if-eqz v1, :cond_1e

    .line 470
    .line 471
    check-cast v1, Ljava/lang/Iterable;

    .line 472
    .line 473
    new-instance v2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$invokeSuspend$$inlined$sortedBy$1;

    .line 474
    .line 475
    invoke-direct {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    if-eqz v1, :cond_1e

    .line 483
    .line 484
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 485
    .line 486
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    check-cast v1, Ljava/util/Collection;

    .line 491
    .line 492
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 497
    .line 498
    .line 499
    :cond_1e
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 500
    .line 501
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    :cond_1f
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 509
    .line 510
    return-object v1
.end method
