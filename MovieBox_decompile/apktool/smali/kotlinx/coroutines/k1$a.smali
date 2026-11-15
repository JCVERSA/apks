.class public final Lkotlinx/coroutines/k1$a;
.super Lkotlin/coroutines/AbstractCoroutineContextKey;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    sget-object v0, Lkotlinx/coroutines/i0;->Key:Lkotlinx/coroutines/i0$a;

    new-instance v1, Lkotlinx/coroutines/j1;

    invoke-direct {v1}, Lkotlinx/coroutines/j1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/k1$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/k1;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/k1$a;->d(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/k1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/k1;
    .locals 1

    .line 1
    instance-of v0, p0, Lkotlinx/coroutines/k1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lkotlinx/coroutines/k1;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method
