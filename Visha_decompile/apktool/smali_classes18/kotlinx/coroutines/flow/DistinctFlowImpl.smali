.class public final Lkotlinx/coroutines/flow/DistinctFlowImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz3;


# instance fields
.field public final b:Lnz3;

.field public final c:Le74;

.field public final d:Ls74;


# direct methods
.method public constructor <init>(Lnz3;Le74;Ls74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lnz3;

    iput-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Le74;

    iput-object p3, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->d:Ls74;

    return-void
.end method


# virtual methods
.method public collect(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lh37;->a:Ly7a;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->b:Lnz3;

    new-instance v2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;

    invoke-direct {v2, p0, v0, p1}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Loz3;)V

    invoke-interface {v1, v2, p2}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
