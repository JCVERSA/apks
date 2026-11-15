.class final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/subtitle/bean/SubtitleSearchListBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1$1"
    f = "SubtitleDownloadViewModel.kt"
    l = {
        0x8c,
        0x8c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $keyword:Lcom/transsion/subtitle/fragment/i;

.field final synthetic $languageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsion/subtitle/fragment/i;",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/SubtitleLanguageMapBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$languageList:Ljava/util/List;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance v6, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$languageList:Ljava/util/List;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;-><init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 48
    .line 49
    iget-object v6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->$languageList:Ljava/util/List;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    iput v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->label:I

    .line 54
    .line 55
    invoke-static {p1, v4, v5, v6, p0}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->f(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v0, :cond_3

    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 63
    iput-object v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;->label:I

    .line 66
    .line 67
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_4

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1
.end method
