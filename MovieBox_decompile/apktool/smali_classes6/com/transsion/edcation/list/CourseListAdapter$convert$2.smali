.class final Lcom/transsion/edcation/list/CourseListAdapter$convert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/edcation/list/CourseListAdapter;->E1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V
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
    c = "com.transsion.edcation.list.CourseListAdapter$convert$2"
    f = "CourseListAdapter.kt"
    l = {
        0x2d,
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/transsion/edcation/bean/CourseBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/edcation/list/CourseListAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/edcation/list/CourseListAdapter;",
            "Lcom/transsion/edcation/bean/CourseBean;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/edcation/list/CourseListAdapter$convert$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

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
    new-instance p1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;-><init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    if-eqz v3, :cond_2

    .line 11
    .line 12
    if-eq v3, v1, :cond_1

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/transsion/edcation/list/CourseListAdapter;->D1(Lcom/transsion/edcation/list/CourseListAdapter;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    :cond_3
    iput v1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    .line 53
    .line 54
    invoke-interface {p1, v3, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v2, :cond_4

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Long;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const-wide/16 v5, 0x0

    .line 71
    .line 72
    :goto_1
    iget-object p1, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$item:Lcom/transsion/edcation/bean/CourseBean;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getDurationSeconds()Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    goto :goto_2

    .line 85
    :cond_6
    move p1, v0

    .line 86
    :goto_2
    if-lez p1, :cond_7

    .line 87
    .line 88
    long-to-float v3, v5

    .line 89
    const/high16 v5, 0x41200000    # 10.0f

    .line 90
    .line 91
    div-float/2addr v3, v5

    .line 92
    int-to-float p1, p1

    .line 93
    div-float/2addr v3, p1

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    const/4 v3, 0x0

    .line 96
    :goto_3
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 97
    .line 98
    const/high16 p1, 0x42c80000    # 100.0f

    .line 99
    .line 100
    invoke-static {v3, p1}, Lkotlin/ranges/RangesKt;->g(FF)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->c(F)Ljava/lang/Float;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    new-array v3, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    aput-object p1, v3, v0

    .line 111
    .line 112
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "%.0f"

    .line 117
    .line 118
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v0, "format(...)"

    .line 123
    .line 124
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-instance v1, Lcom/transsion/edcation/list/CourseListAdapter$convert$2$1;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 134
    .line 135
    iget-object v5, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->this$0:Lcom/transsion/edcation/list/CourseListAdapter;

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-direct {v1, v3, v5, p1, v6}, Lcom/transsion/edcation/list/CourseListAdapter$convert$2$1;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/list/CourseListAdapter;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 139
    .line 140
    .line 141
    iput v4, p0, Lcom/transsion/edcation/list/CourseListAdapter$convert$2;->label:I

    .line 142
    .line 143
    invoke-static {v0, v1, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v2, :cond_8

    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 151
    .line 152
    return-object p1
.end method
