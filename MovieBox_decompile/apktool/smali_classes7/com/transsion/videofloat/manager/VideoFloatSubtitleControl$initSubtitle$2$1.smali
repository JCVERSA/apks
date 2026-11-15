.class final Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.videofloat.manager.VideoFloatSubtitleControl$initSubtitle$2$1"
    f = "VideoFloatSubtitleControl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lht/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $subtitleSavedSelectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lht/a;",
            ">;",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$subtitleSavedSelectId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$subtitleSavedSelectId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;-><init>(Ljava/util/List;Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$list:Ljava/util/List;

    .line 12
    .line 13
    check-cast p1, Ljava/util/Collection;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$subtitleSavedSelectId:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$list:Ljava/util/List;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->g(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/lang/String;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->this$0:Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl$initSubtitle$2$1;->$list:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;->h(Lcom/transsion/videofloat/manager/VideoFloatSubtitleControl;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
