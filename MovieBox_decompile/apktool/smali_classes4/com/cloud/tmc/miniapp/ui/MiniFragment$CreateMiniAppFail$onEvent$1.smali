.class final Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.miniapp.ui.MiniFragment$CreateMiniAppFail$onEvent$1"
    f = "MiniFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;-><init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->getContextWeakReference()Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v0

    .line 32
    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/cloud/tmc/miniapp/action/StatusAction;

    .line 38
    .line 39
    :cond_1
    move-object v1, v0

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail$onEvent$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;->access$getViewThemeMode(Lcom/cloud/tmc/miniapp/ui/MiniFragment$CreateMiniAppFail;)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 v0, 0x2

    .line 56
    if-ne p1, v0, :cond_3

    .line 57
    .line 58
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error_normal_mode:I

    .line 59
    .line 60
    :goto_1
    move v2, p1

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    :goto_2
    sget p1, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_error:I

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_3
    sget v3, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_went_wrong:I

    .line 66
    .line 67
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->loading_error_miniapp_cant_open_now:I

    .line 68
    .line 69
    const/16 v9, 0x70

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static/range {v1 .. v10}, Lcom/cloud/tmc/miniapp/action/StatusAction$DefaultImpls;->showErrorLayout$default(Lcom/cloud/tmc/miniapp/action/StatusAction;IIILcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;ZZLcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method
