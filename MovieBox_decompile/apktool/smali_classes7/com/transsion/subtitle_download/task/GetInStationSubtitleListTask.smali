.class public final Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/subtitle_download/task/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/subtitle_download/task/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lot/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->f()Lot/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->g(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Lot/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->k()Lot/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final f()Lot/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lot/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lot/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private final g(Lcom/tn/lib/net/bean/BaseDto;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p12

    instance-of v5, v4, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;

    iget v6, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;

    invoke-direct {v5, v0, v4}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;-><init>(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v6

    .line 1
    iget v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    const-string v9, "getApp(...)"

    const-string v10, "toUpperCase(...)"

    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v31, v1

    move-object v1, v0

    move-object/from16 v0, v31

    goto/16 :goto_11

    :pswitch_1
    iget v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    iget v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    iget v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iget-object v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v9, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move/from16 p1, v1

    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, v4

    move-object/from16 p2, v10

    move v4, v2

    move-object v2, v6

    move-object v6, v5

    move v5, v3

    move-object v3, v1

    move/from16 v1, p1

    goto/16 :goto_f

    :pswitch_2
    iget v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    iget v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    iget v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iget-object v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$9:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$8:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 p1, v1

    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 p2, v1

    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, p2

    move-object v0, v7

    move/from16 v7, p1

    move-object/from16 v31, v6

    move v6, v2

    move-object/from16 v2, v31

    goto/16 :goto_8

    :pswitch_3
    iget v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    iget v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    iget v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iget-object v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 p1, v1

    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    move-object v0, v14

    move-object v14, v7

    move/from16 v7, p1

    goto/16 :goto_5

    :pswitch_4
    iget v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    iget v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    iget v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iget-object v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move/from16 p1, v1

    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v4, v2

    move v2, v3

    move-object v3, v14

    move-object v14, v7

    move/from16 v7, p1

    move-object/from16 v31, v13

    move-object v13, v11

    move-object/from16 v11, v31

    goto/16 :goto_3

    :pswitch_5
    iget-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_2

    :pswitch_6
    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/subtitle_download/bean/SubtitleListBean;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/bean/SubtitleListBean;->getExtSubtitle()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 3
    :goto_1
    invoke-direct {v0, v4}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->q(Ljava/util/List;)V

    if-eqz v4, :cond_19

    .line 4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    new-instance v7, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$2$1;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    invoke-static {v4, v7, v5}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_2

    return-object v6

    .line 6
    :cond_2
    :goto_2
    sget-object v1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v4, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-direct {v4}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> disposeResponse() --> subtitleItemList.isEmpty() == true -- \u5f53\u524d\u8d44\u6e90\u6ca1\u6709\u5bf9\u5e94\u7684\u5b57\u5e55\u8d44\u6e90 --> resourceId = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- subjectId = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/utils/b;->c(Ljava/lang/String;)V

    .line 7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    .line 8
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v7

    new-instance v8, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$2$2;

    const/4 v11, 0x0

    invoke-direct {v8, v1, v11}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$2$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    iput-object v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    move-object/from16 v11, p5

    iput-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    move-object/from16 v12, p9

    iput-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    move-object/from16 v13, p10

    iput-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    move-object/from16 v14, p11

    iput-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    move/from16 v15, p6

    iput v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    move/from16 v2, p7

    iput v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    move/from16 v2, p8

    iput v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    const/4 v2, 0x2

    iput v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    invoke-static {v7, v8, v5}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_4

    return-object v6

    :cond_4
    move/from16 v7, p8

    move-object v8, v14

    move v2, v15

    move-object/from16 v15, p3

    move-object v14, v4

    move/from16 v4, p7

    .line 9
    :goto_3
    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    move-object/from16 v16, v10

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    move-result-object v0

    if-nez v15, :cond_5

    .line 10
    const-string v10, ""

    goto :goto_4

    :cond_5
    move-object v10, v15

    :goto_4
    iput-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    iput-object v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    iput-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    iput-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    iput-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    iput-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    iput-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    iput v2, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iput v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    iput v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    move-object/from16 p1, v1

    const/4 v1, 0x3

    iput v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    invoke-interface {v0, v10, v5}, Lqt/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    return-object v6

    :cond_6
    move-object/from16 v1, p1

    move/from16 v31, v4

    move-object v4, v0

    move-object v0, v3

    move v3, v2

    move/from16 v2, v31

    move-object/from16 v32, v13

    move-object v13, v11

    move-object/from16 v11, v32

    .line 11
    :goto_5
    check-cast v4, Ljava/util/List;

    .line 12
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object/from16 p1, v0

    if-eqz v4, :cond_c

    .line 13
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    move-object/from16 p2, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 14
    sget-object v0, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-direct {v1}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    sget-object v9, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    invoke-virtual {v9}, Lcom/transsion/subtitle_download/utils/e;->f()Ljava/lang/String;

    move-result-object v9

    move/from16 p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> disposeResponse() --> \u6570\u636e\u5e93\u8fd8\u6ca1\u6709\u5bf9\u5e94\u7684\u6570\u636e --> \u5168\u90e8\u4fdd\u5b58 --> \u4e0b\u8f7d\u5bf9\u5e94\u7cfb\u7edf\u8bed\u8a00\u7684\u5b57\u5e55 -- subtitleItemList.size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -- getSystemLanguage = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 16
    check-cast v14, Ljava/lang/Iterable;

    .line 17
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v4, p1

    move/from16 v2, p3

    move-object v9, v10

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v8

    move-object v8, v0

    move-object v0, v1

    move-object/from16 v1, p2

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v24, v10

    check-cast v24, Lcom/transsion/subtitle_download/bean/SubtitleItem;

    .line 18
    invoke-virtual/range {v24 .. v24}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLanAbbr()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v30, v6

    if-eqz v10, :cond_7

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v16

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object/from16 v10, v16

    const/4 v6, 0x0

    .line 19
    :goto_7
    sget-object v16, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    move/from16 p1, v7

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/subtitle_download/utils/e;->f()Ljava/lang/String;

    move-result-object v7

    move/from16 v16, v2

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 22
    :cond_8
    sget-object v17, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 23
    iget-boolean v2, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 24
    iput-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v15, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    iput-object v14, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    iput-object v13, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    iput-object v12, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    iput-object v11, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    iput-object v9, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    iput-object v8, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$8:Ljava/lang/Object;

    iput-object v0, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$9:Ljava/lang/Object;

    iput v3, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    move/from16 v6, v16

    iput v6, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    move/from16 v7, p1

    iput v7, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    move-object/from16 p1, v0

    const/4 v0, 0x4

    iput v0, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    move-object/from16 v18, v4

    move-object/from16 v19, v15

    move-object/from16 v20, v14

    move/from16 v21, v3

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v25, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v12

    move-object/from16 v28, v11

    move-object/from16 v29, v5

    invoke-direct/range {v17 .. v29}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v30

    if-ne v0, v2, :cond_9

    return-object v2

    :cond_9
    move-object/from16 v16, v15

    move-object v15, v4

    move-object v4, v0

    move-object/from16 v0, p1

    :goto_8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    .line 25
    iput-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_a
    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    move/from16 v31, v6

    move-object v6, v2

    move/from16 v2, v31

    goto/16 :goto_6

    :cond_b
    :goto_9
    move/from16 p3, v2

    move-object v2, v6

    move-object/from16 v0, v16

    goto :goto_a

    :cond_c
    move-object/from16 p2, v1

    goto :goto_9

    .line 26
    :goto_a
    sget-object v1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-direct {v6}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " --> disposeResponse() --> \u83b7\u53d6\u5230\u4e86\u5b57\u5e55\u5217\u8868\uff0c\u5bf9\u6bd4\u672c\u5730\u6570\u636e\u5e93\uff0c\u589e\u91cf\u66f4\u65b0 --> \u6570\u636e\u5e93\u6709\u6570\u636e\u4e86\uff0c\u589e\u91cf\u66f4\u65b0"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_10

    .line 27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 28
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    move-result v11

    if-eq v11, v3, :cond_e

    goto :goto_b

    .line 29
    :cond_e
    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isDownloaded()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->isInner()Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_b

    .line 30
    :cond_f
    sget-object v11, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v14}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->n(Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    if-nez v12, :cond_d

    sget-object v12, Lyg/l;->a:Lyg/l;

    invoke-virtual {v12}, Lyg/l;->e()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 31
    sget-object v12, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    move-object/from16 p4, v1

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/transsion/subtitle_download/utils/e;->b(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    move-result-object v1

    invoke-interface {v1, v6}, Lqt/a;->g(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 34
    sget-object v1, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    invoke-direct {v11}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " --> disposeResponse() --> delete(dbItem) --> \u5220\u9664\u65e0\u6548\u5b57\u5e55\u6570\u636e&\u8d44\u6e90\u6587\u4ef6\u6210\u529f --> it = "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    move-object/from16 v1, p4

    goto :goto_b

    .line 35
    :cond_10
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 36
    check-cast v14, Ljava/lang/Iterable;

    .line 37
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v11, p1

    move-object v9, v1

    move v1, v7

    move-object v14, v10

    move-object v12, v15

    move-object v7, v6

    move-object v15, v8

    move-object v8, v13

    move-object v13, v4

    move-object v6, v5

    move/from16 v4, p3

    move v5, v3

    move-object/from16 v3, p2

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v23, v10

    check-cast v23, Lcom/transsion/subtitle_download/bean/SubtitleItem;

    .line 38
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLanAbbr()Ljava/lang/String;

    move-result-object v10

    move-object/from16 p1, v2

    if-eqz v10, :cond_11

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    .line 39
    :goto_d
    sget-object v10, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    invoke-virtual {v10}, Lcom/transsion/subtitle_download/utils/e;->f()Ljava/lang/String;

    move-result-object v10

    move/from16 p2, v1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_e

    :cond_12
    const/4 v1, 0x0

    .line 42
    :goto_e
    sget-object v2, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10, v5, v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->m(Ljava/lang/String;ILjava/util/List;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 43
    iget-boolean v10, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 44
    iput-object v3, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v12, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    iput-object v11, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    iput-object v8, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    iput-object v15, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    iput-object v14, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    iput-object v13, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    iput-object v9, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    iput-object v7, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$8:Ljava/lang/Object;

    iput v5, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$0:I

    iput v4, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$1:I

    move/from16 v1, p2

    iput v1, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->I$2:I

    move-object/from16 p2, v0

    const/4 v0, 0x5

    iput v0, v6, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x300

    const/16 v30, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v8

    move/from16 v20, v5

    move/from16 v21, v4

    move/from16 v22, v1

    move/from16 v24, v10

    move-object/from16 v27, v15

    move-object/from16 v28, v6

    invoke-static/range {v16 .. v30}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->p(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p1

    if-ne v0, v2, :cond_13

    return-object v2

    :cond_13
    :goto_f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, v14, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_10

    :cond_14
    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 p2, v0

    :cond_15
    const/4 v0, 0x1

    :goto_10
    move-object/from16 v0, p2

    goto/16 :goto_c

    :cond_16
    move-object v9, v14

    .line 46
    :cond_17
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_18

    .line 47
    sget-object v0, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    sget-object v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->a:Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    invoke-direct {v1}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> disposeResponse() --> \u672c\u6b21\u6ca1\u6709\u751f\u6210\u65b0\u7684\u5b57\u5e55\u4e0b\u8f7d\u4efb\u52a1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/subtitle_download/utils/b;->a(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->a:Lcom/transsion/subtitle_download/utils/ObserveNetworkState;

    invoke-direct {v1}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> disposeResponse()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/utils/ObserveNetworkState;->c(Ljava/lang/String;)V

    :cond_18
    move-object/from16 v1, p0

    goto :goto_12

    :cond_19
    move-object v2, v6

    .line 49
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v3, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$3$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$3$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p0

    iput-object v1, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$1:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$2:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$3:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$5:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$6:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$7:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$8:Ljava/lang/Object;

    iput-object v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->L$9:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v5, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$disposeResponse$1;->label:I

    invoke-static {v0, v3, v5}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_1a

    return-object v2

    :cond_1a
    move-object v0, v1

    .line 50
    :goto_11
    sget-object v2, Lcom/transsion/subtitle_download/utils/b;->a:Lcom/transsion/subtitle_download/utils/b;

    invoke-direct {v0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> disposeResponse() --> subtitles.data?.extSubtitle == null -- \u5f53\u524d\u8d44\u6e90\u6ca1\u6709\u5bf9\u5e94\u7684\u5b57\u5e55\u8d44\u6e90"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/subtitle_download/utils/b;->b(Ljava/lang/String;)V

    .line 51
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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

.method private final k()Lot/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lot/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final m(Ljava/lang/String;ILjava/util/List;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    check-cast p3, Ljava/lang/Iterable;

    .line 5
    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceStreamType()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne p2, v1, :cond_0

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method private final n(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/transsion/subtitle_download/bean/SubtitleItem;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v0
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;-><init>(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget v4, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    iget-boolean v3, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->Z$0:Z

    .line 45
    .line 46
    iget-object v1, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->p:Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;

    .line 67
    .line 68
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v6, "getApp(...)"

    .line 73
    .line 74
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual/range {p7 .. p7}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-nez v7, :cond_3

    .line 90
    .line 91
    const-string v7, ""

    .line 92
    .line 93
    :cond_3
    move/from16 v12, p4

    .line 94
    .line 95
    invoke-interface {v4, v7, v12}, Lqt/a;->c(Ljava/lang/String;I)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    sget-object v8, Lpt/a;->a:Lpt/a;

    .line 102
    .line 103
    move-object/from16 v9, p1

    .line 104
    .line 105
    move-object/from16 v10, p2

    .line 106
    .line 107
    move-object/from16 v11, p3

    .line 108
    .line 109
    move/from16 v12, p4

    .line 110
    .line 111
    move/from16 v13, p5

    .line 112
    .line 113
    move/from16 v14, p6

    .line 114
    .line 115
    move-object/from16 v15, p7

    .line 116
    .line 117
    move-object/from16 v16, p9

    .line 118
    .line 119
    move-object/from16 v17, p10

    .line 120
    .line 121
    move-object/from16 v18, p11

    .line 122
    .line 123
    invoke-virtual/range {v8 .. v18}, Lpt/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4, v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setType(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase$d;->b(Landroid/content/Context;)Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadDatabase;->l0()Lqt/a;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v4, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    move/from16 v6, p8

    .line 148
    .line 149
    iput-boolean v6, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->Z$0:Z

    .line 150
    .line 151
    iput v5, v1, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$saveAdnDownload$1;->label:I

    .line 152
    .line 153
    invoke-interface {v0, v4, v1}, Lqt/a;->e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-ne v0, v3, :cond_4

    .line 158
    .line 159
    return-object v3

    .line 160
    :cond_4
    move-object v1, v4

    .line 161
    move v3, v6

    .line 162
    :goto_1
    sget-object v0, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->a:Lcom/transsion/subtitle_download/SubtitleDownloadManager;

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Lcom/transsion/subtitle_download/SubtitleDownloadManager;->q(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    .line 165
    .line 166
    .line 167
    move-object v4, v1

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    move/from16 v6, p8

    .line 170
    .line 171
    move v3, v6

    .line 172
    :goto_2
    sget-object v0, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "k_subtitle_select_lan"

    .line 179
    .line 180
    const/4 v6, 0x0

    .line 181
    invoke-virtual {v0, v1, v6}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const/4 v1, 0x2

    .line 186
    const/4 v7, 0x0

    .line 187
    const-string v8, "toUpperCase(...)"

    .line 188
    .line 189
    if-eqz v0, :cond_8

    .line 190
    .line 191
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-nez v9, :cond_6

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 199
    .line 200
    invoke-virtual {v0, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    if-eqz v10, :cond_7

    .line 212
    .line 213
    invoke-virtual {v10, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    move-object v9, v6

    .line 222
    :goto_3
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_8

    .line 227
    .line 228
    sget-object v0, Lcom/transsion/subtitle_download/task/p;->a:Lcom/transsion/subtitle_download/task/p;

    .line 229
    .line 230
    invoke-static {v0, v4, v7, v1, v6}, Lcom/transsion/subtitle_download/task/p;->e(Lcom/transsion/subtitle_download/task/p;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;ZILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_9

    .line 243
    .line 244
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 245
    .line 246
    invoke-virtual {v0, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_9
    move-object v0, v6

    .line 255
    :goto_5
    sget-object v9, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    .line 256
    .line 257
    invoke-virtual {v9}, Lcom/transsion/subtitle_download/utils/e;->f()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 262
    .line 263
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_a

    .line 275
    .line 276
    sget-object v0, Lcom/transsion/subtitle_download/task/p;->a:Lcom/transsion/subtitle_download/task/p;

    .line 277
    .line 278
    invoke-static {v0, v4, v7, v1, v6}, Lcom/transsion/subtitle_download/task/p;->e(Lcom/transsion/subtitle_download/task/p;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;ZILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_7

    .line 282
    :cond_a
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanAbbr()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    invoke-virtual {v0, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :cond_b
    move-object v0, v6

    .line 297
    :goto_6
    invoke-virtual {v9}, Lcom/transsion/subtitle_download/utils/e;->e()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_c

    .line 313
    .line 314
    if-eqz v3, :cond_c

    .line 315
    .line 316
    sget-object v0, Lcom/transsion/subtitle_download/task/p;->a:Lcom/transsion/subtitle_download/task/p;

    .line 317
    .line 318
    invoke-static {v0, v4, v7, v1, v6}, Lcom/transsion/subtitle_download/task/p;->e(Lcom/transsion/subtitle_download/task/p;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;ZILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_c
    move v5, v7

    .line 323
    :goto_7
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    return-object v0
.end method

.method static synthetic p(Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move/from16 v0, p13

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move v8, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v8, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move/from16 v9, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit16 v1, v0, 0x80

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    move v11, v1

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v11, p8

    .line 28
    .line 29
    :goto_2
    and-int/lit16 v1, v0, 0x100

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    move-object v12, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v12, p9

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x200

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    move-object v13, v2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v13, p10

    .line 45
    .line 46
    :goto_4
    and-int/lit16 v0, v0, 0x400

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    move-object v14, v2

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move-object/from16 v14, p11

    .line 53
    .line 54
    :goto_5
    move-object/from16 v3, p0

    .line 55
    .line 56
    move-object/from16 v4, p1

    .line 57
    .line 58
    move-object/from16 v5, p2

    .line 59
    .line 60
    move-object/from16 v6, p3

    .line 61
    .line 62
    move/from16 v7, p4

    .line 63
    .line 64
    move-object/from16 v10, p7

    .line 65
    .line 66
    move-object/from16 v15, p12

    .line 67
    .line 68
    invoke-direct/range {v3 .. v15}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method private final q(Ljava/util/List;)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    move v3, v0

    .line 15
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_3

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v5, v3, 0x1

    .line 26
    .line 27
    if-gez v3, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_0
    :goto_1
    check-cast v4, Lcom/transsion/subtitle_download/bean/SubtitleItem;

    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLanAbbr()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    const-string v6, "toUpperCase(...)"

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    :try_start_1
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const/4 v4, 0x0

    .line 56
    :goto_2
    sget-object v7, Lcom/transsion/subtitle_download/utils/e;->a:Lcom/transsion/subtitle_download/utils/e;

    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/transsion/subtitle_download/utils/e;->f()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 63
    .line 64
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    move v1, v3

    .line 78
    :cond_2
    move v3, v5

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    if-lez v1, :cond_4

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/transsion/subtitle_download/bean/SubtitleItem;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    :goto_4
    return-void
.end method


# virtual methods
.method public final h(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    .line 1
    const-string v0, "dbBean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v4, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, v0}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$2;-><init>(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V
    .locals 15

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v14, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;

    .line 10
    .line 11
    const/4 v13, 0x0

    .line 12
    move-object v1, v14

    .line 13
    move/from16 v2, p10

    .line 14
    .line 15
    move-object/from16 v3, p1

    .line 16
    .line 17
    move-object/from16 v4, p7

    .line 18
    .line 19
    move-object/from16 v5, p3

    .line 20
    .line 21
    move/from16 v6, p4

    .line 22
    .line 23
    move-object/from16 v7, p2

    .line 24
    .line 25
    move/from16 v8, p5

    .line 26
    .line 27
    move-object/from16 v9, p11

    .line 28
    .line 29
    move-object/from16 v10, p8

    .line 30
    .line 31
    move/from16 v11, p6

    .line 32
    .line 33
    move-object/from16 v12, p9

    .line 34
    .line 35
    invoke-direct/range {v1 .. v13}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$download$1;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    move-object/from16 p1, v0

    .line 43
    .line 44
    move-object/from16 p2, v3

    .line 45
    .line 46
    move-object/from16 p3, v4

    .line 47
    .line 48
    move-object/from16 p4, v14

    .line 49
    .line 50
    move/from16 p5, v1

    .line 51
    .line 52
    move-object/from16 p6, v2

    .line 53
    .line 54
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 12

    .line 1
    const-string v0, "videoResourceId"

    .line 2
    .line 3
    move-object v3, p3

    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "idType"

    .line 8
    .line 9
    move-object/from16 v4, p7

    .line 10
    .line 11
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v11, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move-object v1, v11

    .line 26
    move-object/from16 v2, p4

    .line 27
    .line 28
    move-object v5, p1

    .line 29
    move-object v6, p2

    .line 30
    move-object/from16 v7, p5

    .line 31
    .line 32
    move-object/from16 v8, p8

    .line 33
    .line 34
    move-object/from16 v9, p6

    .line 35
    .line 36
    invoke-direct/range {v1 .. v10}, Lcom/transsion/subtitle_download/task/GetInStationSubtitleListTask$downloadUGCVideo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object p1, v0

    .line 44
    move-object p2, v3

    .line 45
    move-object p3, v4

    .line 46
    move-object/from16 p4, v11

    .line 47
    .line 48
    move/from16 p5, v1

    .line 49
    .line 50
    move-object/from16 p6, v2

    .line 51
    .line 52
    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 53
    .line 54
    .line 55
    return-void
.end method
