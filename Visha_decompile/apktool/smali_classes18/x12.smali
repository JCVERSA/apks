.class public final Lx12;
.super Lkotlinx/coroutines/h;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Lx12;

.field public static final d:Lkotlinx/coroutines/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lx12;

    invoke-direct {v0}, Lx12;-><init>()V

    sput-object v0, Lx12;->c:Lx12;

    sget-object v0, Lcgb;->b:Lcgb;

    const/16 v1, 0x40

    invoke-static {}, Lnaa;->a()I

    move-result v2

    invoke-static {v1, v2}, Lwn8;->d(II)I

    move-result v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lnaa;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/c;->limitedParallelism$default(Lkotlinx/coroutines/c;ILjava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/c;

    move-result-object v0

    sput-object v0, Lx12;->d:Lkotlinx/coroutines/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/h;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be invoked on Dispatchers.IO"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lx12;->d:Lkotlinx/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lx12;->d:Lkotlinx/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/c;->dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {p0, v0, p1}, Lx12;->dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 0

    sget-object p0, Lcgb;->b:Lcgb;

    invoke-virtual {p0, p1, p2}, Lcgb;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
