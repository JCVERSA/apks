.class final Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel;->t(Landroid/content/Context;Ljava/lang/String;I)V
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
    c = "com.transsion.room.viewmodel.RoomViewModel$getCommunityRooms$1"
    f = "RoomViewModel.kt"
    l = {
        0xb3,
        0xc8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/viewmodel/RoomViewModel;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$page:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$perPage:I

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
    new-instance p1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$context:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$page:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$perPage:I

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$1;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$context:Landroid/content/Context;

    .line 40
    .line 41
    invoke-direct {p1, v1, v5, v4}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$2;

    .line 57
    .line 58
    invoke-direct {v1, v4}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$a;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 68
    .line 69
    invoke-direct {v1, v5}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$a;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    .line 70
    .line 71
    .line 72
    iput v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->label:I

    .line 73
    .line 74
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    :goto_0
    new-instance p1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$page:Ljava/lang/String;

    .line 84
    .line 85
    iget v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->$perPage:I

    .line 86
    .line 87
    iget-object v5, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 88
    .line 89
    invoke-direct {p1, v1, v3, v5, v4}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$4;-><init>(Ljava/lang/String;ILcom/transsion/room/viewmodel/RoomViewModel;Lkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$5;

    .line 105
    .line 106
    invoke-direct {v1, v4}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$5;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    new-instance v1, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$b;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 116
    .line 117
    invoke-direct {v1, v3}, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1$b;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;)V

    .line 118
    .line 119
    .line 120
    iput v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getCommunityRooms$1;->label:I

    .line 121
    .line 122
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v0, :cond_4

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p1
.end method
