.class final Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel$getDownloadList$1$1"
    f = "DownloadResourcesDetectorViewModel.kt"
    l = {
        0x130,
        0x138,
        0x13a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $endPosition:I

.field final synthetic $epFrom:I

.field final synthetic $epTo:I

.field final synthetic $nextPage:Ljava/lang/String;

.field final synthetic $pagerMode:I

.field final synthetic $perPage:I

.field final synthetic $resolution:I

.field final synthetic $se:I

.field final synthetic $startPosition:I

.field final synthetic $subjectId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Ljava/lang/String;IIIIIIIILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$perPage:I

    .line 8
    .line 9
    iput p5, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$startPosition:I

    .line 10
    .line 11
    iput p6, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$endPosition:I

    .line 12
    .line 13
    iput p7, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$pagerMode:I

    .line 14
    .line 15
    iput p8, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$resolution:I

    .line 16
    .line 17
    iput p9, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$se:I

    .line 18
    .line 19
    iput p10, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epFrom:I

    .line 20
    .line 21
    iput p11, p0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epTo:I

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
    new-instance v14, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 5
    .line 6
    iget-object v3, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    .line 9
    .line 10
    iget v5, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$perPage:I

    .line 11
    .line 12
    iget v6, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$startPosition:I

    .line 13
    .line 14
    iget v7, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$endPosition:I

    .line 15
    .line 16
    iget v8, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$pagerMode:I

    .line 17
    .line 18
    iget v9, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$resolution:I

    .line 19
    .line 20
    iget v10, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$se:I

    .line 21
    .line 22
    iget v11, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epFrom:I

    .line 23
    .line 24
    iget v12, v0, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epTo:I

    .line 25
    .line 26
    move-object v1, v14

    .line 27
    move-object/from16 v13, p2

    .line 28
    .line 29
    invoke-direct/range {v1 .. v13}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;Ljava/lang/String;Ljava/lang/String;IIIIIIIILkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    iput-object v1, v14, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

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
    iget v0, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->label:I

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
    iget-object v0, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

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
    iget-object v0, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v11, v0

    .line 53
    check-cast v11, Lkotlinx/coroutines/flow/b;

    .line 54
    .line 55
    iget-object v0, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->e(Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;)Lcx/a;

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
    iget-object v3, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$subjectId:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v4, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$nextPage:Ljava/lang/String;

    .line 70
    .line 71
    iget v5, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$perPage:I

    .line 72
    .line 73
    iget v6, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$startPosition:I

    .line 74
    .line 75
    iget v7, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$endPosition:I

    .line 76
    .line 77
    iget v8, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$pagerMode:I

    .line 78
    .line 79
    iget v9, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$resolution:I

    .line 80
    .line 81
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget v10, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$se:I

    .line 86
    .line 87
    iget v12, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epFrom:I

    .line 88
    .line 89
    iget v13, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->$epTo:I

    .line 90
    .line 91
    iput-object v11, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput v1, v15, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->label:I

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v17, 0x10

    .line 98
    .line 99
    const/16 v18, 0x0

    .line 100
    .line 101
    move-object v1, v2

    .line 102
    move-object v2, v3

    .line 103
    move-object v3, v4

    .line 104
    move v4, v5

    .line 105
    move/from16 v5, v16

    .line 106
    .line 107
    move-object/from16 v16, v11

    .line 108
    .line 109
    move v11, v12

    .line 110
    move v12, v13

    .line 111
    move-object/from16 v13, p0

    .line 112
    .line 113
    move-object/from16 v19, v14

    .line 114
    .line 115
    move/from16 v14, v17

    .line 116
    .line 117
    move-object/from16 v15, v18

    .line 118
    .line 119
    invoke-static/range {v0 .. v15}, Lcx/a$a;->c(Lcx/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    move-object/from16 v1, v19

    .line 124
    .line 125
    if-ne v0, v1, :cond_4

    .line 126
    .line 127
    return-object v1

    .line 128
    :cond_4
    move-object/from16 v2, v16

    .line 129
    .line 130
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string v4, "0"

    .line 137
    .line 138
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const/4 v4, 0x0

    .line 143
    if-nez v3, :cond_5

    .line 144
    .line 145
    move-object/from16 v3, p0

    .line 146
    .line 147
    iput-object v4, v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    const/4 v0, 0x2

    .line 150
    iput v0, v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->label:I

    .line 151
    .line 152
    invoke-interface {v2, v4, v3}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-ne v0, v1, :cond_6

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_5
    move-object/from16 v3, p0

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput-object v4, v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    const/4 v4, 0x3

    .line 168
    iput v4, v3, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel$getDownloadList$1$1;->label:I

    .line 169
    .line 170
    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v1, :cond_6

    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object v0
.end method
