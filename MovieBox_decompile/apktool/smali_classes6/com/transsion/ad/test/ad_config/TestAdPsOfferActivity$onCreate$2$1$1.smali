.class final Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1$1"
    f = "TestAdPsOfferActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $allPslink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;Ljava/util/List;Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;",
            "Ljava/util/List<",
            "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;",
            ">;",
            "Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$allPslink:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$allPslink:Ljava/util/List;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;Ljava/util/List;Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$allPslink:Ljava/util/List;

    .line 14
    .line 15
    check-cast v0, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->$allPslink:Ljava/util/List;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, v0

    .line 35
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "\u8ba1\u5212\u6570\u91cf = "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$onCreate$2$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;->R(Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;)Lsh/u;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    const-string v1, "binding"

    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-object v0, v1

    .line 67
    :goto_1
    iget-object v0, v0, Lsh/u;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method
