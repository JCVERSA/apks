.class public final synthetic Ljy/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:[Lkotlin/coroutines/CoroutineContext;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljy/a;->a:[Lkotlin/coroutines/CoroutineContext;

    .line 5
    .line 6
    iput-object p2, p0, Ljy/a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljy/a;->a:[Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iget-object v1, p0, Ljy/a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    check-cast p1, Lkotlin/Unit;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 8
    .line 9
    invoke-static {v0, v1, p1, p2}, Lkotlin/coroutines/CombinedContext;->c([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
