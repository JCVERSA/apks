.class final Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->onScroll(FFLcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;)V
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
    c = "com.transsion.wrapperad.view.DownloadTopIrregularView$onScroll$2"
    f = "DownloadTopIrregularView.kt"
    l = {
        0x87
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic $mCurrentTopMargin:I

.field final synthetic $maxTopMargin:I

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;IILandroid/view/ViewGroup$MarginLayoutParams;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/wrapperad/view/DownloadTopIrregularView;",
            "II",
            "Landroid/view/ViewGroup$MarginLayoutParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$maxTopMargin:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$mCurrentTopMargin:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

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
    .locals 6
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
    new-instance p1, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 4
    .line 5
    iget v2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$maxTopMargin:I

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$mCurrentTopMargin:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;-><init>(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;IILandroid/view/ViewGroup$MarginLayoutParams;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$2:I

    .line 13
    .line 14
    iget v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$1:I

    .line 15
    .line 16
    iget v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$0:I

    .line 17
    .line 18
    iget-object v5, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->L$1:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v5, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getNativeWrapperAdView$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getCloseImg$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Landroid/widget/ImageView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    iget p1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$maxTopMargin:I

    .line 60
    .line 61
    iget v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$mCurrentTopMargin:I

    .line 62
    .line 63
    sub-int/2addr p1, v1

    .line 64
    div-int/lit8 p1, p1, 0xa

    .line 65
    .line 66
    iget-object v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->$layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->this$0:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 69
    .line 70
    const/4 v5, 0x0

    .line 71
    move-object v6, v3

    .line 72
    move v3, v1

    .line 73
    move v1, v5

    .line 74
    move-object v5, v4

    .line 75
    move v4, p1

    .line 76
    :goto_0
    if-ge v1, v4, :cond_4

    .line 77
    .line 78
    mul-int/lit8 p1, v1, 0xa

    .line 79
    .line 80
    add-int/2addr p1, v3

    .line 81
    iput p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 82
    .line 83
    iput-object v6, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput-object v5, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->L$1:Ljava/lang/Object;

    .line 86
    .line 87
    iput v4, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$0:I

    .line 88
    .line 89
    iput v3, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$1:I

    .line 90
    .line 91
    iput v1, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->I$2:I

    .line 92
    .line 93
    iput v2, p0, Lcom/transsion/wrapperad/view/DownloadTopIrregularView$onScroll$2;->label:I

    .line 94
    .line 95
    const-wide/16 v7, 0x4

    .line 96
    .line 97
    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_2

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;->access$getMGeminiViewGroup$p(Lcom/transsion/wrapperad/view/DownloadTopIrregularView;)Landroid/view/ViewGroup;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    add-int/2addr v1, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1
.end method
