.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b1(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;J)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$saveHistory$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x2e5,
        0x2e6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $progress:J

.field final synthetic $shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

.field final synthetic $subject:Lcom/transsion/shorttv/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A0()Lur/h;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 45
    .line 46
    iget-wide v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    .line 47
    .line 48
    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

    .line 49
    .line 50
    move-object v9, p0

    .line 51
    invoke-interface/range {v4 .. v9}, Lur/h;->a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    const-string p1, ""

    .line 75
    .line 76
    :cond_4
    move-object v4, p1

    .line 77
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    iget-wide v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    .line 84
    .line 85
    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

    .line 86
    .line 87
    move-object v8, p0

    .line 88
    invoke-interface/range {v3 .. v8}, Lur/d;->d(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    if-ne p1, v0, :cond_5

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1
.end method
