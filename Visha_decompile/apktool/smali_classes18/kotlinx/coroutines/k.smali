.class public final Lkotlinx/coroutines/k;
.super Lkotlinx/coroutines/c;
.source "SourceFile"


# static fields
.field public static final b:Lkotlinx/coroutines/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/k;

    invoke-direct {v0}, Lkotlinx/coroutines/k;-><init>()V

    sput-object v0, Lkotlinx/coroutines/k;->b:Lkotlinx/coroutines/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Lkotlinx/coroutines/l;->c:Lkotlinx/coroutines/l$a;

    invoke-interface {p1, p0}, Lkotlin/coroutines/d;->get(Lkotlin/coroutines/d$c;)Lkotlin/coroutines/d$b;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/l;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlinx/coroutines/l;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/d;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "limitedParallelism is not supported for Dispatchers.Unconfined"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.Unconfined"

    return-object p0
.end method
