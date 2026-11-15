.class public final Lcgb;
.super Lkotlinx/coroutines/c;
.source "SourceFile"


# static fields
.field public static final b:Lcgb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcgb;

    invoke-direct {v0}, Lcgb;-><init>()V

    sput-object v0, Lcgb;->b:Lcgb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/c;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, Ld42;->h:Ld42;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lh29;->k(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/d;Ljava/lang/Runnable;)V
    .locals 0

    sget-object p0, Ld42;->h:Ld42;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1, p1}, Lh29;->k(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;
    .locals 1

    invoke-static {p1}, Lbl5;->a(I)V

    sget v0, Lkotlinx/coroutines/scheduling/a;->d:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lbl5;->b(Lkotlinx/coroutines/c;Ljava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/c;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/c;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Dispatchers.IO"

    return-object p0
.end method
