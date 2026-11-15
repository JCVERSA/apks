.class public final synthetic Lkotlinx/coroutines/sync/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/sync/f;

.field public final synthetic b:Lkotlinx/coroutines/sync/f$a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/f;Lkotlinx/coroutines/sync/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/sync/d;->a:Lkotlinx/coroutines/sync/f;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/sync/d;->b:Lkotlinx/coroutines/sync/f$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/sync/d;->a:Lkotlinx/coroutines/sync/f;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/sync/d;->b:Lkotlinx/coroutines/sync/f$a;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    check-cast p2, Lkotlin/Unit;

    .line 8
    .line 9
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2, p3}, Lkotlinx/coroutines/sync/f$a;->a(Lkotlinx/coroutines/sync/f;Lkotlinx/coroutines/sync/f$a;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
