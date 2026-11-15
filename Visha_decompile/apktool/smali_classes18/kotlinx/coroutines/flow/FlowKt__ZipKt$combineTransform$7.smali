.class public final Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "R",
        "Loz3;",
        "Lzfb;",
        "<anonymous>",
        "(Loz3;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineTransform$7"
    f = "Zip.kt"
    l = {
        0x130
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $flowArray:[Lnz3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lnz3;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lu74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu74;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>([Lnz3;Lu74;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnz3;",
            "Lu74;",
            "Lwh1<",
            "-",
            "Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$transform:Lu74;

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

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$transform:Lu74;

    invoke-direct {v0, v1, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;-><init>([Lnz3;Lu74;Lwh1;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Loz3;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->invoke(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loz3;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->label:I

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

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->L$0:Ljava/lang/Object;

    check-cast p1, Loz3;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    invoke-static {}, Ly45;->o()V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;

    iget-object v4, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    invoke-direct {v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;-><init>([Lnz3;)V

    invoke-static {}, Ly45;->o()V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;

    iget-object v5, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$transform:Lu74;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;-><init>(Lu74;Lwh1;)V

    iput v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->label:I

    invoke-static {p1, v1, v3, v4, p0}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Loz3;[Lnz3;Lc74;Lu74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invokeSuspend$$forInline(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->L$0:Ljava/lang/Object;

    check-cast p1, Loz3;

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    invoke-static {}, Ly45;->o()V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$flowArray:[Lnz3;

    invoke-direct {v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$a;-><init>([Lnz3;)V

    invoke-static {}, Ly45;->o()V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;

    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7;->$transform:Lu74;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combineTransform$7$2;-><init>(Lu74;Lwh1;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lj05;->c(I)V

    invoke-static {p1, v0, v1, v2, p0}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Loz3;[Lnz3;Lc74;Lu74;Lwh1;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lj05;->c(I)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
