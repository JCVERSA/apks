.class final Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/VideoPipManagerImp;->e(Z)V
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
    c = "com.transsion.videofloat.manager.VideoPipManagerImp$closePip$1$1"
    f = "VideoPipManagerImp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $addCache:Z

.field label:I

.field final synthetic this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;


# direct methods
.method constructor <init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/videofloat/manager/VideoPipManagerImp;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->$addCache:Z

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
    new-instance p1, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->$addCache:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;-><init>(Lcom/transsion/videofloat/manager/VideoPipManagerImp;ZLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->s(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ldw/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->$addCache:Z

    .line 23
    .line 24
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->t(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {p1}, Ldw/a;->k()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->u(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)Landroidx/fragment/app/FragmentActivity;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v4, " \u624b\u52a8\u6253\u5f00\u64ad\u653e\u9875\uff0cclosePip--- "

    .line 47
    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, "\uff0c activity:"

    .line 55
    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v4, "VideoFloat-pip"

    .line 67
    .line 68
    invoke-virtual {v3, v4, v1, v0}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    if-eqz v2, :cond_0

    .line 72
    .line 73
    sget-object v1, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    .line 74
    .line 75
    invoke-virtual {p1}, Ldw/a;->k()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1}, Ldw/a;->f()Lcom/transsion/player/orplayer/f;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v1, v2, p1}, Lcom/transsion/videofloat/manager/a0;->a(Ljava/lang/String;Lcom/transsion/player/orplayer/f;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-static {p1, v1, v0, v1}, Lcw/e$b;->b(Lcw/e;Landroidx/fragment/app/FragmentActivity;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->q(Lcom/transsion/videofloat/manager/VideoPipManagerImp;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-static {p1, v0}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->x(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 104
    .line 105
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->y(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Lcom/transsion/player/orplayer/f;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 109
    .line 110
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->A(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Lcom/transsion/player/ui/ORPlayerView;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 114
    .line 115
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->C(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Landroid/view/ViewGroup;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 119
    .line 120
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->B(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Landroid/view/ViewGroup;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 124
    .line 125
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->z(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Landroid/view/ViewGroup;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/transsion/videofloat/manager/VideoPipManagerImp$closePip$1$1;->this$0:Lcom/transsion/videofloat/manager/VideoPipManagerImp;

    .line 129
    .line 130
    invoke-static {p1, v1}, Lcom/transsion/videofloat/manager/VideoPipManagerImp;->w(Lcom/transsion/videofloat/manager/VideoPipManagerImp;Ldw/a;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method
