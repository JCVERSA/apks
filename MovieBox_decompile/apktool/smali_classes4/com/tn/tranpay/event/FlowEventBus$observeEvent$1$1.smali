.class final Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/n0;

.field final synthetic b:Lkotlinx/coroutines/i0;

.field final synthetic c:Lcom/tn/tranpay/event/FlowEventBus;

.field final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/n0;Lkotlinx/coroutines/i0;Lcom/tn/tranpay/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->b:Lkotlinx/coroutines/i0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->c:Lcom/tn/tranpay/event/FlowEventBus;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->d:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->a:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->b:Lkotlinx/coroutines/i0;

    .line 4
    .line 5
    new-instance v3, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1$1;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->c:Lcom/tn/tranpay/event/FlowEventBus;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1;->d:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v3, p2, p1, v2, v4}, Lcom/tn/tranpay/event/FlowEventBus$observeEvent$1$1$1;-><init>(Lcom/tn/tranpay/event/FlowEventBus;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p1
.end method
