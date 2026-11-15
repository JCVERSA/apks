.class final Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/VideoSubtitleManagerImp;->w(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.subtitle.VideoSubtitleManagerImp$checkStreamSubtitle$1$1"
    f = "VideoSubtitleManagerImp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $hasSubtitle:Z

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;ZLcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$hasSubtitle:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

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
    new-instance p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$hasSubtitle:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/transsion/subtitle/VideoSubtitleManagerImp;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$resultCallback:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$hasSubtitle:Z

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->this$0:Lcom/transsion/subtitle/VideoSubtitleManagerImp;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/subtitle/VideoSubtitleManagerImp;->r(Lcom/transsion/subtitle/VideoSubtitleManagerImp;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Iterable;

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$hasSubtitle:Z

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/subtitle/VideoSubtitleManagerImp$checkStreamSubtitle$1$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Llt/c;

    .line 51
    .line 52
    invoke-interface {v2, v0, v1}, Llt/c;->K(ZLcom/transsion/baselib/db/download/DownloadBean;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method
