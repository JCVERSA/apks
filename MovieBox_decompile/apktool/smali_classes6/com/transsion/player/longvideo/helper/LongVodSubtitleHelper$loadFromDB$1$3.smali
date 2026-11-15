.class final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1$3"
    f = "LongVodSubtitleHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lht/a;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lht/a;",
            ">;",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

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
    new-instance p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;-><init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

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
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    .line 40
    .line 41
    check-cast v0, Ljava/util/Collection;

    .line 42
    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->A(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/subtitle/VideoSubtitleControl;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->f0(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 58
    .line 59
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->y(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method
