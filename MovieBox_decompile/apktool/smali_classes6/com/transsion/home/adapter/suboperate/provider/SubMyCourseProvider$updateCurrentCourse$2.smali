.class final Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->W()V
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
    c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$updateCurrentCourse$2"
    f = "SubMyCourseProvider.kt"
    l = {
        0x8c,
        0x94
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

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
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->label:I

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
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->G(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/edcation/bean/CourseBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    :cond_3
    const-string v1, ""

    .line 56
    .line 57
    :cond_4
    iput v3, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->label:I

    .line 58
    .line 59
    invoke-interface {p1, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Long;

    .line 67
    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    goto :goto_1

    .line 75
    :cond_6
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    :goto_1
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/transsion/edcation/bean/CourseBean;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_7

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getDurationSeconds()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_2

    .line 96
    :cond_7
    const/4 p1, 0x0

    .line 97
    :goto_2
    if-lez p1, :cond_8

    .line 98
    .line 99
    long-to-float v1, v3

    .line 100
    const/high16 v3, 0x3f800000    # 1.0f

    .line 101
    .line 102
    mul-float/2addr v1, v3

    .line 103
    int-to-float p1, p1

    .line 104
    div-float/2addr v1, p1

    .line 105
    const/high16 p1, 0x41200000    # 10.0f

    .line 106
    .line 107
    div-float/2addr v1, p1

    .line 108
    goto :goto_3

    .line 109
    :cond_8
    const/4 v1, 0x0

    .line 110
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v3, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;

    .line 115
    .line 116
    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-direct {v3, v4, v1, v5}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;FLkotlin/coroutines/Continuation;)V

    .line 120
    .line 121
    .line 122
    iput v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->label:I

    .line 123
    .line 124
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    if-ne p1, v0, :cond_9

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p1
.end method
