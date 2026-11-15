.class final Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;->t(Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Ljava/util/List;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V
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
    c = "com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel$searchSubtitleList$1"
    f = "SubtitleDownloadViewModel.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
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

.field final synthetic $languages:Ljava/lang/String;

.field final synthetic $nextPage:Ljava/lang/String;

.field final synthetic $perPage:I

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languageList:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languages:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$nextPage:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$perPage:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance p1, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languageList:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languages:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$nextPage:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, p0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$perPage:I

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;-><init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;

    .line 30
    .line 31
    iget-object v5, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 32
    .line 33
    iget-object v6, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 34
    .line 35
    iget-object v7, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 36
    .line 37
    iget-object v8, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languageList:Ljava/util/List;

    .line 38
    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v4, v2

    .line 41
    invoke-direct/range {v4 .. v9}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$1;-><init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/subtitle/fragment/i;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    iget-object v12, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 49
    .line 50
    iget-object v13, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$keyword:Lcom/transsion/subtitle/fragment/i;

    .line 51
    .line 52
    iget-object v14, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$languages:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v15, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$downloadBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$nextPage:Ljava/lang/String;

    .line 57
    .line 58
    iget v4, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->$perPage:I

    .line 59
    .line 60
    new-instance v5, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;

    .line 61
    .line 62
    move-object v10, v5

    .line 63
    move-object/from16 v16, v2

    .line 64
    .line 65
    move/from16 v17, v4

    .line 66
    .line 67
    invoke-direct/range {v10 .. v17}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$invokeSuspend$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/a;Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;Lcom/transsion/subtitle/fragment/i;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$3;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    invoke-direct {v2, v4}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v5, v2}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v4, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$a;

    .line 81
    .line 82
    iget-object v5, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->this$0:Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;

    .line 83
    .line 84
    invoke-direct {v4, v5}, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1$a;-><init>(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V

    .line 85
    .line 86
    .line 87
    iput v3, v0, Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel$searchSubtitleList$1;->label:I

    .line 88
    .line 89
    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    if-ne v2, v1, :cond_2

    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object v1
.end method
