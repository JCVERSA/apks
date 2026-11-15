.class final Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/tn/tranpay/bean/LoadConfigContent;

    invoke-virtual {p0, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->invoke(Lcom/tn/tranpay/bean/LoadConfigContent;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/tn/tranpay/bean/LoadConfigContent;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getMedium()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v2, 0x0

    invoke-direct {v3, p1, v2}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_3

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/report/c;->j(Z)V

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x3

    const-string v3, "Unavailable pay method"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/report/c;->j(Z)V

    .line 8
    :goto_2
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tn/tranpay/BillingParams;->getOrderDesc()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v2}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tn/tranpay/BillingParams;->getPayByLocalCurrency()Z

    move-result v2

    iget-object v3, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v3}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->X(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tn/tranpay/report/h;->j(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 9
    iget-object v4, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, -0x1

    const-string v6, "loading data is null"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->e0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method
