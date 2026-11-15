.class final Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/moviedetailapi/bean/RoomBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.room.viewmodel.RoomViewModel$getMyRooms$1$1"
    f = "RoomViewModel.kt"
    l = {
        0x77,
        0x79,
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/room/viewmodel/RoomViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/room/viewmodel/RoomViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/room/viewmodel/RoomViewModel;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$page:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$perPage:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$userId:Ljava/lang/String;

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
    .locals 7
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
    new-instance v6, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$page:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$perPage:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$userId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;-><init>(Lcom/transsion/room/viewmodel/RoomViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v10, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v11

    .line 6
    iget v0, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->label:I

    .line 7
    .line 8
    const/4 v12, 0x3

    .line 9
    const/4 v13, 0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    if-eq v0, v13, :cond_1

    .line 16
    .line 17
    if-ne v0, v12, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object v0, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 35
    .line 36
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    move-object v14, v0

    .line 40
    move-object/from16 v0, p1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v14, v0

    .line 49
    check-cast v14, Lkotlinx/coroutines/flow/b;

    .line 50
    .line 51
    iget-object v0, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->this$0:Lcom/transsion/room/viewmodel/RoomViewModel;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/transsion/room/viewmodel/RoomViewModel;->o(Lcom/transsion/room/viewmodel/RoomViewModel;)Lip/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v2, Lgg/a;->a:Lgg/a$a;

    .line 58
    .line 59
    invoke-virtual {v2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v3, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$page:Ljava/lang/String;

    .line 64
    .line 65
    iget v4, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$perPage:I

    .line 66
    .line 67
    iget-object v5, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->$userId:Ljava/lang/String;

    .line 68
    .line 69
    iput-object v14, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v1, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->label:I

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/16 v8, 0x30

    .line 76
    .line 77
    const/4 v9, 0x0

    .line 78
    move-object v1, v2

    .line 79
    move-object v2, v3

    .line 80
    move v3, v4

    .line 81
    move-object v4, v5

    .line 82
    move v5, v6

    .line 83
    move v6, v7

    .line 84
    move-object v7, p0

    .line 85
    invoke-static/range {v0 .. v9}, Lip/a$a;->a(Lip/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v11, :cond_4

    .line 90
    .line 91
    return-object v11

    .line 92
    :cond_4
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "0"

    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v2, 0x0

    .line 105
    if-nez v1, :cond_5

    .line 106
    .line 107
    iput-object v2, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    iput v13, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->label:I

    .line 110
    .line 111
    invoke-interface {v14, v2, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-ne v0, v11, :cond_6

    .line 116
    .line 117
    return-object v11

    .line 118
    :cond_5
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iput-object v2, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    iput v12, v10, Lcom/transsion/room/viewmodel/RoomViewModel$getMyRooms$1$1;->label:I

    .line 125
    .line 126
    invoke-interface {v14, v0, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-ne v0, v11, :cond_6

    .line 131
    .line 132
    return-object v11

    .line 133
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object v0
.end method
