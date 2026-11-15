.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->b0(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.viewmodel.CloudViewModel$loadCloudDataSequentially$1"
    f = "CloudViewModel.kt"
    l = {
        0x344,
        0x34c,
        0x34d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $dataType:I

.field final synthetic $pageNo:I

.field final synthetic $searchText:Ljava/lang/String;

.field final synthetic $sortBy:Ljava/lang/String;

.field final synthetic $sortField:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iput p2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$pageNo:I

    iput-object p3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortField:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortBy:Ljava/lang/String;

    iput p5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$dataType:I

    iput-object p6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$searchText:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;

    iget-object v1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v2, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$pageNo:I

    iget-object v3, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortField:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortBy:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$dataType:I

    iget-object v6, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$searchText:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lwh1;)V

    iput-object p1, v8, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->label:I

    const-string v3, "CloudViewModel"

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v0, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ld72;

    iget-object v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v6, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_2
    iget-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ld72;

    iget-object v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ld72;

    iget-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lnk1;

    :try_start_3
    const-string v8, "start"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v14, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v15, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v11, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$favoriteJob$1;

    iget-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {v11, v8, v15, v14, v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$favoriteJob$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;Lwh1;)V

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v2

    move-object v4, v13

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v13

    new-instance v11, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$recentJob$1;

    iget-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {v11, v8, v4, v14, v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$recentJob$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/concurrent/CountDownLatch;Lwh1;)V

    const/4 v12, 0x3

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v2

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Lcl0;->b(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Ld72;

    move-result-object v8

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v9

    new-instance v10, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$1;

    invoke-direct {v10, v14, v7}, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1$1;-><init>(Ljava/util/concurrent/CountDownLatch;Lwh1;)V

    iput-object v15, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$3:Ljava/lang/Object;

    iput v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->label:I

    invoke-static {v9, v10, v1}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, v2

    move-object v2, v8

    move-object v9, v15

    move-object v8, v4

    :goto_0
    iput-object v9, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$3:Ljava/lang/Object;

    iput v6, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->label:I

    invoke-interface {v5, v1}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    return-object v0

    :cond_5
    move-object v5, v8

    move-object v6, v9

    :goto_1
    iput-object v6, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->label:I

    invoke-interface {v2, v1}, Ld72;->o(Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v5

    move-object v2, v6

    :goto_2
    iget-boolean v2, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v2, :cond_7

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    iget-object v4, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$pageNo:I

    iget-object v6, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortField:Ljava/lang/String;

    iget-object v7, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortBy:Ljava/lang/String;

    iget v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$dataType:I

    iget-object v9, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$searchText:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v10, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v11, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$pageNo:I

    iget-object v12, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortField:Ljava/lang/String;

    iget-object v13, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortBy:Ljava/lang/String;

    iget v14, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$dataType:I

    iget-object v15, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$searchText:Ljava/lang/String;

    invoke-virtual/range {v10 .. v15}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCloudDataSequentially: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    iget v5, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$pageNo:I

    iget-object v6, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortField:Ljava/lang/String;

    iget-object v7, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$sortBy:Ljava/lang/String;

    iget v8, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$dataType:I

    iget-object v9, v1, Lcom/transsion/cloud/viewmodel/CloudViewModel$loadCloudDataSequentially$1;->$searchText:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->u(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    sget-object v0, Lzfb;->a:Lzfb;

    return-object v0
.end method
