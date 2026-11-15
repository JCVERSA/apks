.class final Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/music/MusicFloatManager;->onPlayerRelease(Lgn/e;)V
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
    c = "com.transsion.baseui.music.MusicFloatManager$onPlayerRelease$1"
    f = "MusicFloatManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $mediaSource:Lgn/e;

.field label:I

.field final synthetic this$0:Lcom/transsion/baseui/music/MusicFloatManager;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/music/MusicFloatManager;Lgn/e;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baseui/music/MusicFloatManager;",
            "Lgn/e;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->$mediaSource:Lgn/e;

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
    new-instance p1, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->$mediaSource:Lgn/e;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;-><init>(Lcom/transsion/baseui/music/MusicFloatManager;Lgn/e;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/transsion/baseui/music/MusicFloatManager;->d(Lcom/transsion/baseui/music/MusicFloatManager;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->$mediaSource:Lgn/e;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lgn/e;->h()Lcom/transsion/player/mediasession/MediaItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getSubjectId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v2

    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " --> onPlayerRelease() --> subjectId = "

    .line 45
    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/transsion/baseui/music/MusicFloatManager;->g(Lcom/transsion/baseui/music/MusicFloatManager;)Lcom/transsion/player/orplayer/f;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 68
    .line 69
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/f;->removePlayerListener(Lcom/transsion/player/orplayer/e;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 73
    .line 74
    invoke-static {p1, v2}, Lcom/transsion/baseui/music/MusicFloatManager;->h(Lcom/transsion/baseui/music/MusicFloatManager;Lcom/transsion/player/orplayer/f;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/transsion/baseui/music/MusicFloatManager;->f(Lcom/transsion/baseui/music/MusicFloatManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->$mediaSource:Lgn/e;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/transsion/player/orplayer/e;

    .line 100
    .line 101
    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/e;->onPlayerRelease(Lgn/e;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Lcom/transsion/baseui/music/MusicFloatManager;->B(Lcom/transsion/player/mediasession/MediaItem;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatManager$onPlayerRelease$1;->this$0:Lcom/transsion/baseui/music/MusicFloatManager;

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lcom/transsion/baseui/music/MusicFloatManager;->C(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lcom/transsion/baseui/music/MusicReport;->a:Lcom/transsion/baseui/music/MusicReport;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicReport;->c()V

    .line 118
    .line 119
    .line 120
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p1

    .line 123
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 124
    .line 125
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1
.end method
