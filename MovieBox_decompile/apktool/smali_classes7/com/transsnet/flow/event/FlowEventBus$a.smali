.class final Lcom/transsnet/flow/event/FlowEventBus$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/flow/event/FlowEventBus;->observeWithoutLifecycle(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/flow/event/FlowEventBus;

.field final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/transsnet/flow/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/flow/event/FlowEventBus$a;->a:Lcom/transsnet/flow/event/FlowEventBus;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus$a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/transsnet/flow/event/FlowEventBus$a;->a:Lcom/transsnet/flow/event/FlowEventBus;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/flow/event/FlowEventBus$a;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-static {p2, p1, v0}, Lcom/transsnet/flow/event/FlowEventBus;->access$invokeReceived(Lcom/transsnet/flow/event/FlowEventBus;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p1
.end method
