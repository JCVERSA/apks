.class public abstract synthetic Lk04;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le74;

.field public static final b:Ls74;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li04;

    invoke-direct {v0}, Li04;-><init>()V

    sput-object v0, Lk04;->a:Le74;

    new-instance v0, Lj04;

    invoke-direct {v0}, Lj04;-><init>()V

    sput-object v0, Lk04;->b:Ls74;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lk04;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lk04;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final e(Lnz3;)Lnz3;
    .locals 2

    instance-of v0, p0, Lgx9;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lk04;->a:Le74;

    sget-object v1, Lk04;->b:Ls74;

    invoke-static {p0, v0, v1}, Lk04;->g(Lnz3;Le74;Ls74;)Lnz3;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final f(Lnz3;Le74;)Lnz3;
    .locals 1

    sget-object v0, Lk04;->b:Ls74;

    invoke-static {p0, p1, v0}, Lk04;->g(Lnz3;Le74;Ls74;)Lnz3;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Lnz3;Le74;Ls74;)Lnz3;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->c:Le74;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;->d:Ls74;

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl;-><init>(Lnz3;Le74;Ls74;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
