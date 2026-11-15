.class public final Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/MultiProcessCoordinator;->withLazyCounter(Ls74;Lwh1;)Ljava/lang/Object;
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0000*\u00020\u0001H\u008a@"
    }
    d2 = {
        "T",
        "Lnk1;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "androidx.datastore.core.MultiProcessCoordinator$withLazyCounter$2"
    f = "MultiProcessCoordinator.android.kt"
    l = {
        0xa3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Landroidx/datastore/core/MultiProcessCoordinator;


# direct methods
.method public constructor <init>(Ls74;Landroidx/datastore/core/MultiProcessCoordinator;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls74;",
            "Landroidx/datastore/core/MultiProcessCoordinator;",
            "Lwh1<",
            "-",
            "Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->$block:Ls74;

    iput-object p2, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
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

    new-instance p1, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;

    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->$block:Ls74;

    iget-object p0, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-direct {p1, v0, p0, p2}, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;-><init>(Ls74;Landroidx/datastore/core/MultiProcessCoordinator;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->$block:Ls74;

    iget-object v1, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-static {v1}, Landroidx/datastore/core/MultiProcessCoordinator;->access$getSharedCounter(Landroidx/datastore/core/MultiProcessCoordinator;)Landroidx/datastore/core/SharedCounter;

    move-result-object v1

    iput v2, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->label:I

    invoke-interface {p1, v1, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->$block:Ls74;

    iget-object v0, p0, Landroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2;->this$0:Landroidx/datastore/core/MultiProcessCoordinator;

    invoke-static {v0}, Landroidx/datastore/core/MultiProcessCoordinator;->access$getSharedCounter(Landroidx/datastore/core/MultiProcessCoordinator;)Landroidx/datastore/core/SharedCounter;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
