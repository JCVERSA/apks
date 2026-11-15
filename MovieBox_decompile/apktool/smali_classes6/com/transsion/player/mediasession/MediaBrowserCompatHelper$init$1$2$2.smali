.class final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->p(Lkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.player.mediasession.MediaBrowserCompatHelper$init$1$2$2"
    f = "MediaBrowserCompatHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/support/v4/media/session/MediaControllerCompat$e;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Landroid/app/Application;

.field final synthetic $this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/support/v4/media/session/MediaControllerCompat$e;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;",
            "Landroid/app/Application;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

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
    new-instance p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 29
    .line 30
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    .line 33
    .line 34
    new-instance v2, Landroid/content/ComponentName;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    .line 37
    .line 38
    const-class v4, Lcom/transsion/player/mediasession/MediaService;

    .line 39
    .line 40
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$c;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->n(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/MediaBrowserCompat;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->a()V

    .line 65
    .line 66
    .line 67
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method
