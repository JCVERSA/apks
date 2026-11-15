.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$downloadUGCVideo$1"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0x83,
        0x8d,
        0x9d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $idType:Ljava/lang/String;

.field final synthetic $ops:Ljava/lang/String;

.field final synthetic $resourceId:Ljava/lang/String;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field final synthetic $videoResourceId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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
    new-instance v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v9, p2

    .line 21
    invoke-direct/range {v0 .. v9}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v15

    .line 7
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    .line 8
    .line 9
    const-string v13, " -- idType = "

    .line 10
    .line 11
    const-string v12, " -- collectionId = "

    .line 12
    .line 13
    const-string v11, " -- ugcVideoId = "

    .line 14
    .line 15
    const-string v10, " -- videoResourceId = "

    .line 16
    .line 17
    const-string v9, " -- resourceId = "

    .line 18
    .line 19
    const-string v8, " --> downloadUGCVideo() --> \u8bf7\u6c42\u63a5\u53e3\u83b7\u53d6\u5b57\u5e55\u5217\u8868\u5e76\u8fdb\u884c\u5904\u7406 --> subjectId = "

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    const/4 v6, 0x2

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    if-eq v0, v6, :cond_1

    .line 29
    .line 30
    if-ne v0, v7, :cond_0

    .line 31
    .line 32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    move-object/from16 v23, v9

    .line 49
    .line 50
    move-object/from16 v24, v10

    .line 51
    .line 52
    move-object/from16 v25, v11

    .line 53
    .line 54
    move-object/from16 v26, v12

    .line 55
    .line 56
    move-object/from16 v27, v13

    .line 57
    .line 58
    move-object v1, v15

    .line 59
    move-object v15, v8

    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object/from16 v23, v9

    .line 64
    .line 65
    move-object/from16 v24, v10

    .line 66
    .line 67
    move-object/from16 v25, v11

    .line 68
    .line 69
    move-object/from16 v26, v12

    .line 70
    .line 71
    move-object/from16 v27, v13

    .line 72
    .line 73
    move-object v1, v15

    .line 74
    move-object v15, v8

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_2
    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v3, Ljava/lang/String;

    .line 92
    .line 93
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v5, Ljava/lang/String;

    .line 100
    .line 101
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v6, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v7, Ljava/lang/String;

    .line 108
    .line 109
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    .line 112
    move-object/from16 v18, v0

    .line 113
    .line 114
    move-object v0, v5

    .line 115
    move-object v5, v4

    .line 116
    move-object v4, v3

    .line 117
    move-object v3, v1

    .line 118
    move-object/from16 v1, p1

    .line 119
    .line 120
    move-object/from16 v28, v7

    .line 121
    .line 122
    move-object v7, v2

    .line 123
    move-object/from16 v2, v28

    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 133
    .line 134
    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    .line 139
    .line 140
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    .line 143
    .line 144
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ops:Ljava/lang/String;

    .line 149
    .line 150
    :try_start_2
    sget-object v19, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 151
    .line 152
    sget-object v19, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 153
    .line 154
    invoke-static/range {v19 .. v19}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;

    .line 155
    .line 156
    .line 157
    move-result-object v19

    .line 158
    sget-object v20, Lgg/a;->a:Lgg/a$a;

    .line 159
    .line 160
    invoke-virtual/range {v20 .. v20}, Lgg/a$a;->a()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v20

    .line 164
    iput-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    .line 171
    .line 172
    iput-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    .line 177
    .line 178
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    .line 179
    .line 180
    move-object/from16 p1, v1

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    iput v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    .line 184
    .line 185
    move-object/from16 v18, p1

    .line 186
    .line 187
    move-object/from16 v1, v19

    .line 188
    .line 189
    move-object/from16 v19, v2

    .line 190
    .line 191
    move-object v2, v0

    .line 192
    move-object/from16 v21, v3

    .line 193
    .line 194
    move-object v3, v7

    .line 195
    move-object/from16 v22, v4

    .line 196
    .line 197
    move-object v4, v6

    .line 198
    move-object/from16 v16, v5

    .line 199
    .line 200
    move-object/from16 p1, v7

    .line 201
    .line 202
    const/4 v7, 0x0

    .line 203
    move-object/from16 v5, v20

    .line 204
    .line 205
    move-object/from16 v17, v6

    .line 206
    .line 207
    move-object/from16 v6, p0

    .line 208
    .line 209
    invoke-interface/range {v1 .. v6}, Lot/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-ne v1, v15, :cond_4

    .line 214
    .line 215
    return-object v15

    .line 216
    :cond_4
    move-object/from16 v6, p1

    .line 217
    .line 218
    move-object v2, v0

    .line 219
    move-object/from16 v5, v16

    .line 220
    .line 221
    move-object/from16 v0, v17

    .line 222
    .line 223
    move-object/from16 v3, v19

    .line 224
    .line 225
    move-object/from16 v7, v21

    .line 226
    .line 227
    move-object/from16 v4, v22

    .line 228
    .line 229
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    .line 231
    move-object/from16 v17, v15

    .line 232
    .line 233
    :try_start_3
    sget-object v15, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    .line 234
    .line 235
    sget-object v19, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 236
    .line 237
    move-object/from16 p1, v3

    .line 238
    .line 239
    invoke-static/range {v19 .. v19}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 243
    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v0, " --> subtitles = "

    .line 288
    .line 289
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v15, v0}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 300
    .line 301
    .line 302
    const/4 v15, 0x0

    .line 303
    move-object/from16 v14, p0

    .line 304
    .line 305
    :try_start_5
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    .line 308
    .line 309
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    .line 310
    .line 311
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    .line 312
    .line 313
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    .line 314
    .line 315
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    .line 316
    .line 317
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object v15, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    .line 320
    .line 321
    const/4 v0, 0x2

    .line 322
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 323
    .line 324
    const/4 v6, 0x0

    .line 325
    const/4 v0, 0x4

    .line 326
    const/16 v16, 0x0

    .line 327
    .line 328
    const/16 v20, 0x0

    .line 329
    .line 330
    move-object v3, v1

    .line 331
    move-object/from16 v1, v19

    .line 332
    .line 333
    move-object/from16 v19, v2

    .line 334
    .line 335
    move-object v2, v3

    .line 336
    move-object/from16 v3, p1

    .line 337
    .line 338
    move-object/from16 v21, v7

    .line 339
    .line 340
    move v7, v0

    .line 341
    move-object v15, v8

    .line 342
    move/from16 v8, v16

    .line 343
    .line 344
    move-object/from16 v23, v9

    .line 345
    .line 346
    move/from16 v9, v20

    .line 347
    .line 348
    move-object/from16 v24, v10

    .line 349
    .line 350
    move-object/from16 v10, v19

    .line 351
    .line 352
    move-object/from16 v25, v11

    .line 353
    .line 354
    move-object/from16 v11, v21

    .line 355
    .line 356
    move-object/from16 v26, v12

    .line 357
    .line 358
    move-object/from16 v12, v18

    .line 359
    .line 360
    move-object/from16 v27, v13

    .line 361
    .line 362
    move-object/from16 v13, p0

    .line 363
    .line 364
    :try_start_6
    invoke-static/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 368
    move-object/from16 v1, v17

    .line 369
    .line 370
    if-ne v0, v1, :cond_5

    .line 371
    .line 372
    return-object v1

    .line 373
    :cond_5
    :goto_1
    :try_start_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 374
    .line 375
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 379
    goto :goto_5

    .line 380
    :catchall_1
    move-exception v0

    .line 381
    goto :goto_4

    .line 382
    :catchall_2
    move-exception v0

    .line 383
    :goto_2
    move-object/from16 v1, v17

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :catchall_3
    move-exception v0

    .line 387
    :goto_3
    move-object v15, v8

    .line 388
    move-object/from16 v23, v9

    .line 389
    .line 390
    move-object/from16 v24, v10

    .line 391
    .line 392
    move-object/from16 v25, v11

    .line 393
    .line 394
    move-object/from16 v26, v12

    .line 395
    .line 396
    move-object/from16 v27, v13

    .line 397
    .line 398
    goto :goto_2

    .line 399
    :catchall_4
    move-exception v0

    .line 400
    move-object/from16 v14, p0

    .line 401
    .line 402
    goto :goto_3

    .line 403
    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 404
    .line 405
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    :goto_5
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$subjectId:Ljava/lang/String;

    .line 414
    .line 415
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resourceId:Ljava/lang/String;

    .line 416
    .line 417
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$videoResourceId:Ljava/lang/String;

    .line 418
    .line 419
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$ugcVideoId:Ljava/lang/String;

    .line 420
    .line 421
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$collectionId:Ljava/lang/String;

    .line 422
    .line 423
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$idType:Ljava/lang/String;

    .line 424
    .line 425
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 426
    .line 427
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    if-nez v0, :cond_6

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_6
    sget-object v9, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    .line 435
    .line 436
    sget-object v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 437
    .line 438
    invoke-static {v10}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v10

    .line 442
    new-instance v11, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    move-object/from16 v2, v23

    .line 457
    .line 458
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    move-object/from16 v2, v24

    .line 465
    .line 466
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    move-object/from16 v2, v25

    .line 473
    .line 474
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    move-object/from16 v2, v26

    .line 481
    .line 482
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    move-object/from16 v2, v27

    .line 489
    .line 490
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v2, " - --> \u8bf7\u6c42\u63a5\u53e3\u53d1\u751f\u5f02\u5e38 --> Throwable.it = "

    .line 497
    .line 498
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v9, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    new-instance v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1$2$1;

    .line 516
    .line 517
    const/4 v3, 0x0

    .line 518
    invoke-direct {v2, v8, v3}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 519
    .line 520
    .line 521
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$0:Ljava/lang/Object;

    .line 522
    .line 523
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$1:Ljava/lang/Object;

    .line 524
    .line 525
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$2:Ljava/lang/Object;

    .line 526
    .line 527
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$3:Ljava/lang/Object;

    .line 528
    .line 529
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$4:Ljava/lang/Object;

    .line 530
    .line 531
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$5:Ljava/lang/Object;

    .line 532
    .line 533
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$6:Ljava/lang/Object;

    .line 534
    .line 535
    iput-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->L$7:Ljava/lang/Object;

    .line 536
    .line 537
    const/4 v3, 0x3

    .line 538
    iput v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;->label:I

    .line 539
    .line 540
    invoke-static {v0, v2, v14}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    if-ne v0, v1, :cond_7

    .line 545
    .line 546
    return-object v1

    .line 547
    :cond_7
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 548
    .line 549
    return-object v0
.end method
