.class public final Lcom/google/android/libraries/places/internal/zzel;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:J


# instance fields
.field private final zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzjj;

.field private final zzd:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/google/android/libraries/places/internal/zzel;->zza:J

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/zzjj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzel;->zzd:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzel;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzc:Lcom/google/android/libraries/places/internal/zzjj;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-wide v1, Lcom/google/android/libraries/places/internal/zzel;->zza:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzd:Landroid/content/Context;

    .line 13
    .line 14
    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 15
    .line 16
    invoke-static {v3, v4}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const/16 v3, 0x64

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v3, 0x66

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzc:Lcom/google/android/libraries/places/internal/zzjj;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzel;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->build()Lcom/google/android/gms/location/CurrentLocationRequest;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v4, v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 48
    .line 49
    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 54
    .line 55
    invoke-direct {v4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 56
    .line 57
    .line 58
    move-object p1, v4

    .line 59
    :goto_1
    const-string v4, "Location timeout."

    .line 60
    .line 61
    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzjj;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/google/android/libraries/places/internal/zzjh;

    .line 65
    .line 66
    invoke-direct {v1, v3, p1}, Lcom/google/android/libraries/places/internal/zzjh;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/google/android/libraries/places/internal/zzji;

    .line 77
    .line 78
    invoke-direct {v1, v3, p1}, Lcom/google/android/libraries/places/internal/zzji;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance v0, Lcom/google/android/libraries/places/internal/zzek;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzek;-><init>(Lcom/google/android/libraries/places/internal/zzel;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1
.end method
