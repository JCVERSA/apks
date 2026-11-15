.class public final Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;
.super Lcom/google/android/gms/location/LocationCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 3

    .line 1
    const-string v0, "availability"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 13
    .line 14
    const-string v0, "Location services unavailable"

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "LocationP"

    .line 18
    .line 19
    invoke-virtual {p1, v2, v0, v1}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 13

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v1}, Lcom/transsion/room/helper/LocationPlaceHelper;->j(I)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/transsion/room/helper/LocationPlaceHelper;->k(Lcom/transsion/room/helper/LocationPlaceHelper;Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "Location--update--------------1 success "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", :"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x1

    .line 61
    const-string v7, "LocationP"

    .line 62
    .line 63
    invoke-virtual {p1, v7, v0, v1}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v10, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    move-object v1, v10

    .line 78
    invoke-direct/range {v1 .. v7}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1;-><init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 79
    .line 80
    .line 81
    const/4 v11, 0x3

    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v8, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    move-object v7, p1

    .line 86
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-nez p1, :cond_1

    .line 91
    .line 92
    :cond_0
    iget-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    .line 93
    .line 94
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v4, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$2$1;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-direct {v4, p1, v0}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x3

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 113
    .line 114
    .line 115
    :cond_1
    return-void
.end method
