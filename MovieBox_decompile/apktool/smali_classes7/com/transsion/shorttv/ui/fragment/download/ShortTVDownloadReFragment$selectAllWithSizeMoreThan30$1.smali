.class final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->Q1(Z)V
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
    c = "com.transsion.shorttv.ui.fragment.download.ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1"
    f = "ShortTVDownloadReFragment.kt"
    l = {
        0x400,
        0x403,
        0x406,
        0x409,
        0x40e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSelected:Z

.field final synthetic $selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnr/d;",
            ">;>;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;",
            "Z",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lnr/d;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    new-instance p1, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;ZLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

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
    iget v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 8
    .line 9
    const-wide/16 v3, 0x64

    .line 10
    .line 11
    const/4 v7, 0x5

    .line 12
    const/4 v8, 0x4

    .line 13
    const/4 v9, 0x3

    .line 14
    const/4 v10, 0x2

    .line 15
    const/4 v11, 0x1

    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    if-eq v2, v11, :cond_4

    .line 19
    .line 20
    if-eq v2, v10, :cond_3

    .line 21
    .line 22
    if-eq v2, v9, :cond_2

    .line 23
    .line 24
    if-eq v2, v8, :cond_1

    .line 25
    .line 26
    if-ne v2, v7, :cond_0

    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_a

    .line 32
    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :cond_1
    iget v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 42
    .line 43
    iget v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 44
    .line 45
    iget-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 46
    .line 47
    iget-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    move v6, v8

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_2
    iget v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 58
    .line 59
    iget v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 60
    .line 61
    iget-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 62
    .line 63
    iget-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 66
    .line 67
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    iget v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 73
    .line 74
    iget v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 75
    .line 76
    iget-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 77
    .line 78
    iget-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 81
    .line 82
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_4
    iget v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 88
    .line 89
    iget v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 90
    .line 91
    iget-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 92
    .line 93
    iget-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 96
    .line 97
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 106
    .line 107
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 111
    .line 112
    invoke-static {v12}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->J0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    const/4 v13, 0x0

    .line 117
    if-eqz v12, :cond_6

    .line 118
    .line 119
    invoke-virtual {v12}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->getData()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    if-eqz v12, :cond_6

    .line 124
    .line 125
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    goto :goto_0

    .line 130
    :cond_6
    move v12, v13

    .line 131
    :goto_0
    const-wide/16 v14, 0x0

    .line 132
    .line 133
    :goto_1
    const/4 v5, 0x0

    .line 134
    if-ge v13, v12, :cond_11

    .line 135
    .line 136
    iget-object v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 137
    .line 138
    invoke-static {v6}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->J0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_7

    .line 143
    .line 144
    invoke-virtual {v6}, Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter;->getData()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-eqz v6, :cond_7

    .line 149
    .line 150
    invoke-static {v6, v13}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    check-cast v6, Lnr/d;

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    move-object v6, v5

    .line 158
    :goto_2
    if-eqz v6, :cond_a

    .line 159
    .line 160
    invoke-virtual {v6}, Lnr/d;->c()Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-nez v16, :cond_a

    .line 165
    .line 166
    iget-boolean v7, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    .line 167
    .line 168
    invoke-virtual {v6, v7}, Lnr/d;->g(Z)V

    .line 169
    .line 170
    .line 171
    iget-boolean v7, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$isSelected:Z

    .line 172
    .line 173
    if-eqz v7, :cond_9

    .line 174
    .line 175
    iget-object v7, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 176
    .line 177
    invoke-static {v7}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->I0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)Ljava/util/Map;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    check-cast v7, Lcom/transsion/shorttv/bean/DownloadItem;

    .line 190
    .line 191
    if-eqz v7, :cond_8

    .line 192
    .line 193
    invoke-virtual {v7}, Lcom/transsion/shorttv/bean/DownloadItem;->getSize()Ljava/lang/Long;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    if-eqz v7, :cond_8

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 200
    .line 201
    .line 202
    move-result-wide v7

    .line 203
    goto :goto_3

    .line 204
    :cond_8
    const-wide/16 v7, 0x0

    .line 205
    .line 206
    :goto_3
    add-long/2addr v14, v7

    .line 207
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    iget-object v8, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 212
    .line 213
    iget-object v8, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v8, Ljava/util/Map;

    .line 216
    .line 217
    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    iget-object v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 222
    .line 223
    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v6, Ljava/util/Map;

    .line 226
    .line 227
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    :cond_a
    :goto_4
    add-int/lit8 v6, v13, 0x1

    .line 235
    .line 236
    rem-int/lit8 v6, v6, 0x1e

    .line 237
    .line 238
    if-nez v6, :cond_e

    .line 239
    .line 240
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    new-instance v7, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1;

    .line 245
    .line 246
    iget-object v8, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 247
    .line 248
    invoke-direct {v7, v8, v2, v5}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$1;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/coroutines/Continuation;)V

    .line 249
    .line 250
    .line 251
    iput-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 252
    .line 253
    iput-wide v14, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 254
    .line 255
    iput v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 256
    .line 257
    iput v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 258
    .line 259
    iput v11, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 260
    .line 261
    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    if-ne v5, v1, :cond_b

    .line 266
    .line 267
    return-object v1

    .line 268
    :cond_b
    move-wide/from16 v17, v14

    .line 269
    .line 270
    move-object v15, v2

    .line 271
    move v2, v13

    .line 272
    move-wide/from16 v13, v17

    .line 273
    .line 274
    :goto_5
    iput-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 275
    .line 276
    iput-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 277
    .line 278
    iput v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 279
    .line 280
    iput v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 281
    .line 282
    iput v10, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 283
    .line 284
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    if-ne v5, v1, :cond_c

    .line 289
    .line 290
    return-object v1

    .line 291
    :cond_c
    :goto_6
    add-int/lit8 v5, v2, 0x1

    .line 292
    .line 293
    iput v5, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 294
    .line 295
    const/4 v6, 0x4

    .line 296
    :cond_d
    :goto_7
    move-wide/from16 v17, v13

    .line 297
    .line 298
    move v13, v2

    .line 299
    move-object v2, v15

    .line 300
    move-wide/from16 v14, v17

    .line 301
    .line 302
    goto :goto_9

    .line 303
    :cond_e
    add-int/lit8 v6, v12, -0x1

    .line 304
    .line 305
    if-ne v13, v6, :cond_10

    .line 306
    .line 307
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    new-instance v7, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2;

    .line 312
    .line 313
    iget-object v8, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 314
    .line 315
    invoke-direct {v7, v8, v2, v12, v5}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$2;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/jvm/internal/Ref$IntRef;ILkotlin/coroutines/Continuation;)V

    .line 316
    .line 317
    .line 318
    iput-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 319
    .line 320
    iput-wide v14, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 321
    .line 322
    iput v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 323
    .line 324
    iput v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 325
    .line 326
    iput v9, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 327
    .line 328
    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    if-ne v5, v1, :cond_f

    .line 333
    .line 334
    return-object v1

    .line 335
    :cond_f
    move-wide/from16 v17, v14

    .line 336
    .line 337
    move-object v15, v2

    .line 338
    move v2, v13

    .line 339
    move-wide/from16 v13, v17

    .line 340
    .line 341
    :goto_8
    iput-object v15, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 342
    .line 343
    iput-wide v13, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->J$0:J

    .line 344
    .line 345
    iput v12, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$0:I

    .line 346
    .line 347
    iput v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->I$1:I

    .line 348
    .line 349
    const/4 v6, 0x4

    .line 350
    iput v6, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 351
    .line 352
    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    if-ne v5, v1, :cond_d

    .line 357
    .line 358
    return-object v1

    .line 359
    :cond_10
    const/4 v6, 0x4

    .line 360
    :goto_9
    add-int/2addr v13, v11

    .line 361
    move v8, v6

    .line 362
    const/4 v7, 0x5

    .line 363
    goto/16 :goto_1

    .line 364
    .line 365
    :cond_11
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 366
    .line 367
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    if-eqz v2, :cond_12

    .line 372
    .line 373
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->q()Landroidx/lifecycle/b0;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    if-eqz v2, :cond_12

    .line 378
    .line 379
    iget-object v3, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->$selectMap:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 380
    .line 381
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 382
    .line 383
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_12
    iget-object v2, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 387
    .line 388
    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    if-eqz v2, :cond_13

    .line 393
    .line 394
    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->r()Landroidx/lifecycle/b0;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    if-eqz v2, :cond_13

    .line 399
    .line 400
    invoke-static {v14, v15}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    :cond_13
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    new-instance v3, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3;

    .line 412
    .line 413
    iget-object v4, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->this$0:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    .line 414
    .line 415
    invoke-direct {v3, v4, v5}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1$3;-><init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lkotlin/coroutines/Continuation;)V

    .line 416
    .line 417
    .line 418
    iput-object v5, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->L$0:Ljava/lang/Object;

    .line 419
    .line 420
    const/4 v4, 0x5

    .line 421
    iput v4, v0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$selectAllWithSizeMoreThan30$1;->label:I

    .line 422
    .line 423
    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    if-ne v2, v1, :cond_14

    .line 428
    .line 429
    return-object v1

    .line 430
    :cond_14
    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 431
    .line 432
    return-object v1
.end method
