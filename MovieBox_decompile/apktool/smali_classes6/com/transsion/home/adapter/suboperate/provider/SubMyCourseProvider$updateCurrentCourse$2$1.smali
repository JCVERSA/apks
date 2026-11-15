.class final Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.home.adapter.suboperate.provider.SubMyCourseProvider$updateCurrentCourse$2$1"
    f = "SubMyCourseProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $percent:F

.field label:I

.field final synthetic this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;FLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->$percent:F

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
    new-instance p1, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->$percent:F

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;-><init>(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;FLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->this$0:Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->F(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider$updateCurrentCourse$2$1;->$percent:F

    .line 18
    .line 19
    const/high16 v2, 0x42c80000    # 100.0f

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->g(FF)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {p1, v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;->I(Lcom/transsion/home/adapter/suboperate/provider/SubMyCourseProvider;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;F)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
