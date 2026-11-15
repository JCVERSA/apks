.class final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$a;
    }
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
    c = "com.transsion.subtitle_download.task.GetInStationSubtitleListTask$download$1"
    f = "GetInStationSubtitleListTask.kt"
    l = {
        0x43,
        0x48,
        0x49,
        0x4e,
        0x54,
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $ep:I

.field final synthetic $episode:I

.field final synthetic $ops:Ljava/lang/String;

.field final synthetic $resStreamType:I

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

.field final synthetic $se:I

.field final synthetic $shortTvMiniId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $subjectName:Ljava/lang/String;

.field final synthetic $videoResourceId:Ljava/lang/String;

.field I$0:I

.field I$1:I

.field I$2:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    .line 14
    .line 15
    iput-object p8, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iput-object p9, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    .line 18
    .line 19
    iput p10, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    .line 20
    .line 21
    iput-object p11, p0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15
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
    move-object v0, p0

    .line 2
    new-instance v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;

    .line 3
    .line 4
    iget v2, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    .line 5
    .line 6
    iget-object v3, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v5, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    .line 11
    .line 12
    iget v6, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    .line 13
    .line 14
    iget-object v7, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    .line 15
    .line 16
    iget v8, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    .line 17
    .line 18
    iget-object v9, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 19
    .line 20
    iget-object v10, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    .line 21
    .line 22
    iget v11, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    .line 23
    .line 24
    iget-object v12, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    .line 25
    .line 26
    move-object v1, v14

    .line 27
    move-object/from16 v13, p2

    .line 28
    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

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
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    .line 8
    .line 9
    const-string v13, ", shortTvMiniId:"

    .line 10
    .line 11
    const-string v12, " -- ep = "

    .line 12
    .line 13
    const-string v11, " -- resourceId = "

    .line 14
    .line 15
    const-string v10, " --> download() --> \u8bf7\u6c42\u63a5\u53e3\u83b7\u53d6\u5b57\u5e55\u5217\u8868\u5e76\u8fdb\u884c\u5904\u7406 --> subjectId = "

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_d

    .line 32
    .line 33
    :pswitch_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v22, v10

    .line 37
    .line 38
    move-object/from16 v23, v11

    .line 39
    .line 40
    move-object/from16 v24, v12

    .line 41
    .line 42
    move-object/from16 v25, v13

    .line 43
    .line 44
    goto/16 :goto_a

    .line 45
    .line 46
    :catchall_0
    move-exception v0

    .line 47
    move-object/from16 v22, v10

    .line 48
    .line 49
    move-object/from16 v23, v11

    .line 50
    .line 51
    move-object/from16 v24, v12

    .line 52
    .line 53
    move-object/from16 v25, v13

    .line 54
    .line 55
    goto/16 :goto_b

    .line 56
    .line 57
    :pswitch_2
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 58
    .line 59
    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 60
    .line 61
    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 62
    .line 63
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v3, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v6, Ljava/lang/String;

    .line 78
    .line 79
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v7, Ljava/lang/String;

    .line 82
    .line 83
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v8, Ljava/lang/String;

    .line 86
    .line 87
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    move-object/from16 v20, v10

    .line 91
    .line 92
    move-object/from16 v21, v11

    .line 93
    .line 94
    move-object/from16 v18, v12

    .line 95
    .line 96
    move-object/from16 v17, v13

    .line 97
    .line 98
    move v12, v1

    .line 99
    move-object/from16 v1, p1

    .line 100
    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :pswitch_3
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 104
    .line 105
    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 106
    .line 107
    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 108
    .line 109
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v3, Ljava/lang/String;

    .line 112
    .line 113
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v4, Ljava/lang/String;

    .line 116
    .line 117
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 120
    .line 121
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v6, Ljava/lang/String;

    .line 124
    .line 125
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v7, Ljava/lang/String;

    .line 128
    .line 129
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v8, Ljava/lang/String;

    .line 132
    .line 133
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    move-object/from16 v20, v10

    .line 137
    .line 138
    move-object/from16 v21, v11

    .line 139
    .line 140
    move-object/from16 v18, v12

    .line 141
    .line 142
    move-object/from16 v17, v13

    .line 143
    .line 144
    move-object v13, v3

    .line 145
    move v3, v2

    .line 146
    move-object/from16 v2, p1

    .line 147
    .line 148
    goto/16 :goto_5

    .line 149
    .line 150
    :pswitch_4
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 151
    .line 152
    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 153
    .line 154
    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 155
    .line 156
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v3, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v4, Ljava/lang/String;

    .line 163
    .line 164
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 167
    .line 168
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v6, Ljava/lang/String;

    .line 171
    .line 172
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v7, Ljava/lang/String;

    .line 175
    .line 176
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v8, Ljava/lang/String;

    .line 179
    .line 180
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    .line 182
    .line 183
    move-object/from16 v20, v10

    .line 184
    .line 185
    move-object/from16 v21, v11

    .line 186
    .line 187
    move-object/from16 v18, v12

    .line 188
    .line 189
    move-object/from16 v17, v13

    .line 190
    .line 191
    move-object v13, v3

    .line 192
    move v3, v2

    .line 193
    move-object/from16 v2, p1

    .line 194
    .line 195
    goto/16 :goto_7

    .line 196
    .line 197
    :pswitch_5
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 198
    .line 199
    iget v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 200
    .line 201
    iget v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 202
    .line 203
    iget-object v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v3, Ljava/lang/String;

    .line 206
    .line 207
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v4, Ljava/lang/String;

    .line 210
    .line 211
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v6, Ljava/lang/String;

    .line 218
    .line 219
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v7, Ljava/lang/String;

    .line 222
    .line 223
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v8, Ljava/lang/String;

    .line 226
    .line 227
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .line 229
    .line 230
    move-object/from16 v20, v10

    .line 231
    .line 232
    move-object/from16 v21, v11

    .line 233
    .line 234
    move-object/from16 v18, v12

    .line 235
    .line 236
    move-object/from16 v17, v13

    .line 237
    .line 238
    move-object v13, v3

    .line 239
    move v3, v2

    .line 240
    move-object/from16 v2, p1

    .line 241
    .line 242
    goto/16 :goto_8

    .line 243
    .line 244
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v0, Lkotlinx/coroutines/n0;

    .line 250
    .line 251
    iget v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    .line 252
    .line 253
    iget-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    .line 254
    .line 255
    iget-object v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$videoResourceId:Ljava/lang/String;

    .line 256
    .line 257
    iget-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    .line 258
    .line 259
    iget v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$episode:I

    .line 260
    .line 261
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    .line 262
    .line 263
    iget v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    .line 264
    .line 265
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 266
    .line 267
    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectName:Ljava/lang/String;

    .line 268
    .line 269
    iget v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$se:I

    .line 270
    .line 271
    move-object/from16 v17, v13

    .line 272
    .line 273
    iget-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ops:Ljava/lang/String;

    .line 274
    .line 275
    :try_start_5
    sget-object v18, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 276
    .line 277
    move-object/from16 v18, v12

    .line 278
    .line 279
    const/4 v12, 0x2

    .line 280
    if-eq v0, v12, :cond_6

    .line 281
    .line 282
    const/4 v12, 0x3

    .line 283
    if-eq v0, v12, :cond_1

    .line 284
    .line 285
    :try_start_6
    sget-object v12, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 286
    .line 287
    invoke-static {v12}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    sget-object v19, Lgg/a;->a:Lgg/a$a;

    .line 292
    .line 293
    invoke-virtual/range {v19 .. v19}, Lgg/a$a;->a()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v19

    .line 297
    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 300
    .line 301
    iput-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 302
    .line 303
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 304
    .line 305
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 306
    .line 307
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 308
    .line 309
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 310
    .line 311
    iput v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 312
    .line 313
    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 314
    .line 315
    move-object/from16 v20, v1

    .line 316
    .line 317
    const/4 v1, 0x4

    .line 318
    iput v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 319
    .line 320
    move-object/from16 v21, v11

    .line 321
    .line 322
    move-object/from16 v11, v20

    .line 323
    .line 324
    move-object v1, v12

    .line 325
    move-object v12, v2

    .line 326
    move-object/from16 v2, v19

    .line 327
    .line 328
    move-object/from16 p1, v12

    .line 329
    .line 330
    move v12, v3

    .line 331
    move-object v3, v8

    .line 332
    move-object/from16 v20, v10

    .line 333
    .line 334
    move-object v10, v6

    .line 335
    move-object/from16 v6, p0

    .line 336
    .line 337
    :try_start_7
    invoke-interface/range {v1 .. v6}, Lot/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    if-ne v1, v15, :cond_0

    .line 342
    .line 343
    return-object v15

    .line 344
    :cond_0
    move-object/from16 v5, p1

    .line 345
    .line 346
    move v2, v0

    .line 347
    move v0, v9

    .line 348
    move-object v6, v10

    .line 349
    move-object v4, v11

    .line 350
    move-object v3, v13

    .line 351
    :goto_0
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 352
    .line 353
    move v9, v0

    .line 354
    move-object v0, v7

    .line 355
    move v7, v2

    .line 356
    move-object v2, v1

    .line 357
    move/from16 v26, v12

    .line 358
    .line 359
    move-object v12, v3

    .line 360
    move-object v3, v5

    .line 361
    move-object v5, v8

    .line 362
    move/from16 v8, v26

    .line 363
    .line 364
    move-object/from16 v27, v6

    .line 365
    .line 366
    move-object v6, v4

    .line 367
    move-object/from16 v4, v27

    .line 368
    .line 369
    goto/16 :goto_9

    .line 370
    .line 371
    :catchall_1
    move-exception v0

    .line 372
    :goto_1
    move-object/from16 v25, v17

    .line 373
    .line 374
    :goto_2
    move-object/from16 v24, v18

    .line 375
    .line 376
    :goto_3
    move-object/from16 v22, v20

    .line 377
    .line 378
    :goto_4
    move-object/from16 v23, v21

    .line 379
    .line 380
    goto/16 :goto_b

    .line 381
    .line 382
    :catchall_2
    move-exception v0

    .line 383
    move-object/from16 v20, v10

    .line 384
    .line 385
    move-object/from16 v21, v11

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_1
    move-object/from16 v20, v10

    .line 389
    .line 390
    move-object/from16 v21, v11

    .line 391
    .line 392
    move-object v11, v1

    .line 393
    move-object v1, v2

    .line 394
    move-object v10, v6

    .line 395
    move v2, v12

    .line 396
    move v12, v3

    .line 397
    sget-object v3, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 398
    .line 399
    invoke-virtual {v3}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->h()Lcom/transsion/subtitle_download/bean/SubtitleAppType;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    sget-object v4, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$a;->a:[I

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    aget v3, v4, v3

    .line 410
    .line 411
    const/4 v4, 0x1

    .line 412
    if-eq v3, v4, :cond_4

    .line 413
    .line 414
    const/4 v4, 0x2

    .line 415
    if-ne v3, v4, :cond_3

    .line 416
    .line 417
    sget-object v3, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 418
    .line 419
    invoke-static {v3}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    sget-object v4, Lgg/a;->a:Lgg/a$a;

    .line 424
    .line 425
    invoke-virtual {v4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v4

    .line 429
    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 432
    .line 433
    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 434
    .line 435
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 436
    .line 437
    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 438
    .line 439
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 440
    .line 441
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 442
    .line 443
    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 444
    .line 445
    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 446
    .line 447
    iput v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    .line 448
    .line 449
    invoke-interface {v3, v4, v7, v14}, Lot/a;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    if-ne v2, v15, :cond_2

    .line 454
    .line 455
    return-object v15

    .line 456
    :cond_2
    move v3, v0

    .line 457
    move-object v5, v1

    .line 458
    move v0, v9

    .line 459
    move-object v6, v10

    .line 460
    move-object v4, v11

    .line 461
    move v1, v12

    .line 462
    :goto_5
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 463
    .line 464
    :goto_6
    move v9, v0

    .line 465
    move-object v0, v7

    .line 466
    move-object v12, v13

    .line 467
    move v7, v3

    .line 468
    move-object v3, v5

    .line 469
    move-object v5, v8

    .line 470
    move v8, v1

    .line 471
    move-object/from16 v26, v6

    .line 472
    .line 473
    move-object v6, v4

    .line 474
    move-object/from16 v4, v26

    .line 475
    .line 476
    goto/16 :goto_9

    .line 477
    .line 478
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 479
    .line 480
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 481
    .line 482
    .line 483
    throw v0

    .line 484
    :cond_4
    sget-object v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 485
    .line 486
    invoke-static {v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    sget-object v3, Lgg/a;->a:Lgg/a$a;

    .line 491
    .line 492
    invoke-virtual {v3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 497
    .line 498
    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 499
    .line 500
    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 501
    .line 502
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 503
    .line 504
    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 505
    .line 506
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 507
    .line 508
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 509
    .line 510
    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 511
    .line 512
    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 513
    .line 514
    const/4 v4, 0x2

    .line 515
    iput v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    .line 516
    .line 517
    invoke-interface {v2, v3, v7, v14}, Lot/a;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    if-ne v2, v15, :cond_5

    .line 522
    .line 523
    return-object v15

    .line 524
    :cond_5
    move v3, v0

    .line 525
    move-object v5, v1

    .line 526
    move v0, v9

    .line 527
    move-object v6, v10

    .line 528
    move-object v4, v11

    .line 529
    move v1, v12

    .line 530
    :goto_7
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_6
    move v12, v3

    .line 534
    move-object/from16 v20, v10

    .line 535
    .line 536
    move-object/from16 v21, v11

    .line 537
    .line 538
    move-object v11, v1

    .line 539
    move-object v1, v2

    .line 540
    move-object v10, v6

    .line 541
    sget-object v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 542
    .line 543
    invoke-static {v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    sget-object v3, Lgg/a;->a:Lgg/a$a;

    .line 548
    .line 549
    invoke-virtual {v3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v3

    .line 553
    iput-object v8, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 554
    .line 555
    iput-object v7, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 556
    .line 557
    iput-object v10, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 558
    .line 559
    iput-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 560
    .line 561
    iput-object v11, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 562
    .line 563
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 564
    .line 565
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$0:I

    .line 566
    .line 567
    iput v12, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$1:I

    .line 568
    .line 569
    iput v9, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->I$2:I

    .line 570
    .line 571
    const/4 v5, 0x1

    .line 572
    iput v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    .line 573
    .line 574
    invoke-interface {v2, v3, v8, v4, v14}, Lot/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    if-ne v2, v15, :cond_7

    .line 579
    .line 580
    return-object v15

    .line 581
    :cond_7
    move v3, v0

    .line 582
    move-object v5, v1

    .line 583
    move v0, v9

    .line 584
    move-object v6, v10

    .line 585
    move-object v4, v11

    .line 586
    move v1, v12

    .line 587
    :goto_8
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 588
    .line 589
    goto :goto_6

    .line 590
    :goto_9
    sget-object v1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    .line 591
    .line 592
    sget-object v10, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 593
    .line 594
    invoke-static {v10}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v11

    .line 598
    new-instance v13, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 604
    .line 605
    .line 606
    move-object/from16 v11, v20

    .line 607
    .line 608
    :try_start_8
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 612
    .line 613
    .line 614
    move-object/from16 v20, v11

    .line 615
    .line 616
    move-object/from16 v11, v21

    .line 617
    .line 618
    :try_start_9
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 622
    .line 623
    .line 624
    move-object/from16 v21, v11

    .line 625
    .line 626
    move-object/from16 v11, v18

    .line 627
    .line 628
    :try_start_a
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 632
    .line 633
    .line 634
    move-object/from16 v18, v11

    .line 635
    .line 636
    :try_start_b
    const-string v11, ",resStreamType:"

    .line 637
    .line 638
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 642
    .line 643
    .line 644
    move-object/from16 v11, v17

    .line 645
    .line 646
    :try_start_c
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    const-string v0, " --> subtitles = "

    .line 653
    .line 654
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-virtual {v1, v0}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    const/4 v13, 0x0

    .line 668
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 669
    .line 670
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 671
    .line 672
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 673
    .line 674
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 675
    .line 676
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 677
    .line 678
    iput-object v13, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 679
    .line 680
    const/4 v0, 0x5

    .line 681
    iput v0, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 682
    .line 683
    const/4 v0, 0x0

    .line 684
    const/16 v16, 0x0

    .line 685
    .line 686
    move-object v1, v10

    .line 687
    move-object/from16 v22, v20

    .line 688
    .line 689
    move-object v10, v0

    .line 690
    move-object/from16 v17, v11

    .line 691
    .line 692
    move-object/from16 v23, v21

    .line 693
    .line 694
    move-object/from16 v11, v16

    .line 695
    .line 696
    move-object/from16 v24, v18

    .line 697
    .line 698
    move-object/from16 v25, v17

    .line 699
    .line 700
    move-object/from16 v13, p0

    .line 701
    .line 702
    :try_start_d
    invoke-static/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    if-ne v0, v15, :cond_8

    .line 707
    .line 708
    return-object v15

    .line 709
    :cond_8
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 710
    .line 711
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 715
    goto :goto_c

    .line 716
    :catchall_3
    move-exception v0

    .line 717
    goto :goto_b

    .line 718
    :catchall_4
    move-exception v0

    .line 719
    move-object/from16 v25, v11

    .line 720
    .line 721
    goto/16 :goto_2

    .line 722
    .line 723
    :catchall_5
    move-exception v0

    .line 724
    move-object/from16 v24, v11

    .line 725
    .line 726
    move-object/from16 v25, v17

    .line 727
    .line 728
    goto/16 :goto_3

    .line 729
    .line 730
    :catchall_6
    move-exception v0

    .line 731
    move-object/from16 v23, v11

    .line 732
    .line 733
    move-object/from16 v25, v17

    .line 734
    .line 735
    move-object/from16 v24, v18

    .line 736
    .line 737
    move-object/from16 v22, v20

    .line 738
    .line 739
    goto :goto_b

    .line 740
    :catchall_7
    move-exception v0

    .line 741
    move-object/from16 v22, v11

    .line 742
    .line 743
    move-object/from16 v25, v17

    .line 744
    .line 745
    move-object/from16 v24, v18

    .line 746
    .line 747
    goto/16 :goto_4

    .line 748
    .line 749
    :catchall_8
    move-exception v0

    .line 750
    move-object/from16 v22, v10

    .line 751
    .line 752
    move-object/from16 v23, v11

    .line 753
    .line 754
    move-object/from16 v24, v12

    .line 755
    .line 756
    move-object/from16 v25, v17

    .line 757
    .line 758
    :goto_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 759
    .line 760
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v0

    .line 764
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    :goto_c
    iget-object v1, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$subjectId:Ljava/lang/String;

    .line 769
    .line 770
    iget-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resourceId:Ljava/lang/String;

    .line 771
    .line 772
    iget v3, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$ep:I

    .line 773
    .line 774
    iget v4, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resStreamType:I

    .line 775
    .line 776
    iget-object v5, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$shortTvMiniId:Ljava/lang/String;

    .line 777
    .line 778
    iget-object v6, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 779
    .line 780
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    if-nez v0, :cond_9

    .line 785
    .line 786
    goto :goto_d

    .line 787
    :cond_9
    sget-object v7, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    .line 788
    .line 789
    sget-object v8, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 790
    .line 791
    invoke-static {v8}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v8

    .line 795
    new-instance v9, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    move-object/from16 v8, v22

    .line 804
    .line 805
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    move-object/from16 v1, v23

    .line 812
    .line 813
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    move-object/from16 v1, v24

    .line 820
    .line 821
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    const-string v1, " resStreamType:"

    .line 828
    .line 829
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    move-object/from16 v1, v25

    .line 836
    .line 837
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    const-string v1, " - --> \u8bf7\u6c42\u63a5\u53e3\u53d1\u751f\u5f02\u5e38 --> Throwable.it = "

    .line 844
    .line 845
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v0

    .line 855
    invoke-virtual {v7, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    new-instance v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$2$1;

    .line 863
    .line 864
    const/4 v2, 0x0

    .line 865
    invoke-direct {v1, v6, v2}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 866
    .line 867
    .line 868
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$0:Ljava/lang/Object;

    .line 869
    .line 870
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$1:Ljava/lang/Object;

    .line 871
    .line 872
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$2:Ljava/lang/Object;

    .line 873
    .line 874
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$3:Ljava/lang/Object;

    .line 875
    .line 876
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$4:Ljava/lang/Object;

    .line 877
    .line 878
    iput-object v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->L$5:Ljava/lang/Object;

    .line 879
    .line 880
    const/4 v2, 0x6

    .line 881
    iput v2, v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;->label:I

    .line 882
    .line 883
    invoke-static {v0, v1, v14}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    if-ne v0, v15, :cond_a

    .line 888
    .line 889
    return-object v15

    .line 890
    :cond_a
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 891
    .line 892
    return-object v0

    .line 893
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
