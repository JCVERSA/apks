.class final Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "Lcom/transsion/room/api/bean/LocationPlace;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.room.helper.LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1"
    f = "LocationPlaceHelper.kt"
    l = {
        0x19b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic $request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

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
    new-instance p1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->L$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    iput v2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;->label:I

    .line 44
    .line 45
    new-instance v2, Lkotlin/coroutines/SafeContinuation;

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, v3}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/transsion/room/helper/LocationPlaceHelper;->i()Lcom/google/android/libraries/places/api/net/PlacesClient;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-interface {v3, p1}, Lcom/google/android/libraries/places/api/net/PlacesClient;->findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lcom/google/android/gms/tasks/Task;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p1, 0x0

    .line 66
    :goto_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 67
    .line 68
    const/4 v7, 0x4

    .line 69
    const/4 v8, 0x0

    .line 70
    const-string v4, "LocationP"

    .line 71
    .line 72
    const-string v5, "getNearbyPlaces --findCurrentPlace"

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    new-instance v3, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;

    .line 81
    .line 82
    invoke-direct {v3, v2, v1}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1$a;-><init>(Lkotlin/coroutines/Continuation;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {v2}, Lkotlin/coroutines/SafeContinuation;->a()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne p1, v1, :cond_4

    .line 97
    .line 98
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    if-ne p1, v0, :cond_5

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_5
    :goto_1
    return-object p1
.end method
