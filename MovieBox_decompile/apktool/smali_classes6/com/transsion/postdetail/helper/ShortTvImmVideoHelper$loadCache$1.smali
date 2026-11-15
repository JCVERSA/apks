.class final Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->t()V
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
    c = "com.transsion.postdetail.helper.ShortTvImmVideoHelper$loadCache$1"
    f = "ShortTvImmVideoHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

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
    new-instance p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    :try_start_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "k_save_video"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lez v1, :cond_0

    .line 33
    .line 34
    const-class v1, Lcom/transsion/moviedetailapi/bean/Subject;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v0, p1

    .line 48
    :goto_0
    move-object v1, v0

    .line 49
    check-cast v1, Ljava/util/Collection;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->f(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->i(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    move-object v1, v0

    .line 73
    check-cast v1, Ljava/util/Collection;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x1

    .line 80
    xor-int/2addr v1, v2

    .line 81
    if-ne v1, v2, :cond_3

    .line 82
    .line 83
    iget-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;->this$0:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method
