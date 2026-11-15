.class final Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsnet/downloader/bean/DownloadListBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$getDownloadList$1$1"
    f = "MovieDetailViewModel.kt"
    l = {
        0x95,
        0xa0,
        0xa2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $epFrom:I

.field final synthetic $epTo:I

.field final synthetic $resolution:I

.field final synthetic $se:I

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
            "Ljava/lang/String;",
            "IIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$resolution:I

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$se:I

    .line 8
    .line 9
    iput p5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epFrom:I

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epTo:I

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
    new-instance v8, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$resolution:I

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$se:I

    .line 10
    .line 11
    iget v5, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epFrom:I

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epTo:I

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;-><init>(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;IIIILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    iget v0, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->label:I

    .line 8
    .line 9
    const/4 v13, 0x3

    .line 10
    const/4 v12, 0x2

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    if-eq v0, v12, :cond_1

    .line 17
    .line 18
    if-ne v0, v13, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    move-object v3, v15

    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    iget-object v0, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v2, v0

    .line 43
    move-object v1, v14

    .line 44
    move-object/from16 v0, p1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v11, v0

    .line 53
    check-cast v11, Lkotlinx/coroutines/flow/b;

    .line 54
    .line 55
    iget-object v0, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->this$0:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->o(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)Lcx/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 62
    .line 63
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 68
    .line 69
    iget v4, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$resolution:I

    .line 70
    .line 71
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    iget v10, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$se:I

    .line 76
    .line 77
    iget v8, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epFrom:I

    .line 78
    .line 79
    iget v7, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->$epTo:I

    .line 80
    .line 81
    iput-object v11, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput v1, v15, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->label:I

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    const/4 v6, 0x0

    .line 88
    const/16 v16, 0x0

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const/16 v18, 0x2

    .line 93
    .line 94
    const/16 v19, 0x78

    .line 95
    .line 96
    const/16 v20, 0x0

    .line 97
    .line 98
    move-object v1, v2

    .line 99
    move-object v2, v3

    .line 100
    move-object v3, v4

    .line 101
    move v4, v5

    .line 102
    move v5, v6

    .line 103
    move/from16 v6, v16

    .line 104
    .line 105
    move/from16 v16, v7

    .line 106
    .line 107
    move/from16 v7, v17

    .line 108
    .line 109
    move/from16 v17, v8

    .line 110
    .line 111
    move/from16 v8, v18

    .line 112
    .line 113
    move-object/from16 v18, v11

    .line 114
    .line 115
    move/from16 v11, v17

    .line 116
    .line 117
    move/from16 v12, v16

    .line 118
    .line 119
    move-object/from16 v13, p0

    .line 120
    .line 121
    move-object/from16 v21, v14

    .line 122
    .line 123
    move/from16 v14, v19

    .line 124
    .line 125
    move-object/from16 v15, v20

    .line 126
    .line 127
    invoke-static/range {v0 .. v15}, Lcx/a$a;->c(Lcx/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move-object/from16 v1, v21

    .line 132
    .line 133
    if-ne v0, v1, :cond_4

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_4
    move-object/from16 v2, v18

    .line 137
    .line 138
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v4, "0"

    .line 145
    .line 146
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    const/4 v4, 0x0

    .line 151
    if-nez v3, :cond_5

    .line 152
    .line 153
    move-object/from16 v3, p0

    .line 154
    .line 155
    iput-object v4, v3, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    const/4 v0, 0x2

    .line 158
    iput v0, v3, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->label:I

    .line 159
    .line 160
    invoke-interface {v2, v4, v3}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-ne v0, v1, :cond_6

    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_5
    move-object/from16 v3, p0

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v4, v3, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 174
    .line 175
    const/4 v4, 0x3

    .line 176
    iput v4, v3, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel$getDownloadList$1$1;->label:I

    .line 177
    .line 178
    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    if-ne v0, v1, :cond_6

    .line 183
    .line 184
    return-object v1

    .line 185
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    return-object v0
.end method
