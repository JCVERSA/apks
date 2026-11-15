.class final Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper;->q(DDLkotlin/jvm/functions/Function1;)V
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
    c = "com.transsion.room.helper.LocationPlaceHelper$getNearbyPlacesWithDetailApi$1"
    f = "LocationPlaceHelper.kt"
    l = {
        0x19a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic $request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

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
    new-instance p1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance p1, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$request:Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$currentLatLng:Lcom/google/android/gms/maps/model/LatLng;

    .line 33
    .line 34
    invoke-direct {p1, v1, v4, v2}, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1$result$1;-><init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/maps/model/LatLng;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    iput v3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->label:I

    .line 38
    .line 39
    const-wide/16 v3, 0x2710

    .line 40
    .line 41
    invoke-static {v3, v4, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->c(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 57
    .line 58
    const/4 v7, 0x4

    .line 59
    const/4 v8, 0x0

    .line 60
    const-string v4, "LocationP"

    .line 61
    .line 62
    const-string v5, "getNearbyPlaces request timed out"

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getNearbyPlacesWithDetailApi$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
