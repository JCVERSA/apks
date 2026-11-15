.class final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->K1(Ljava/lang/String;Lln/b;)V
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
    c = "com.transsion.player.longvideo.ui.LongVodPlayerView$pay$1$1"
    f = "LongVodPlayerView.kt"
    l = {
        0xd6d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $config:Lln/b;

.field final synthetic $it:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $skuId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lln/b;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            "Lln/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$it:Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$skuId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$config:Lln/b;

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
    new-instance p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$it:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$skuId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$config:Lln/b;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Lln/b;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->label:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static {p1, v1, v2, v3}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->backClick$default(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->label:I

    .line 35
    .line 36
    const-wide/16 v1, 0x12c

    .line 37
    .line 38
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_2
    :goto_0
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string p1, "activity"

    .line 51
    .line 52
    const-string v0, "lottery"

    .line 53
    .line 54
    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$it:Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$skuId:Ljava/lang/String;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    const-string v0, ""

    .line 70
    .line 71
    move-object v3, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    move-object v3, p1

    .line 74
    :goto_1
    new-instance v7, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->this$0:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 77
    .line 78
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1;->$config:Lln/b;

    .line 79
    .line 80
    invoke-direct {v7, v0, v4, v2, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$pay$1$1$1;-><init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lln/b;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v8, 0x8

    .line 84
    .line 85
    const/4 v9, 0x0

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v5, 0x0

    .line 88
    invoke-static/range {v1 .. v9}, Lcom/transsion/payment/lib/f;->f(Lcom/transsion/payment/lib/f;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method
