.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->K(DDLandroid/location/Address;)V
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
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getRecommendRooms$1"
    f = "RoomPostViewModel.kt"
    l = {
        0x1c5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $address:Landroid/location/Address;

.field final synthetic $lat:D

.field final synthetic $lon:D

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "DD",
            "Landroid/location/Address;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lat:D

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lon:D

    .line 6
    .line 7
    iput-object p6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$address:Landroid/location/Address;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lat:D

    .line 6
    .line 7
    iget-wide v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lon:D

    .line 8
    .line 9
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$address:Landroid/location/Address;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->label:I

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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 30
    .line 31
    iget-wide v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lat:D

    .line 32
    .line 33
    iget-wide v7, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$lon:D

    .line 34
    .line 35
    iget-object v9, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->$address:Landroid/location/Address;

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    move-object v3, p1

    .line 39
    invoke-direct/range {v3 .. v10}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;DDLandroid/location/Address;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$2;

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$a;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 67
    .line 68
    invoke-direct {v1, v3}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1$a;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V

    .line 69
    .line 70
    .line 71
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getRecommendRooms$1;->label:I

    .line 72
    .line 73
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v0, :cond_2

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method
