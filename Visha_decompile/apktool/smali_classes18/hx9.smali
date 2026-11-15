.class public abstract Lhx9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly7a;

.field public static final b:Ly7a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly7a;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhx9;->a:Ly7a;

    new-instance v0, Ly7a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Ly7a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhx9;->b:Ly7a;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lmw6;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    if-nez p0, :cond_0

    sget-object p0, Lh37;->a:Ly7a;

    :cond_0
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()Ly7a;
    .locals 1

    sget-object v0, Lhx9;->a:Ly7a;

    return-object v0
.end method

.method public static final synthetic c()Ly7a;
    .locals 1

    sget-object v0, Lhx9;->b:Ly7a;

    return-object v0
.end method

.method public static final d(Lgx9;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)Lnz3;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Llg9;->e(Lkg9;Lkotlin/coroutines/d;ILkotlinx/coroutines/channels/BufferOverflow;)Lnz3;

    move-result-object p0

    return-object p0
.end method
