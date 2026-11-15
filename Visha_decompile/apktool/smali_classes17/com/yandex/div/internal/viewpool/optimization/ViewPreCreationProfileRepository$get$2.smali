.class final Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->f(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lddc;",
        "<anonymous>",
        "(Lnk1;)Lddc;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.yandex.div.internal.viewpool.optimization.ViewPreCreationProfileRepository$get$2"
    f = "ViewPreCreationProfileRepository.kt"
    l = {
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;",
            "Ljava/lang/String;",
            "Lwh1<",
            "-",
            "Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->this$0:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;

    iput-object p2, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->$id:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 2
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

    new-instance v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;

    iget-object v1, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->this$0:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;

    iget-object p0, p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->$id:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;-><init>(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)V

    iput-object p1, v0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "Lddc;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lnk1;

    iget-object v2, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->this$0:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;

    iget-object v4, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->$id:Ljava/lang/String;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->a()Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;

    move-result-object v5

    invoke-static {v2}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->b(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object v2

    invoke-interface {v2}, Landroidx/datastore/core/DataStore;->getData()Lnz3;

    move-result-object v2

    iput v3, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->label:I

    invoke-static {v2, v1}, Lsz3;->o(Lnz3;Lwh1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v2, Lddc;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lne5;->a:Lne5;

    sget-object v4, Lcom/yandex/div/logging/Severity;->ERROR:Lcom/yandex/div/logging/Severity;

    invoke-virtual {v3, v4}, Lne5;->a(Lcom/yandex/div/logging/Severity;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    const-string v4, "OptimizedViewPreCreationProfileRepository"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    check-cast v0, Lddc;

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->this$0:Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;

    invoke-static {v0}, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;->c(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;)Lddc;

    move-result-object v2

    iget-object v3, v1, Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository$get$2;->$id:Ljava/lang/String;

    const v22, 0x7fffe

    const/16 v23, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v2 .. v23}, Lddc;->b(Lddc;Ljava/lang/String;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;ILjava/lang/Object;)Lddc;

    move-result-object v0

    :cond_5
    return-object v0
.end method
