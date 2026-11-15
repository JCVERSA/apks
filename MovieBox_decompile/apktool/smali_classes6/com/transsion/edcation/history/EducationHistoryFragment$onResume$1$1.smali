.class final Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.edcation.history.EducationHistoryFragment$onResume$1$1"
    f = "EducationHistoryFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/history/EducationHistoryFragment;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->h0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    .line 28
    .line 29
    check-cast v0, Ljava/util/Collection;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->e0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->$list:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/transsion/edcation/history/EducationHistoryFragment;->g0(Lcom/transsion/edcation/history/EducationHistoryFragment;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge p1, v0, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryFragment$onResume$1$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryFragment;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryFragment;->f0(Lcom/transsion/edcation/history/EducationHistoryFragment;)Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lt6/f;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {p1, v2, v0, v1}, Lt6/f;->u(Lt6/f;ZILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method
