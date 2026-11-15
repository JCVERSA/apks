.class final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/Result;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2"
    f = "ShortTvViewModel.kt"
    l = {
        0xb3,
        0xb4,
        0xb8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $downloadVideo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideo:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
            ">;",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$collectionId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$downloadVideo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$collectionId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$subjectId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$downloadVideo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->label:I

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    if-eq v3, v0, :cond_2

    .line 16
    .line 17
    if-eq v3, v5, :cond_1

    .line 18
    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    iget-object v2, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$4:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 24
    .line 25
    iget-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 32
    .line 33
    iget-object v5, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v5, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 36
    .line 37
    iget-object v7, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 40
    .line 41
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    move-object v9, v7

    .line 45
    move-object v7, v3

    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_1
    iget-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$4:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 64
    .line 65
    iget-object v5, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 68
    .line 69
    iget-object v7, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v7, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 72
    .line 73
    iget-object v8, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 76
    .line 77
    iget-object v9, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    .line 81
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    move-object v14, v8

    .line 85
    move-object v8, v7

    .line 86
    move-object v7, v5

    .line 87
    move-object/from16 v5, p1

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_2
    iget-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v3, Lkotlinx/coroutines/r0;

    .line 94
    .line 95
    iget-object v7, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v7, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 98
    .line 99
    iget-object v8, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 102
    .line 103
    iget-object v9, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 106
    .line 107
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    move-object v6, v3

    .line 111
    move-object v14, v8

    .line 112
    move-object v3, v9

    .line 113
    move-object v8, v7

    .line 114
    move-object/from16 v7, p1

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v3, Lkotlinx/coroutines/n0;

    .line 124
    .line 125
    iget-object v13, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 126
    .line 127
    iget-object v14, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 128
    .line 129
    iget-object v15, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    iget-object v12, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$collectionId:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v11, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$subjectId:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v10, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$downloadVideo:Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 136
    .line 137
    :try_start_3
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 138
    .line 139
    new-instance v9, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1;

    .line 140
    .line 141
    invoke-direct {v9, v14, v15, v6}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$streamDeferred$1;-><init>(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 142
    .line 143
    .line 144
    const/16 v16, 0x3

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    const/4 v8, 0x0

    .line 149
    const/16 v18, 0x0

    .line 150
    .line 151
    move-object v7, v3

    .line 152
    move-object/from16 v19, v9

    .line 153
    .line 154
    move-object/from16 v9, v18

    .line 155
    .line 156
    move-object v6, v10

    .line 157
    move-object/from16 v10, v19

    .line 158
    .line 159
    move-object/from16 v19, v11

    .line 160
    .line 161
    move/from16 v11, v16

    .line 162
    .line 163
    move-object/from16 v16, v12

    .line 164
    .line 165
    move-object/from16 v12, v17

    .line 166
    .line 167
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    new-instance v17, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;

    .line 172
    .line 173
    const/16 v20, 0x0

    .line 174
    .line 175
    move-object/from16 v7, v17

    .line 176
    .line 177
    move-object v8, v15

    .line 178
    move-object v9, v14

    .line 179
    move-object/from16 v10, v16

    .line 180
    .line 181
    move-object/from16 v11, v19

    .line 182
    .line 183
    move-object v15, v12

    .line 184
    move-object/from16 v12, v20

    .line 185
    .line 186
    invoke-direct/range {v7 .. v12}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 187
    .line 188
    .line 189
    const/4 v11, 0x3

    .line 190
    const/4 v12, 0x0

    .line 191
    const/4 v8, 0x0

    .line 192
    const/4 v9, 0x0

    .line 193
    move-object v7, v3

    .line 194
    move-object/from16 v10, v17

    .line 195
    .line 196
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    iput-object v13, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object v14, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v6, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 207
    .line 208
    iput v0, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->label:I

    .line 209
    .line 210
    invoke-interface {v15, v1}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    if-ne v7, v2, :cond_4

    .line 215
    .line 216
    return-object v2

    .line 217
    :cond_4
    move-object v8, v6

    .line 218
    move-object v6, v3

    .line 219
    move-object v3, v13

    .line 220
    :goto_0
    check-cast v7, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;

    .line 221
    .line 222
    iput-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 223
    .line 224
    iput-object v14, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v8, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v7, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 229
    .line 230
    iput-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$4:Ljava/lang/Object;

    .line 231
    .line 232
    iput v5, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->label:I

    .line 233
    .line 234
    invoke-interface {v6, v1}, Lkotlinx/coroutines/r0;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    if-ne v5, v2, :cond_5

    .line 239
    .line 240
    return-object v2

    .line 241
    :cond_5
    move-object v9, v3

    .line 242
    :goto_1
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 243
    .line 244
    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    if-eqz v3, :cond_16

    .line 247
    .line 248
    invoke-virtual {v14}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->v()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Ljava/util/Collection;

    .line 253
    .line 254
    if-eqz v3, :cond_6

    .line 255
    .line 256
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-eqz v3, :cond_b

    .line 261
    .line 262
    :cond_6
    invoke-virtual {v14}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->L()Lvs/c;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    if-eqz v3, :cond_a

    .line 267
    .line 268
    iget-object v5, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 271
    .line 272
    if-eqz v5, :cond_7

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-eqz v5, :cond_7

    .line 279
    .line 280
    invoke-virtual {v5}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v5

    .line 284
    goto :goto_2

    .line 285
    :cond_7
    const/4 v5, 0x0

    .line 286
    :goto_2
    iput-object v9, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$0:Ljava/lang/Object;

    .line 287
    .line 288
    iput-object v14, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$1:Ljava/lang/Object;

    .line 289
    .line 290
    iput-object v8, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$2:Ljava/lang/Object;

    .line 291
    .line 292
    iput-object v7, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$3:Ljava/lang/Object;

    .line 293
    .line 294
    iput-object v14, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->L$4:Ljava/lang/Object;

    .line 295
    .line 296
    iput v4, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->label:I

    .line 297
    .line 298
    invoke-interface {v3, v5, v1}, Lvs/c;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-ne v3, v2, :cond_8

    .line 303
    .line 304
    return-object v2

    .line 305
    :cond_8
    move-object v4, v8

    .line 306
    move-object v2, v14

    .line 307
    move-object v5, v2

    .line 308
    :goto_3
    check-cast v3, Ljava/util/List;

    .line 309
    .line 310
    if-eqz v3, :cond_9

    .line 311
    .line 312
    check-cast v3, Ljava/util/Collection;

    .line 313
    .line 314
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    move-object v8, v4

    .line 319
    :goto_4
    move-object v14, v5

    .line 320
    goto :goto_6

    .line 321
    :cond_9
    move-object v14, v2

    .line 322
    move-object v8, v4

    .line 323
    goto :goto_5

    .line 324
    :cond_a
    move-object v5, v14

    .line 325
    :goto_5
    move-object v2, v14

    .line 326
    const/4 v3, 0x0

    .line 327
    goto :goto_4

    .line 328
    :goto_6
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->f0(Ljava/util/List;)V

    .line 329
    .line 330
    .line 331
    :cond_b
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 332
    .line 333
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 337
    .line 338
    if-eqz v7, :cond_c

    .line 339
    .line 340
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;->getFirstImage()Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    goto :goto_7

    .line 345
    :cond_c
    const/4 v3, 0x0

    .line 346
    :goto_7
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->overrideCoverByFirstImage(Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;)V

    .line 347
    .line 348
    .line 349
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 350
    .line 351
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 355
    .line 356
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    if-eqz v2, :cond_d

    .line 361
    .line 362
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v14, v3}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->e0(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionName()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v14, v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->d0(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    :cond_d
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 377
    .line 378
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    if-eqz v2, :cond_16

    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getVideoNum()Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    if-eqz v2, :cond_16

    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 402
    .line 403
    if-eqz v3, :cond_f

    .line 404
    .line 405
    if-eqz v7, :cond_e

    .line 406
    .line 407
    invoke-virtual {v7}, Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;->getResources()Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    goto :goto_8

    .line 412
    :cond_e
    const/4 v4, 0x0

    .line 413
    :goto_8
    invoke-virtual {v3, v4}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setStreams(Ljava/util/List;)V

    .line 414
    .line 415
    .line 416
    :cond_f
    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v3, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 419
    .line 420
    if-eqz v3, :cond_13

    .line 421
    .line 422
    if-eqz v8, :cond_11

    .line 423
    .line 424
    invoke-virtual {v8}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    if-nez v4, :cond_10

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_10
    move-object v6, v4

    .line 432
    goto :goto_a

    .line 433
    :cond_11
    :goto_9
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 436
    .line 437
    if-eqz v4, :cond_12

    .line 438
    .line 439
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPlayUrl()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    goto :goto_a

    .line 444
    :cond_12
    const/4 v6, 0x0

    .line 445
    :goto_a
    invoke-virtual {v3, v6}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->setPlayUrl(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :cond_13
    invoke-virtual {v14}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->z()Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 453
    .line 454
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    if-gt v0, v2, :cond_15

    .line 461
    .line 462
    move v3, v0

    .line 463
    :goto_b
    iget-object v4, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 464
    .line 465
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    check-cast v4, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 469
    .line 470
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 471
    .line 472
    .line 473
    move-result v4

    .line 474
    if-eq v3, v4, :cond_14

    .line 475
    .line 476
    invoke-virtual {v14}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    new-instance v5, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 481
    .line 482
    new-instance v30, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    .line 483
    .line 484
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 485
    .line 486
    .line 487
    move-result-object v18

    .line 488
    const/16 v20, 0xb

    .line 489
    .line 490
    const/16 v21, 0x0

    .line 491
    .line 492
    const/16 v16, 0x0

    .line 493
    .line 494
    const/16 v17, 0x0

    .line 495
    .line 496
    const/16 v19, 0x0

    .line 497
    .line 498
    move-object/from16 v15, v30

    .line 499
    .line 500
    invoke-direct/range {v15 .. v21}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 501
    .line 502
    .line 503
    const v40, 0xffbfff

    .line 504
    .line 505
    .line 506
    const/16 v41, 0x0

    .line 507
    .line 508
    const/16 v16, 0x0

    .line 509
    .line 510
    const/16 v17, 0x0

    .line 511
    .line 512
    const/16 v18, 0x0

    .line 513
    .line 514
    const/16 v19, 0x0

    .line 515
    .line 516
    const/16 v20, 0x0

    .line 517
    .line 518
    const/16 v21, 0x0

    .line 519
    .line 520
    const/16 v22, 0x0

    .line 521
    .line 522
    const/16 v23, 0x0

    .line 523
    .line 524
    const/16 v24, 0x0

    .line 525
    .line 526
    const/16 v25, 0x0

    .line 527
    .line 528
    const/16 v26, 0x0

    .line 529
    .line 530
    const/16 v27, 0x0

    .line 531
    .line 532
    const/16 v28, 0x0

    .line 533
    .line 534
    const/16 v29, 0x0

    .line 535
    .line 536
    const/16 v31, 0x0

    .line 537
    .line 538
    const/16 v32, 0x0

    .line 539
    .line 540
    const/16 v33, 0x0

    .line 541
    .line 542
    const/16 v34, 0x0

    .line 543
    .line 544
    const/16 v35, 0x0

    .line 545
    .line 546
    const/16 v36, 0x0

    .line 547
    .line 548
    const/16 v37, 0x0

    .line 549
    .line 550
    const/16 v38, 0x0

    .line 551
    .line 552
    const/16 v39, 0x0

    .line 553
    .line 554
    move-object v15, v5

    .line 555
    invoke-direct/range {v15 .. v41}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;Ljava/lang/String;IZLjava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    .line 560
    .line 561
    :cond_14
    if-eq v3, v2, :cond_15

    .line 562
    .line 563
    add-int/2addr v3, v0

    .line 564
    goto :goto_b

    .line 565
    :cond_15
    invoke-virtual {v14}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 570
    .line 571
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    check-cast v2, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 575
    .line 576
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 577
    .line 578
    .line 579
    move-result v2

    .line 580
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->d(I)I

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 585
    .line 586
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 593
    .line 594
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    check-cast v0, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 598
    .line 599
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    invoke-virtual {v14, v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c0(I)V

    .line 604
    .line 605
    .line 606
    :cond_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 607
    .line 608
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    goto :goto_d

    .line 613
    :goto_c
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 614
    .line 615
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    :goto_d
    iget-object v2, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 624
    .line 625
    iget-object v3, v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->$ugcVideo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 626
    .line 627
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v4

    .line 631
    if-eqz v4, :cond_17

    .line 632
    .line 633
    move-object v4, v0

    .line 634
    check-cast v4, Lkotlin/Unit;

    .line 635
    .line 636
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->k(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Landroidx/lifecycle/b0;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 641
    .line 642
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    :cond_17
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    if-eqz v2, :cond_18

    .line 650
    .line 651
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 652
    .line 653
    .line 654
    :cond_18
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    return-object v0
.end method
