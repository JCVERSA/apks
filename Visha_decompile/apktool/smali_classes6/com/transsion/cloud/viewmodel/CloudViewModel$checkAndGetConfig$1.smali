.class final Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.cloud.viewmodel.CloudViewModel$checkAndGetConfig$1"
    f = "CloudViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel;",
            "Lwh1<",
            "-",
            "Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method

.method public static synthetic g(ZLjava/lang/Integer;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->h(ZLjava/lang/Integer;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final h(ZLjava/lang/Integer;)Lzfb;
    .locals 1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x4e77

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->a:Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloudcore/cache/CloudTaskFinishCacheManager;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {p1, p0, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;-><init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {p1}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lxy0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lxy0;->g()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x493e0

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$checkAndGetConfig$1;->this$0:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-static {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->e(Lcom/transsion/cloud/viewmodel/CloudViewModel;)Lxy0;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/transsion/cloud/viewmodel/c;

    invoke-direct {p1}, Lcom/transsion/cloud/viewmodel/c;-><init>()V

    invoke-interface {p0, p1}, Lxy0;->n(Ls74;)V

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
