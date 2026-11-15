.class public final synthetic Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lkotlinx/coroutines/channels/BufferedChannel;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/channels/c;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/channels/c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/channels/c;->b:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    move-object v3, p1

    .line 6
    check-cast v3, Ljava/lang/Throwable;

    .line 7
    .line 8
    move-object v5, p3

    .line 9
    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v4, p2

    .line 13
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/BufferedChannel;->b(Ljava/lang/Object;Lkotlinx/coroutines/channels/BufferedChannel;Lkotlinx/coroutines/selects/f;Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
