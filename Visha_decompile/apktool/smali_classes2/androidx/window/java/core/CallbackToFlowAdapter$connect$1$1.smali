.class final Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/java/core/CallbackToFlowAdapter;->connect(Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;Lnz3;)V
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
        "\u0000\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "T",
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "androidx.window.java.core.CallbackToFlowAdapter$connect$1$1"
    f = "CallbackToFlowAdapter.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $consumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $flow:Lnz3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnz3;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Lnz3;Landroidx/core/util/Consumer;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnz3;",
            "Landroidx/core/util/Consumer<",
            "TT;>;",
            "Lwh1<",
            "-",
            "Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$flow:Lnz3;

    iput-object p2, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$consumer:Landroidx/core/util/Consumer;

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

    new-instance p1, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;

    iget-object v0, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$flow:Lnz3;

    iget-object p0, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$consumer:Landroidx/core/util/Consumer;

    invoke-direct {p1, v0, p0, p2}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;-><init>(Lnz3;Landroidx/core/util/Consumer;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->label:I

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

    iget-object p1, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$flow:Lnz3;

    new-instance v1, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;

    iget-object v3, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->$consumer:Landroidx/core/util/Consumer;

    invoke-direct {v1, v3}, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1$1;-><init>(Landroidx/core/util/Consumer;)V

    iput v2, p0, Landroidx/window/java/core/CallbackToFlowAdapter$connect$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
