.class final Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/history/EducationHistoryAdapter;->E1(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;)V
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
    c = "com.transsion.edcation.history.EducationHistoryAdapter$calculateProgress$1"
    f = "EducationHistoryAdapter.kt"
    l = {
        0x36,
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $item:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

.field final synthetic $textView:Landroid/widget/TextView;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/history/EducationHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/history/EducationHistoryAdapter;",
            "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;",
            "Landroid/widget/TextView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$item:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$textView:Landroid/widget/TextView;

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
    new-instance p1, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$item:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$textView:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;-><init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/widget/TextView;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget v2, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->label:I

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v2, :cond_2

    .line 10
    .line 11
    if-eq v2, v0, :cond_1

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->D1(Lcom/transsion/edcation/history/EducationHistoryAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v2, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$item:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput v0, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->label:I

    .line 48
    .line 49
    invoke-interface {p1, v2, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v1, :cond_3

    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Long;

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    move-wide v6, v4

    .line 68
    :goto_1
    iget-object p1, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$item:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectDurationSeconds()Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    goto :goto_2

    .line 81
    :cond_5
    move-wide v8, v4

    .line 82
    :goto_2
    cmp-long p1, v8, v4

    .line 83
    .line 84
    if-lez p1, :cond_6

    .line 85
    .line 86
    div-long/2addr v6, v8

    .line 87
    long-to-float p1, v6

    .line 88
    const/high16 v2, 0x41200000    # 10.0f

    .line 89
    .line 90
    div-float/2addr p1, v2

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    const/4 p1, 0x0

    .line 93
    :goto_3
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 94
    .line 95
    const/high16 v2, 0x42c80000    # 100.0f

    .line 96
    .line 97
    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->g(FF)F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    new-array v2, v0, [Ljava/lang/Object;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    aput-object p1, v2, v4

    .line 109
    .line 110
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v0, "%.0f"

    .line 115
    .line 116
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, "format(...)"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v2, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1$1;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->$textView:Landroid/widget/TextView;

    .line 132
    .line 133
    iget-object v5, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->this$0:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    invoke-direct {v2, v4, v5, p1, v6}, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1$1;-><init>(Landroid/widget/TextView;Lcom/transsion/edcation/history/EducationHistoryAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 137
    .line 138
    .line 139
    iput v3, p0, Lcom/transsion/edcation/history/EducationHistoryAdapter$calculateProgress$1;->label:I

    .line 140
    .line 141
    invoke-static {v0, v2, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-ne p1, v1, :cond_7

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p1
.end method
