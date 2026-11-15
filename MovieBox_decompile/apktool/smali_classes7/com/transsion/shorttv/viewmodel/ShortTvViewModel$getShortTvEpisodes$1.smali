.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getShortTvEpisodes$1"
    f = "ShortTvViewModel.kt"
    l = {
        0xf9,
        0x110,
        0x127,
        0x140,
        0x148,
        0x14c,
        0x152,
        0x15f,
        0x16f,
        0x175,
        0x193
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $currentSubjectId:Ljava/lang/String;

.field final synthetic $dataSource:Ljava/lang/Integer;

.field final synthetic $ep:I

.field final synthetic $isHistoryFirst:Z

.field final synthetic $subject:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic $subjectId:Ljava/lang/String;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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
    new-instance v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;-><init>(Ljava/lang/Integer;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZLkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v9, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 8
    .line 9
    const/4 v10, 0x2

    .line 10
    const/4 v11, 0x1

    .line 11
    const/4 v12, 0x0

    .line 12
    const/4 v13, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :pswitch_0
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 27
    .line 28
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/List;

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object v3, v0

    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    goto/16 :goto_2a

    .line 39
    .line 40
    :pswitch_1
    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    .line 41
    .line 42
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Ljava/util/List;

    .line 45
    .line 46
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Ljava/util/List;

    .line 49
    .line 50
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v4, v1

    .line 58
    move-object/from16 v1, p1

    .line 59
    .line 60
    goto/16 :goto_1f

    .line 61
    .line 62
    :pswitch_2
    iget v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    .line 63
    .line 64
    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 65
    .line 66
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    .line 69
    .line 70
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object/from16 v3, p1

    .line 74
    .line 75
    goto/16 :goto_1d

    .line 76
    .line 77
    :pswitch_3
    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 78
    .line 79
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v2, v0

    .line 82
    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    .line 83
    .line 84
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    move-object/from16 v0, p1

    .line 88
    .line 89
    goto/16 :goto_18

    .line 90
    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_1a

    .line 93
    .line 94
    :pswitch_4
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 95
    .line 96
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 99
    .line 100
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object/from16 v1, p1

    .line 104
    .line 105
    goto/16 :goto_16

    .line 106
    .line 107
    :pswitch_5
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 108
    .line 109
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 112
    .line 113
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    goto/16 :goto_14

    .line 119
    .line 120
    :pswitch_6
    iget-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 121
    .line 122
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    move-object v2, v0

    .line 125
    check-cast v2, Lkotlinx/coroutines/n0;

    .line 126
    .line 127
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 129
    .line 130
    move-object/from16 v0, p1

    .line 131
    .line 132
    goto/16 :goto_11

    .line 133
    .line 134
    :catch_0
    move-exception v0

    .line 135
    move/from16 v25, v1

    .line 136
    .line 137
    move-object v1, v0

    .line 138
    move/from16 v0, v25

    .line 139
    .line 140
    goto/16 :goto_13

    .line 141
    .line 142
    :pswitch_7
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 143
    .line 144
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 147
    .line 148
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .line 150
    .line 151
    move-object v15, v1

    .line 152
    move-object/from16 v1, p1

    .line 153
    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :pswitch_8
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 157
    .line 158
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 161
    .line 162
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v2, Lnr/e;

    .line 165
    .line 166
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v3, Ljava/util/List;

    .line 169
    .line 170
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v4, Lkotlinx/coroutines/n0;

    .line 173
    .line 174
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    move-object v15, v4

    .line 178
    move-object/from16 v4, p1

    .line 179
    .line 180
    goto/16 :goto_5

    .line 181
    .line 182
    :pswitch_9
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 183
    .line 184
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v1, Ljava/util/List;

    .line 187
    .line 188
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v2, Lkotlinx/coroutines/n0;

    .line 191
    .line 192
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    move-object v3, v1

    .line 196
    move-object/from16 v1, p1

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :pswitch_a
    iget-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 201
    .line 202
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 205
    .line 206
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    move-object/from16 v2, p1

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 216
    .line 217
    move-object v1, v0

    .line 218
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 219
    .line 220
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 221
    .line 222
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    .line 227
    .line 228
    if-nez v2, :cond_e

    .line 229
    .line 230
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A0()Lur/h;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    if-eqz v2, :cond_1

    .line 237
    .line 238
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 243
    .line 244
    iput v11, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 245
    .line 246
    invoke-interface {v2, v3, v7}, Lur/h;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-ne v2, v8, :cond_0

    .line 251
    .line 252
    return-object v8

    .line 253
    :cond_0
    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    .line 254
    .line 255
    move-object v15, v1

    .line 256
    move-object v14, v2

    .line 257
    goto :goto_1

    .line 258
    :cond_1
    move-object v15, v1

    .line 259
    move-object v14, v13

    .line 260
    :goto_1
    if-eqz v14, :cond_2

    .line 261
    .line 262
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 263
    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v3, "\u83b7\u53d6\u5230\u5386\u53f2\uff1a"

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    const/4 v5, 0x4

    .line 282
    const/4 v6, 0x0

    .line 283
    const-string v2, "ShortTvViewModel"

    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 290
    .line 291
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1, v14}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :cond_2
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$currentSubjectId:Ljava/lang/String;

    .line 299
    .line 300
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    const/4 v2, -0x1

    .line 307
    if-eqz v1, :cond_3

    .line 308
    .line 309
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->j0()Landroidx/lifecycle/b0;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    check-cast v1, Ljava/lang/Integer;

    .line 320
    .line 321
    if-eqz v1, :cond_3

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    :cond_3
    move v6, v2

    .line 328
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 329
    .line 330
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 331
    .line 332
    iget v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 333
    .line 334
    iget-boolean v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$isHistoryFirst:Z

    .line 335
    .line 336
    move v2, v6

    .line 337
    move/from16 v16, v3

    .line 338
    .line 339
    move-object v3, v14

    .line 340
    move v9, v6

    .line 341
    move/from16 v6, v16

    .line 342
    .line 343
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S(ILcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lcom/transsion/shorttv/bean/Subject;IZ)I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 348
    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    const-string v4, "lastEp: "

    .line 355
    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v4, ", historyItem: "

    .line 363
    .line 364
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string v4, ", firstSelectEp:"

    .line 371
    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v20

    .line 382
    const/16 v22, 0x4

    .line 383
    .line 384
    const/16 v23, 0x0

    .line 385
    .line 386
    const-string v19, "ShortTvViewModel"

    .line 387
    .line 388
    const/16 v21, 0x0

    .line 389
    .line 390
    move-object/from16 v18, v2

    .line 391
    .line 392
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    new-instance v3, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .line 399
    .line 400
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 401
    .line 402
    if-eqz v4, :cond_4

    .line 403
    .line 404
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    goto :goto_2

    .line 409
    :cond_4
    move-object v4, v13

    .line 410
    :goto_2
    if-eqz v4, :cond_7

    .line 411
    .line 412
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 413
    .line 414
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    if-eqz v4, :cond_7

    .line 419
    .line 420
    if-eqz v0, :cond_7

    .line 421
    .line 422
    if-nez v1, :cond_6

    .line 423
    .line 424
    sget-object v1, Lpq/c;->a:Lpq/c;

    .line 425
    .line 426
    invoke-virtual {v1}, Lpq/c;->b()Lpq/b;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lpq/b;->b()Z

    .line 431
    .line 432
    .line 433
    move-result v1

    .line 434
    if-eqz v1, :cond_6

    .line 435
    .line 436
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 437
    .line 438
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v5, "\u5b58\u5728\u9884\u544a\u7247 "

    .line 448
    .line 449
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v20

    .line 459
    const/16 v22, 0x4

    .line 460
    .line 461
    const/16 v23, 0x0

    .line 462
    .line 463
    const-string v19, "ShortTvViewModel"

    .line 464
    .line 465
    const/16 v21, 0x0

    .line 466
    .line 467
    move-object/from16 v18, v2

    .line 468
    .line 469
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 473
    .line 474
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 477
    .line 478
    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 479
    .line 480
    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 481
    .line 482
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 483
    .line 484
    iput v10, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 485
    .line 486
    invoke-static {v1, v2, v4, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    if-ne v1, v8, :cond_5

    .line 491
    .line 492
    return-object v8

    .line 493
    :cond_5
    move-object v2, v15

    .line 494
    :goto_3
    check-cast v1, Lnr/e;

    .line 495
    .line 496
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 500
    .line 501
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 513
    .line 514
    invoke-virtual {v1, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    .line 515
    .line 516
    .line 517
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 518
    .line 519
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 524
    .line 525
    invoke-virtual {v1, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 529
    .line 530
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    move-object v15, v2

    .line 538
    goto/16 :goto_7

    .line 539
    .line 540
    :cond_6
    const/16 v22, 0x4

    .line 541
    .line 542
    const/16 v23, 0x0

    .line 543
    .line 544
    const-string v19, "ShortTvViewModel"

    .line 545
    .line 546
    const-string v20, "\u4e0d\u9700\u8981\u52a0\u8f7d\u9884\u544a\u7247"

    .line 547
    .line 548
    const/16 v21, 0x0

    .line 549
    .line 550
    move-object/from16 v18, v2

    .line 551
    .line 552
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_7

    .line 556
    .line 557
    :cond_7
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 558
    .line 559
    invoke-static {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 564
    .line 565
    .line 566
    move-result-object v5

    .line 567
    invoke-virtual {v4, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    const/16 v22, 0x4

    .line 571
    .line 572
    const/16 v23, 0x0

    .line 573
    .line 574
    const-string v19, "ShortTvViewModel"

    .line 575
    .line 576
    const-string v20, "\u4e0d\u5b58\u5728\u9884\u544a\u7247"

    .line 577
    .line 578
    const/16 v21, 0x0

    .line 579
    .line 580
    move-object/from16 v18, v2

    .line 581
    .line 582
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 586
    .line 587
    if-eqz v4, :cond_8

    .line 588
    .line 589
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    goto :goto_4

    .line 594
    :cond_8
    move-object v4, v13

    .line 595
    :goto_4
    if-eqz v4, :cond_d

    .line 596
    .line 597
    if-eqz v0, :cond_d

    .line 598
    .line 599
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    if-ne v5, v1, :cond_c

    .line 604
    .line 605
    const/16 v22, 0x4

    .line 606
    .line 607
    const/16 v23, 0x0

    .line 608
    .line 609
    const-string v19, "ShortTvViewModel"

    .line 610
    .line 611
    const-string v20, "\u9700\u8981\u9884\u52a0\u8f7d\u7b2c\u4e00\u96c6"

    .line 612
    .line 613
    const/16 v21, 0x0

    .line 614
    .line 615
    move-object/from16 v18, v2

    .line 616
    .line 617
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    new-instance v2, Lnr/e;

    .line 621
    .line 622
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 625
    .line 626
    .line 627
    move-result v20

    .line 628
    const/16 v23, 0x8

    .line 629
    .line 630
    const/16 v24, 0x0

    .line 631
    .line 632
    const/16 v22, 0x0

    .line 633
    .line 634
    move-object/from16 v18, v2

    .line 635
    .line 636
    move-object/from16 v19, v1

    .line 637
    .line 638
    move-object/from16 v21, v4

    .line 639
    .line 640
    invoke-direct/range {v18 .. v24}, Lnr/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 641
    .line 642
    .line 643
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 644
    .line 645
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 646
    .line 647
    .line 648
    move-result-object v1

    .line 649
    if-nez v1, :cond_b

    .line 650
    .line 651
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 652
    .line 653
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 654
    .line 655
    invoke-static {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    if-eqz v4, :cond_a

    .line 660
    .line 661
    iget-object v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 662
    .line 663
    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 664
    .line 665
    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 666
    .line 667
    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 668
    .line 669
    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 670
    .line 671
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 672
    .line 673
    const/4 v6, 0x3

    .line 674
    iput v6, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 675
    .line 676
    invoke-interface {v4, v5, v7}, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    if-ne v4, v8, :cond_9

    .line 681
    .line 682
    return-object v8

    .line 683
    :cond_9
    :goto_5
    check-cast v4, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    .line 684
    .line 685
    if-eqz v4, :cond_a

    .line 686
    .line 687
    new-instance v5, Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 688
    .line 689
    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getHasFavorite()Z

    .line 694
    .line 695
    .line 696
    move-result v9

    .line 697
    invoke-virtual {v4}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-direct {v5, v6, v9, v4}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 702
    .line 703
    .line 704
    goto :goto_6

    .line 705
    :cond_a
    move-object v5, v13

    .line 706
    :goto_6
    invoke-virtual {v1, v5}, Lcom/transsion/shorttv/bean/Subject;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 707
    .line 708
    .line 709
    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 713
    .line 714
    invoke-virtual {v1, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    .line 715
    .line 716
    .line 717
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 718
    .line 719
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 724
    .line 725
    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 729
    .line 730
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v1, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 738
    .line 739
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 740
    .line 741
    invoke-virtual {v1, v2, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 742
    .line 743
    .line 744
    goto :goto_7

    .line 745
    :cond_c
    const/16 v22, 0x4

    .line 746
    .line 747
    const/16 v23, 0x0

    .line 748
    .line 749
    const-string v19, "ShortTvViewModel"

    .line 750
    .line 751
    const-string v20, "\u4e0d\u9700\u8981\u9884\u52a0\u8f7d\u7b2c\u4e00\u96c6"

    .line 752
    .line 753
    const/16 v21, 0x0

    .line 754
    .line 755
    move-object/from16 v18, v2

    .line 756
    .line 757
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    :cond_d
    :goto_7
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 761
    .line 762
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 767
    .line 768
    iget v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 769
    .line 770
    new-instance v4, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    goto :goto_8

    .line 793
    :cond_e
    move-object v15, v1

    .line 794
    :goto_8
    if-eqz v0, :cond_1d

    .line 795
    .line 796
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 797
    .line 798
    if-eqz v1, :cond_f

    .line 799
    .line 800
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockedEps()Ljava/util/List;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    goto :goto_9

    .line 805
    :cond_f
    move-object v1, v13

    .line 806
    :goto_9
    check-cast v1, Ljava/util/Collection;

    .line 807
    .line 808
    if-eqz v1, :cond_12

    .line 809
    .line 810
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    if-eqz v1, :cond_10

    .line 815
    .line 816
    goto :goto_b

    .line 817
    :cond_10
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 818
    .line 819
    :cond_11
    :goto_a
    move-object v2, v1

    .line 820
    move v1, v0

    .line 821
    goto/16 :goto_17

    .line 822
    .line 823
    :cond_12
    :goto_b
    :try_start_3
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 824
    .line 825
    const-string v19, "ShortTvViewModel"

    .line 826
    .line 827
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 828
    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .line 833
    .line 834
    const-string v3, "getShortTvInfo,subjectId:"

    .line 835
    .line 836
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v20

    .line 846
    const/16 v22, 0x4

    .line 847
    .line 848
    const/16 v23, 0x0

    .line 849
    .line 850
    const/16 v21, 0x0

    .line 851
    .line 852
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 856
    .line 857
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->t(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lsr/a;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 862
    .line 863
    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 864
    .line 865
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 866
    .line 867
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 868
    .line 869
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 870
    .line 871
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 872
    .line 873
    const/4 v3, 0x4

    .line 874
    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 875
    .line 876
    const/4 v3, 0x0

    .line 877
    const/4 v5, 0x2

    .line 878
    const/4 v6, 0x0

    .line 879
    move-object/from16 v4, p0

    .line 880
    .line 881
    invoke-static/range {v1 .. v6}, Lsr/a$a;->d(Lsr/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    if-ne v1, v8, :cond_13

    .line 886
    .line 887
    return-object v8

    .line 888
    :cond_13
    :goto_c
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 889
    .line 890
    move v2, v0

    .line 891
    goto :goto_d

    .line 892
    :catch_1
    move-object v1, v15

    .line 893
    :catch_2
    move v2, v0

    .line 894
    move-object v15, v1

    .line 895
    move-object v1, v13

    .line 896
    :goto_d
    if-eqz v1, :cond_14

    .line 897
    .line 898
    :try_start_4
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    .line 903
    .line 904
    goto :goto_e

    .line 905
    :catch_3
    move-exception v0

    .line 906
    move-object v1, v0

    .line 907
    move v0, v2

    .line 908
    move-object v2, v15

    .line 909
    goto :goto_13

    .line 910
    :cond_14
    move-object v0, v13

    .line 911
    :goto_e
    sget-object v1, Ldr/b;->a:Ldr/b;

    .line 912
    .line 913
    invoke-virtual {v1, v0}, Ldr/b;->e(Lcom/transsion/shorttv/bean/Subject;)V

    .line 914
    .line 915
    .line 916
    if-eqz v0, :cond_16

    .line 917
    .line 918
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 919
    .line 920
    if-eqz v1, :cond_15

    .line 921
    .line 922
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    goto :goto_f

    .line 927
    :cond_15
    move-object v1, v13

    .line 928
    :goto_f
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 932
    .line 933
    :cond_16
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 934
    .line 935
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 936
    .line 937
    if-eqz v0, :cond_17

    .line 938
    .line 939
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    goto :goto_10

    .line 944
    :cond_17
    move-object v4, v13

    .line 945
    :goto_10
    invoke-static {v1, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 946
    .line 947
    .line 948
    if-nez v0, :cond_1c

    .line 949
    .line 950
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 951
    .line 952
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 953
    .line 954
    .line 955
    move-result-object v0

    .line 956
    if-eqz v0, :cond_19

    .line 957
    .line 958
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 959
    .line 960
    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 961
    .line 962
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 963
    .line 964
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 965
    .line 966
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 967
    .line 968
    iput-boolean v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 969
    .line 970
    const/4 v3, 0x5

    .line 971
    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 972
    .line 973
    invoke-interface {v0, v1, v7}, Lur/d;->i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 977
    if-ne v0, v8, :cond_18

    .line 978
    .line 979
    return-object v8

    .line 980
    :cond_18
    move v1, v2

    .line 981
    move-object v2, v15

    .line 982
    :goto_11
    :try_start_5
    check-cast v0, Lcom/transsion/shorttv/bean/Subject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 983
    .line 984
    move v2, v1

    .line 985
    goto :goto_15

    .line 986
    :cond_19
    :goto_12
    move-object v0, v13

    .line 987
    goto :goto_15

    .line 988
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 989
    .line 990
    .line 991
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 992
    .line 993
    new-instance v3, Ljava/lang/StringBuilder;

    .line 994
    .line 995
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 996
    .line 997
    .line 998
    const-string v4, "getShortTvInfo, error:"

    .line 999
    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v20

    .line 1010
    const/16 v22, 0x4

    .line 1011
    .line 1012
    const/16 v23, 0x0

    .line 1013
    .line 1014
    const-string v19, "ShortTvViewModel"

    .line 1015
    .line 1016
    const/16 v21, 0x0

    .line 1017
    .line 1018
    invoke-static/range {v18 .. v23}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1022
    .line 1023
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v1

    .line 1027
    if-eqz v1, :cond_1b

    .line 1028
    .line 1029
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1030
    .line 1031
    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1032
    .line 1033
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1034
    .line 1035
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1036
    .line 1037
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1038
    .line 1039
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 1040
    .line 1041
    const/4 v2, 0x6

    .line 1042
    iput v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1043
    .line 1044
    invoke-interface {v1, v3, v7}, Lur/d;->i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    if-ne v1, v8, :cond_1a

    .line 1049
    .line 1050
    return-object v8

    .line 1051
    :cond_1a
    :goto_14
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 1052
    .line 1053
    move v2, v0

    .line 1054
    move-object v0, v1

    .line 1055
    goto :goto_15

    .line 1056
    :cond_1b
    move v2, v0

    .line 1057
    goto :goto_12

    .line 1058
    :cond_1c
    :goto_15
    move v1, v2

    .line 1059
    move-object v2, v0

    .line 1060
    goto :goto_17

    .line 1061
    :cond_1d
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 1062
    .line 1063
    if-nez v1, :cond_11

    .line 1064
    .line 1065
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1066
    .line 1067
    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    if-eqz v1, :cond_1f

    .line 1072
    .line 1073
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1074
    .line 1075
    iput-object v15, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1076
    .line 1077
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1078
    .line 1079
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1080
    .line 1081
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1082
    .line 1083
    iput-boolean v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 1084
    .line 1085
    const/4 v3, 0x7

    .line 1086
    iput v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1087
    .line 1088
    invoke-interface {v1, v2, v7}, Lur/d;->i(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    if-ne v1, v8, :cond_1e

    .line 1093
    .line 1094
    return-object v8

    .line 1095
    :cond_1e
    :goto_16
    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    .line 1096
    .line 1097
    goto/16 :goto_a

    .line 1098
    .line 1099
    :cond_1f
    move v1, v0

    .line 1100
    move-object v2, v13

    .line 1101
    :goto_17
    if-nez v2, :cond_20

    .line 1102
    .line 1103
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1104
    .line 1105
    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1109
    .line 1110
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v0

    .line 1114
    invoke-virtual {v0, v13}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1115
    .line 1116
    .line 1117
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1118
    .line 1119
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v0

    .line 1123
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1128
    .line 1129
    .line 1130
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1131
    .line 1132
    return-object v0

    .line 1133
    :cond_20
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1134
    .line 1135
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1136
    .line 1137
    :try_start_6
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1138
    .line 1139
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 1140
    .line 1141
    const-string v19, "ShortTvViewModel"

    .line 1142
    .line 1143
    const-string v4, "will loadAdUnlockedEps"

    .line 1144
    .line 1145
    filled-new-array {v4}, [Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v20

    .line 1149
    const/16 v22, 0x4

    .line 1150
    .line 1151
    const/16 v23, 0x0

    .line 1152
    .line 1153
    const/16 v21, 0x0

    .line 1154
    .line 1155
    invoke-static/range {v18 .. v23}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1156
    .line 1157
    .line 1158
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->n(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v0

    .line 1162
    if-eqz v0, :cond_23

    .line 1163
    .line 1164
    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1165
    .line 1166
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1167
    .line 1168
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1169
    .line 1170
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1171
    .line 1172
    iput-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 1173
    .line 1174
    const/16 v4, 0x8

    .line 1175
    .line 1176
    iput v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1177
    .line 1178
    invoke-interface {v0, v3, v7}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    if-ne v0, v8, :cond_21

    .line 1183
    .line 1184
    return-object v8

    .line 1185
    :cond_21
    :goto_18
    check-cast v0, Lcom/transsion/shorttv/db/e;

    .line 1186
    .line 1187
    if-eqz v0, :cond_23

    .line 1188
    .line 1189
    invoke-virtual {v0}, Lcom/transsion/shorttv/db/e;->c()Ljava/util/Set;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v0

    .line 1193
    if-eqz v0, :cond_23

    .line 1194
    .line 1195
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 1196
    .line 1197
    const-string v19, "ShortTvViewModel"

    .line 1198
    .line 1199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    .line 1203
    .line 1204
    const-string v4, "loadAdUnlockedEps result="

    .line 1205
    .line 1206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v3

    .line 1216
    filled-new-array {v3}, [Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v20

    .line 1220
    const/16 v22, 0x4

    .line 1221
    .line 1222
    const/16 v23, 0x0

    .line 1223
    .line 1224
    const/16 v21, 0x0

    .line 1225
    .line 1226
    invoke-static/range {v18 .. v23}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1227
    .line 1228
    .line 1229
    move-object v3, v0

    .line 1230
    check-cast v3, Ljava/util/Collection;

    .line 1231
    .line 1232
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v3

    .line 1236
    if-nez v3, :cond_22

    .line 1237
    .line 1238
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    check-cast v0, Ljava/util/Collection;

    .line 1243
    .line 1244
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1245
    .line 1246
    .line 1247
    :cond_22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1248
    .line 1249
    goto :goto_19

    .line 1250
    :cond_23
    move-object v0, v13

    .line 1251
    :goto_19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1255
    goto :goto_1b

    .line 1256
    :goto_1a
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1257
    .line 1258
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    :goto_1b
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    if-eqz v0, :cond_24

    .line 1271
    .line 1272
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 1273
    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    .line 1278
    .line 1279
    const-string v4, "loadAdUnlockedEps error: "

    .line 1280
    .line 1281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v20

    .line 1291
    const/16 v22, 0x4

    .line 1292
    .line 1293
    const/16 v23, 0x0

    .line 1294
    .line 1295
    const-string v19, "ShortTvViewModel"

    .line 1296
    .line 1297
    const/16 v21, 0x0

    .line 1298
    .line 1299
    invoke-static/range {v18 .. v23}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1300
    .line 1301
    .line 1302
    :cond_24
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1303
    .line 1304
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v0

    .line 1308
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v0

    .line 1312
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v0

    .line 1316
    if-nez v0, :cond_26

    .line 1317
    .line 1318
    sget-object v18, Lwf/a;->a:Lwf/a$a;

    .line 1319
    .line 1320
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1321
    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1325
    .line 1326
    .line 1327
    const-string v4, "getShortTvInfo,set newSubject:"

    .line 1328
    .line 1329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v20

    .line 1339
    const/16 v22, 0x4

    .line 1340
    .line 1341
    const/16 v23, 0x0

    .line 1342
    .line 1343
    const-string v19, "ShortTvViewModel"

    .line 1344
    .line 1345
    const/16 v21, 0x0

    .line 1346
    .line 1347
    invoke-static/range {v18 .. v23}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1348
    .line 1349
    .line 1350
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1351
    .line 1352
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    invoke-virtual {v0, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1357
    .line 1358
    .line 1359
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1360
    .line 1361
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->x(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v0

    .line 1365
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v3

    .line 1369
    if-eqz v3, :cond_25

    .line 1370
    .line 1371
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    .line 1372
    .line 1373
    .line 1374
    move-result v3

    .line 1375
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    goto :goto_1c

    .line 1380
    :cond_25
    move-object v3, v13

    .line 1381
    :goto_1c
    invoke-virtual {v0, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1382
    .line 1383
    .line 1384
    :cond_26
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    .line 1385
    .line 1386
    .line 1387
    move-result v0

    .line 1388
    iget-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1389
    .line 1390
    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v3

    .line 1394
    if-eqz v3, :cond_28

    .line 1395
    .line 1396
    iget-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1397
    .line 1398
    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1399
    .line 1400
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1401
    .line 1402
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1403
    .line 1404
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1405
    .line 1406
    iput-boolean v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->Z$0:Z

    .line 1407
    .line 1408
    iput v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    .line 1409
    .line 1410
    const/16 v5, 0x9

    .line 1411
    .line 1412
    iput v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1413
    .line 1414
    invoke-interface {v3, v4, v7}, Lur/d;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v3

    .line 1418
    if-ne v3, v8, :cond_27

    .line 1419
    .line 1420
    return-object v8

    .line 1421
    :cond_27
    :goto_1d
    check-cast v3, Ljava/util/List;

    .line 1422
    .line 1423
    move-object/from16 v25, v3

    .line 1424
    .line 1425
    move-object v3, v2

    .line 1426
    move-object/from16 v2, v25

    .line 1427
    .line 1428
    goto :goto_1e

    .line 1429
    :cond_28
    move-object v3, v2

    .line 1430
    move-object v2, v13

    .line 1431
    :goto_1e
    new-instance v4, Ljava/util/ArrayList;

    .line 1432
    .line 1433
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1434
    .line 1435
    .line 1436
    if-eqz v1, :cond_37

    .line 1437
    .line 1438
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v1

    .line 1442
    if-eqz v1, :cond_2a

    .line 1443
    .line 1444
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    if-eqz v1, :cond_2a

    .line 1449
    .line 1450
    sget-object v1, Lpq/c;->a:Lpq/c;

    .line 1451
    .line 1452
    invoke-virtual {v1}, Lpq/c;->b()Lpq/b;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    invoke-virtual {v1}, Lpq/b;->b()Z

    .line 1457
    .line 1458
    .line 1459
    move-result v1

    .line 1460
    if-eqz v1, :cond_2a

    .line 1461
    .line 1462
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1463
    .line 1464
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v1

    .line 1468
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v5

    .line 1472
    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1473
    .line 1474
    .line 1475
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1476
    .line 1477
    iget-object v5, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1478
    .line 1479
    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1480
    .line 1481
    iput-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1482
    .line 1483
    iput-object v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1484
    .line 1485
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1486
    .line 1487
    iput v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->I$0:I

    .line 1488
    .line 1489
    const/16 v6, 0xa

    .line 1490
    .line 1491
    iput v6, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1492
    .line 1493
    invoke-static {v1, v5, v3, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v1

    .line 1497
    if-ne v1, v8, :cond_29

    .line 1498
    .line 1499
    return-object v8

    .line 1500
    :cond_29
    :goto_1f
    check-cast v1, Lnr/e;

    .line 1501
    .line 1502
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v1

    .line 1506
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 1507
    .line 1508
    .line 1509
    :goto_20
    move-object v1, v4

    .line 1510
    goto :goto_21

    .line 1511
    :cond_2a
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1512
    .line 1513
    invoke-static {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->D(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v5

    .line 1521
    invoke-virtual {v1, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1522
    .line 1523
    .line 1524
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1525
    .line 1526
    goto :goto_20

    .line 1527
    :goto_21
    if-gt v11, v0, :cond_33

    .line 1528
    .line 1529
    move v4, v11

    .line 1530
    :goto_22
    if-eqz v2, :cond_2d

    .line 1531
    .line 1532
    move-object v5, v2

    .line 1533
    check-cast v5, Ljava/lang/Iterable;

    .line 1534
    .line 1535
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v5

    .line 1539
    :cond_2b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v6

    .line 1543
    if-eqz v6, :cond_2c

    .line 1544
    .line 1545
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v6

    .line 1549
    move-object v9, v6

    .line 1550
    check-cast v9, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 1551
    .line 1552
    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 1553
    .line 1554
    .line 1555
    move-result v9

    .line 1556
    if-ne v9, v4, :cond_2b

    .line 1557
    .line 1558
    goto :goto_23

    .line 1559
    :cond_2c
    move-object v6, v13

    .line 1560
    :goto_23
    check-cast v6, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 1561
    .line 1562
    goto :goto_24

    .line 1563
    :cond_2d
    move-object v6, v13

    .line 1564
    :goto_24
    if-ne v4, v11, :cond_30

    .line 1565
    .line 1566
    new-instance v5, Lnr/e;

    .line 1567
    .line 1568
    iget-object v9, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1569
    .line 1570
    const/16 v23, 0xc

    .line 1571
    .line 1572
    const/16 v24, 0x0

    .line 1573
    .line 1574
    const/16 v21, 0x0

    .line 1575
    .line 1576
    const/16 v22, 0x0

    .line 1577
    .line 1578
    move-object/from16 v18, v5

    .line 1579
    .line 1580
    move-object/from16 v19, v9

    .line 1581
    .line 1582
    move/from16 v20, v4

    .line 1583
    .line 1584
    invoke-direct/range {v18 .. v24}, Lnr/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1585
    .line 1586
    .line 1587
    if-eqz v6, :cond_2e

    .line 1588
    .line 1589
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    .line 1590
    .line 1591
    .line 1592
    move-result v9

    .line 1593
    goto :goto_25

    .line 1594
    :cond_2e
    move v9, v12

    .line 1595
    :goto_25
    invoke-virtual {v5, v9}, Lnr/e;->g(I)V

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v5}, Lnr/e;->b()I

    .line 1599
    .line 1600
    .line 1601
    move-result v9

    .line 1602
    const/4 v14, 0x5

    .line 1603
    if-ne v9, v14, :cond_2f

    .line 1604
    .line 1605
    goto :goto_26

    .line 1606
    :cond_2f
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v6

    .line 1610
    :goto_26
    invoke-virtual {v5, v6}, Lnr/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 1611
    .line 1612
    .line 1613
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    .line 1615
    .line 1616
    const/4 v14, 0x5

    .line 1617
    goto :goto_29

    .line 1618
    :cond_30
    new-instance v5, Lnr/e;

    .line 1619
    .line 1620
    iget-object v9, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1621
    .line 1622
    const/16 v23, 0xc

    .line 1623
    .line 1624
    const/16 v24, 0x0

    .line 1625
    .line 1626
    const/16 v21, 0x0

    .line 1627
    .line 1628
    const/16 v22, 0x0

    .line 1629
    .line 1630
    move-object/from16 v18, v5

    .line 1631
    .line 1632
    move-object/from16 v19, v9

    .line 1633
    .line 1634
    move/from16 v20, v4

    .line 1635
    .line 1636
    invoke-direct/range {v18 .. v24}, Lnr/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1637
    .line 1638
    .line 1639
    if-eqz v6, :cond_31

    .line 1640
    .line 1641
    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    .line 1642
    .line 1643
    .line 1644
    move-result v9

    .line 1645
    goto :goto_27

    .line 1646
    :cond_31
    move v9, v12

    .line 1647
    :goto_27
    invoke-virtual {v5, v9}, Lnr/e;->g(I)V

    .line 1648
    .line 1649
    .line 1650
    invoke-virtual {v5}, Lnr/e;->b()I

    .line 1651
    .line 1652
    .line 1653
    move-result v9

    .line 1654
    const/4 v14, 0x5

    .line 1655
    if-ne v9, v14, :cond_32

    .line 1656
    .line 1657
    goto :goto_28

    .line 1658
    :cond_32
    move-object v6, v13

    .line 1659
    :goto_28
    invoke-virtual {v5, v6}, Lnr/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 1660
    .line 1661
    .line 1662
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    .line 1664
    .line 1665
    :goto_29
    if-eq v4, v0, :cond_33

    .line 1666
    .line 1667
    add-int/2addr v4, v11

    .line 1668
    goto/16 :goto_22

    .line 1669
    .line 1670
    :cond_33
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v0

    .line 1674
    if-nez v0, :cond_36

    .line 1675
    .line 1676
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1677
    .line 1678
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->p(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Lcom/transsion/shorttv/db/ShortTvFavoriteDao;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v0

    .line 1682
    if-eqz v0, :cond_35

    .line 1683
    .line 1684
    iget-object v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1685
    .line 1686
    iput-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$0:Ljava/lang/Object;

    .line 1687
    .line 1688
    iput-object v3, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$1:Ljava/lang/Object;

    .line 1689
    .line 1690
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$2:Ljava/lang/Object;

    .line 1691
    .line 1692
    iput-object v13, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->L$3:Ljava/lang/Object;

    .line 1693
    .line 1694
    const/16 v4, 0xb

    .line 1695
    .line 1696
    iput v4, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->label:I

    .line 1697
    .line 1698
    invoke-interface {v0, v2, v7}, Lcom/transsion/shorttv/db/ShortTvFavoriteDao;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v0

    .line 1702
    if-ne v0, v8, :cond_34

    .line 1703
    .line 1704
    return-object v8

    .line 1705
    :cond_34
    :goto_2a
    check-cast v0, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;

    .line 1706
    .line 1707
    if-eqz v0, :cond_35

    .line 1708
    .line 1709
    new-instance v13, Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    .line 1710
    .line 1711
    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteNum()Ljava/lang/String;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v2

    .line 1715
    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getHasFavorite()Z

    .line 1716
    .line 1717
    .line 1718
    move-result v4

    .line 1719
    invoke-virtual {v0}, Lcom/transsion/shorttv/db/ShortTvFavoriteStateBean;->getFavoriteTime()Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v0

    .line 1723
    invoke-direct {v13, v2, v4, v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    :cond_35
    invoke-virtual {v3, v13}, Lcom/transsion/shorttv/bean/Subject;->setShortTVFavInfo(Lcom/transsion/shorttv/bean/ShortTVFavInfo;)V

    .line 1727
    .line 1728
    .line 1729
    :cond_36
    move-object v4, v1

    .line 1730
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1731
    .line 1732
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v0

    .line 1736
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1737
    .line 1738
    iget v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 1739
    .line 1740
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1746
    .line 1747
    .line 1748
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1752
    .line 1753
    .line 1754
    move-result-object v1

    .line 1755
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v2

    .line 1759
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_2d

    .line 1763
    .line 1764
    :cond_37
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$dataSource:Ljava/lang/Integer;

    .line 1765
    .line 1766
    if-nez v0, :cond_38

    .line 1767
    .line 1768
    goto :goto_2b

    .line 1769
    :cond_38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1770
    .line 1771
    .line 1772
    move-result v0

    .line 1773
    if-ne v0, v11, :cond_39

    .line 1774
    .line 1775
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1776
    .line 1777
    return-object v0

    .line 1778
    :cond_39
    :goto_2b
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 1779
    .line 1780
    if-eqz v2, :cond_3a

    .line 1781
    .line 1782
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1783
    .line 1784
    .line 1785
    move-result v1

    .line 1786
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 1787
    .line 1788
    .line 1789
    move-result-object v13

    .line 1790
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1791
    .line 1792
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1793
    .line 1794
    .line 1795
    const-string v3, "\u65e0\u7f51\uff0c\u663e\u793a\u4e0b\u8f7d\u6570\u636e, "

    .line 1796
    .line 1797
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v15

    .line 1807
    const/16 v17, 0x4

    .line 1808
    .line 1809
    const/16 v18, 0x0

    .line 1810
    .line 1811
    const-string v14, "ShortTvViewModel"

    .line 1812
    .line 1813
    const/16 v16, 0x0

    .line 1814
    .line 1815
    move-object v13, v0

    .line 1816
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1817
    .line 1818
    .line 1819
    if-eqz v2, :cond_3c

    .line 1820
    .line 1821
    check-cast v2, Ljava/lang/Iterable;

    .line 1822
    .line 1823
    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1$invokeSuspend$$inlined$sortedBy$1;

    .line 1824
    .line 1825
    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1$invokeSuspend$$inlined$sortedBy$1;-><init>()V

    .line 1826
    .line 1827
    .line 1828
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    if-eqz v0, :cond_3c

    .line 1833
    .line 1834
    check-cast v0, Ljava/lang/Iterable;

    .line 1835
    .line 1836
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1837
    .line 1838
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v0

    .line 1842
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v2

    .line 1846
    if-eqz v2, :cond_3b

    .line 1847
    .line 1848
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v2

    .line 1852
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 1853
    .line 1854
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 1855
    .line 1856
    .line 1857
    move-result v15

    .line 1858
    new-instance v3, Lnr/e;

    .line 1859
    .line 1860
    const/16 v18, 0xc

    .line 1861
    .line 1862
    const/16 v19, 0x0

    .line 1863
    .line 1864
    const/16 v16, 0x0

    .line 1865
    .line 1866
    const/16 v17, 0x0

    .line 1867
    .line 1868
    move-object v13, v3

    .line 1869
    move-object v14, v1

    .line 1870
    invoke-direct/range {v13 .. v19}, Lnr/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDownloadStatus()I

    .line 1874
    .line 1875
    .line 1876
    move-result v5

    .line 1877
    invoke-virtual {v3, v5}, Lnr/e;->g(I)V

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v3, v2}, Lnr/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 1881
    .line 1882
    .line 1883
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1884
    .line 1885
    .line 1886
    goto :goto_2c

    .line 1887
    :cond_3b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1888
    .line 1889
    :cond_3c
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1890
    .line 1891
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->o(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Ljava/util/HashMap;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v0

    .line 1895
    iget-object v1, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$subjectId:Ljava/lang/String;

    .line 1896
    .line 1897
    iget v2, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->$ep:I

    .line 1898
    .line 1899
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1902
    .line 1903
    .line 1904
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    .line 1906
    .line 1907
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v1

    .line 1914
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v2

    .line 1918
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    :goto_2d
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1922
    .line 1923
    invoke-virtual {v0, v12}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->g1(Z)V

    .line 1924
    .line 1925
    .line 1926
    iget-object v0, v7, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getShortTvEpisodes$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 1927
    .line 1928
    invoke-static {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v0

    .line 1932
    invoke-virtual {v0, v4}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 1933
    .line 1934
    .line 1935
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1936
    .line 1937
    return-object v0

    .line 1938
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
