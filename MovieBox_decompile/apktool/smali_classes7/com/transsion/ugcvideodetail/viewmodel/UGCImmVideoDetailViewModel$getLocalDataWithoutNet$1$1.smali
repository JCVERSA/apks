.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0007\u001a\u00020\u0006*(\u0012$\u0012\"\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lkotlin/Triple;",
        "",
        "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1"
    f = "UGCImmVideoDetailViewModel.kt"
    l = {
        0xae,
        0xb1,
        0xb2,
        0xb4,
        0xb6,
        0xb9,
        0xbb,
        0xc1,
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    .locals 7
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
    new-instance v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v3, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_9

    .line 26
    .line 27
    :pswitch_1
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v6, p1

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :pswitch_2
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v5, Lkotlinx/coroutines/flow/b;

    .line 57
    .line 58
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    move-object v7, v5

    .line 62
    move-object v5, v3

    .line 63
    move-object v3, v1

    .line 64
    move-object/from16 v1, p1

    .line 65
    .line 66
    goto/16 :goto_4

    .line 67
    .line 68
    :pswitch_3
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v6, Lkotlinx/coroutines/flow/b;

    .line 83
    .line 84
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v7, v6

    .line 88
    move-object/from16 v6, p1

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_4
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 95
    .line 96
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v6, Lkotlinx/coroutines/flow/b;

    .line 103
    .line 104
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move-object/from16 v7, p1

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :pswitch_5
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v3, Ljava/lang/String;

    .line 114
    .line 115
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v5, Lkotlinx/coroutines/flow/b;

    .line 118
    .line 119
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    move-object/from16 v6, p1

    .line 123
    .line 124
    move-object/from16 v16, v5

    .line 125
    .line 126
    move-object v5, v3

    .line 127
    move-object/from16 v3, v16

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :pswitch_6
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 134
    .line 135
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    move-object/from16 v5, p1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 147
    .line 148
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v5, :cond_1

    .line 151
    .line 152
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-nez v5, :cond_0

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$collectionId:Ljava/lang/String;

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_1
    :goto_0
    iget-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->z()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 169
    .line 170
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 173
    .line 174
    invoke-interface {v5, v6, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    if-ne v5, v2, :cond_2

    .line 179
    .line 180
    return-object v2

    .line 181
    :cond_2
    :goto_1
    check-cast v5, Ljava/lang/String;

    .line 182
    .line 183
    :goto_2
    if-eqz v5, :cond_8

    .line 184
    .line 185
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_3

    .line 190
    .line 191
    goto/16 :goto_6

    .line 192
    .line 193
    :cond_3
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 194
    .line 195
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 196
    .line 197
    .line 198
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    iget-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 205
    .line 206
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 209
    .line 210
    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    .line 213
    .line 214
    const/4 v8, 0x6

    .line 215
    iput v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 216
    .line 217
    invoke-interface {v6, v7, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v6

    .line 221
    if-ne v6, v2, :cond_4

    .line 222
    .line 223
    return-object v2

    .line 224
    :cond_4
    move-object v7, v3

    .line 225
    move-object v3, v1

    .line 226
    :goto_3
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 227
    .line 228
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 229
    .line 230
    if-nez v1, :cond_6

    .line 231
    .line 232
    iget-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iput-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 239
    .line 240
    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 241
    .line 242
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    .line 245
    .line 246
    const/4 v6, 0x7

    .line 247
    iput v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 248
    .line 249
    invoke-interface {v1, v5, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-ne v1, v2, :cond_5

    .line 254
    .line 255
    return-object v2

    .line 256
    :cond_5
    :goto_4
    check-cast v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 257
    .line 258
    if-eqz v1, :cond_6

    .line 259
    .line 260
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 261
    .line 262
    iget-object v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 269
    .line 270
    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    .line 272
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 273
    .line 274
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 275
    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v9, "getLocalDataWithoutNet curId:"

    .line 282
    .line 283
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v8, ", history:"

    .line 290
    .line 291
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    const/4 v14, 0x4

    .line 302
    const/4 v15, 0x0

    .line 303
    const-string v11, "UGCImmVideoDetailViewModel"

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    :cond_6
    move-object v1, v3

    .line 310
    move-object v3, v5

    .line 311
    move-object v5, v7

    .line 312
    sget-object v6, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 313
    .line 314
    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 323
    .line 324
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$3:Ljava/lang/Object;

    .line 325
    .line 326
    const/16 v7, 0x8

    .line 327
    .line 328
    iput v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 329
    .line 330
    invoke-virtual {v6, v3, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->P(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    if-ne v6, v2, :cond_7

    .line 335
    .line 336
    return-object v2

    .line 337
    :cond_7
    :goto_5
    check-cast v6, Ljava/util/List;

    .line 338
    .line 339
    new-instance v7, Lkotlin/Triple;

    .line 340
    .line 341
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 342
    .line 343
    invoke-direct {v7, v3, v1, v6}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 349
    .line 350
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 351
    .line 352
    const/16 v1, 0x9

    .line 353
    .line 354
    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 355
    .line 356
    invoke-interface {v5, v7, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    if-ne v1, v2, :cond_c

    .line 361
    .line 362
    return-object v2

    .line 363
    :cond_8
    :goto_6
    iget-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 364
    .line 365
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->K()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    iget-object v7, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 370
    .line 371
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 372
    .line 373
    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 374
    .line 375
    const/4 v8, 0x2

    .line 376
    iput v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 377
    .line 378
    invoke-interface {v6, v7, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->r(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    if-ne v6, v2, :cond_9

    .line 383
    .line 384
    return-object v2

    .line 385
    :cond_9
    :goto_7
    check-cast v6, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 386
    .line 387
    sget-object v7, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 388
    .line 389
    invoke-virtual {v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    iget-object v8, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->$curUgcVideoId:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 394
    .line 395
    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 396
    .line 397
    check-cast v8, Ljava/lang/String;

    .line 398
    .line 399
    iput-object v3, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 400
    .line 401
    iput-object v5, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 402
    .line 403
    iput-object v6, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 404
    .line 405
    const/4 v9, 0x3

    .line 406
    iput v9, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 407
    .line 408
    invoke-virtual {v7, v8, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-ne v7, v2, :cond_a

    .line 413
    .line 414
    return-object v2

    .line 415
    :cond_a
    move-object/from16 v16, v6

    .line 416
    .line 417
    move-object v6, v3

    .line 418
    move-object/from16 v3, v16

    .line 419
    .line 420
    :goto_8
    check-cast v7, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 421
    .line 422
    if-nez v7, :cond_b

    .line 423
    .line 424
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 429
    .line 430
    const/4 v1, 0x4

    .line 431
    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 432
    .line 433
    invoke-interface {v6, v4, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-ne v1, v2, :cond_c

    .line 438
    .line 439
    return-object v2

    .line 440
    :cond_b
    new-instance v8, Lkotlin/Triple;

    .line 441
    .line 442
    new-array v1, v1, [Lcom/transsion/baselib/db/download/DownloadBean;

    .line 443
    .line 444
    const/4 v9, 0x0

    .line 445
    aput-object v7, v1, v9

    .line 446
    .line 447
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-direct {v8, v5, v3, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$0:Ljava/lang/Object;

    .line 455
    .line 456
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$1:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v4, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->L$2:Ljava/lang/Object;

    .line 459
    .line 460
    const/4 v1, 0x5

    .line 461
    iput v1, v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1$1;->label:I

    .line 462
    .line 463
    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    if-ne v1, v2, :cond_c

    .line 468
    .line 469
    return-object v2

    .line 470
    :cond_c
    :goto_9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 471
    .line 472
    return-object v1

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
