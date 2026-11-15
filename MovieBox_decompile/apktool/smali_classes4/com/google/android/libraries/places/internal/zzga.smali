.class public final Lcom/google/android/libraries/places/internal/zzga;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/api/net/PlacesClient;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzev;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzel;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzeq;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzjr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzhc;

.field private final zzg:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzev;Lcom/google/android/libraries/places/internal/zzel;Lcom/google/android/libraries/places/internal/zzeq;Lcom/google/android/libraries/places/internal/zzjr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/internal/zzhc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzga;->zzb:Lcom/google/android/libraries/places/internal/zzel;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzga;->zzc:Lcom/google/android/libraries/places/internal/zzeq;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 17
    .line 18
    return-void
.end method

.method private static zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V
    .locals 3
    .param p1    # Lcom/google/android/libraries/places/internal/zzej;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p1, "Duration"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v1, v0, [Lcom/google/android/libraries/places/internal/zzef;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/internal/zzef;[Lcom/google/android/libraries/places/internal/zzef;)Lcom/google/android/libraries/places/internal/zzef;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 20
    .line 21
    .line 22
    const-string p1, "Battery"

    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-array v0, v0, [Lcom/google/android/libraries/places/internal/zzef;

    .line 29
    .line 30
    aput-object p1, v0, v2

    .line 31
    .line 32
    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/internal/zzef;[Lcom/google/android/libraries/places/internal/zzef;)Lcom/google/android/libraries/places/internal/zzef;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final fetchResolvedPhotoUri(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzd(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzga;->zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final isOpen(Lcom/google/android/libraries/places/api/net/IsOpenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/IsOpenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/IsOpenResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzf(Lcom/google/android/libraries/places/api/net/IsOpenRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final searchByText(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/SearchByTextResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final searchNearby(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzga;->zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string p2, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzev;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfw;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfw;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzg(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfu;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzfu;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 41
    .line 42
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 55
    .line 56
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfv;

    .line 61
    .line 62
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzfv;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 70
    .line 71
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object p1

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string p2, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzf(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/google/android/libraries/places/internal/zzft;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzft;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final zzd(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p2, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zze(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfp;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/google/android/libraries/places/internal/zzfp;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 41
    .line 42
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :catch_0
    move-exception p1

    .line 51
    goto :goto_0

    .line 52
    :catch_1
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 55
    .line 56
    invoke-interface {v1, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzc(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfq;

    .line 61
    .line 62
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzfq;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 70
    .line 71
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object p1

    .line 79
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    const-string p2, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 7
    .line 8
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzb:Lcom/google/android/libraries/places/internal/zzel;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzel;->zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance p3, Lcom/google/android/libraries/places/internal/zzfn;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {p3, p0, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzfn;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance p3, Lcom/google/android/libraries/places/internal/zzfo;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    move-object v0, p3

    .line 44
    move-object v1, p0

    .line 45
    move-object v2, p1

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzfo;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 54
    .line 55
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    goto :goto_0

    .line 65
    :catch_1
    move-exception p1

    .line 66
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public final zzf(Lcom/google/android/libraries/places/api/net/IsOpenRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 8

    .line 1
    const/4 p2, 0x1

    .line 2
    :try_start_0
    const-string v0, "Request must not be null."

    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getPlaceId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getUtcTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 20
    .line 21
    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 22
    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    sget v5, Lcom/google/android/libraries/places/api/model/zzce;->zza:I

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    new-array v5, v5, [Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 30
    .line 31
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->BUSINESS_STATUS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    aput-object v6, v5, v7

    .line 35
    .line 36
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->CURRENT_OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 37
    .line 38
    aput-object v6, v5, p2

    .line 39
    .line 40
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 41
    .line 42
    const/4 v7, 0x2

    .line 43
    aput-object v6, v5, v7

    .line 44
    .line 45
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->UTC_OFFSET:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 46
    .line 47
    const/4 v7, 0x3

    .line 48
    aput-object v6, v5, v7

    .line 49
    .line 50
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto/16 :goto_1

    .line 57
    .line 58
    :catch_1
    move-exception p1

    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    sget-object v7, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 73
    .line 74
    if-ne v6, v7, :cond_5

    .line 75
    .line 76
    :cond_1
    if-nez v6, :cond_2

    .line 77
    .line 78
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->BUSINESS_STATUS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 79
    .line 80
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->CURRENT_OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 90
    .line 91
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->OPENING_HOURS:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 101
    .line 102
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    if-nez v6, :cond_5

    .line 110
    .line 111
    sget-object v6, Lcom/google/android/libraries/places/api/model/Place$Field;->UTC_OFFSET:Lcom/google/android/libraries/places/api/model/Place$Field;

    .line 112
    .line 113
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    const/4 v7, 0x0

    .line 121
    if-eqz v6, :cond_7

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    invoke-static {v0, v2, v3}, Lcom/google/android/libraries/places/api/model/zzce;->zza(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/IsOpenResponse;->newInstance(Ljava/lang/Boolean;)Lcom/google/android/libraries/places/api/net/IsOpenResponse;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_6
    throw v7

    .line 142
    :cond_7
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_8
    if-eqz v1, :cond_a

    .line 149
    .line 150
    invoke-static {v1, v5}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/IsOpenRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzg:Lcom/google/android/libraries/places/internal/zzjs;

    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzjs;->zzh()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 179
    .line 180
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 181
    .line 182
    invoke-virtual {v5, p1, p2}, Lcom/google/android/libraries/places/internal/zzhc;->zzg(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    new-instance v6, Lcom/google/android/libraries/places/internal/zzfx;

    .line 187
    .line 188
    invoke-direct {v6, p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzfx;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfy;

    .line 196
    .line 197
    invoke-direct {p2, v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzfy;-><init>(Lcom/google/android/libraries/places/api/model/Place;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 205
    .line 206
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :cond_9
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 215
    .line 216
    invoke-interface {v5, p1, p2}, Lcom/google/android/libraries/places/internal/zzev;->zzb(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    new-instance v6, Lcom/google/android/libraries/places/internal/zzfz;

    .line 221
    .line 222
    invoke-direct {v6, p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzfz;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfm;

    .line 230
    .line 231
    invoke-direct {p2, v0, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzfm;-><init>(Lcom/google/android/libraries/places/api/model/Place;JLcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 239
    .line 240
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    return-object p1

    .line 248
    :cond_a
    throw v7
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    throw p1
.end method

.method final synthetic zzg(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Ljava/lang/String;ILandroid/location/Location;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string p2, "Location must not be null."

    .line 2
    .line 3
    invoke-static {p4, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzc:Lcom/google/android/libraries/places/internal/zzeq;

    .line 7
    .line 8
    const/4 p3, 0x0

    .line 9
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzeq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zznx;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzga;->zza:Lcom/google/android/libraries/places/internal/zzev;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-interface {p3, p1, p4, p2, v0}, Lcom/google/android/libraries/places/internal/zzev;->zzd(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zznx;I)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string p2, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzm(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfl;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfl;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/SearchByTextRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    :try_start_0
    const-string p2, "Request must not be null."

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzea;->zza()Lcom/google/android/libraries/places/internal/zzea;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzej;->zza()Lcom/google/android/libraries/places/internal/zzej;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzf:Lcom/google/android/libraries/places/internal/zzhc;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzhc;->zzn(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/google/android/libraries/places/internal/zzfs;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzfs;-><init>(Lcom/google/android/libraries/places/internal/zzga;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;ILcom/google/android/libraries/places/internal/zzej;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance p2, Lcom/google/android/libraries/places/internal/zzfr;

    .line 30
    .line 31
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzfr;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkd;->zzb(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method final synthetic zzj(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "FetchPhoto"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    .line 6
    .line 7
    .line 8
    const-string p1, "GetPlace"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 22
    .line 23
    return-object p1
.end method

.method final synthetic zzl(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzjr;->zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    .line 5
    .line 6
    .line 7
    const-string p1, "FetchPlace"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzm(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzo(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    .line 6
    .line 7
    .line 8
    const-string p1, "IsOpenFetchPlace"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 22
    .line 23
    return-object p1
.end method

.method final synthetic zzn(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzo(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V

    .line 6
    .line 7
    .line 8
    const-string p1, "IsOpenGetPlace"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 22
    .line 23
    return-object p1
.end method

.method final synthetic zzo(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "GetPhotoMedia"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzp(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzjr;->zzm(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;II)V

    .line 6
    .line 7
    .line 8
    const-string p1, "FindAutocompletePredictionsOnePlatform"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 22
    .line 23
    return-object p1
.end method

.method final synthetic zzq(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, p1, v1, p2}, Lcom/google/android/libraries/places/internal/zzjr;->zzm(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;II)V

    .line 5
    .line 6
    .line 7
    const-string p1, "FindAutocompletePredictions"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzr(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzga;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    .line 2
    .line 3
    invoke-interface {p4}, Lcom/google/android/libraries/places/internal/zzdv;->zza()J

    .line 4
    .line 5
    .line 6
    move-result-wide v5

    .line 7
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p6

    .line 12
    move-wide v3, p2

    .line 13
    invoke-interface/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzjr;->zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJI)V

    .line 14
    .line 15
    .line 16
    const-string p1, "FindCurrentPlace"

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1, p5}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p6}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 30
    .line 31
    return-object p1
.end method

.method final synthetic zzs(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/SearchByTextResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzg(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "SearchByText"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchByTextResponse;

    .line 21
    .line 22
    return-object p1
.end method

.method final synthetic zzt(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;ILcom/google/android/libraries/places/internal/zzej;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzga;->zzd:Lcom/google/android/libraries/places/internal/zzjr;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-interface {p2, p1, v0}, Lcom/google/android/libraries/places/internal/zzjr;->zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, "SearchNearby"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, p3}, Lcom/google/android/libraries/places/internal/zzga;->zzu(Lcom/google/android/libraries/places/internal/zzef;Lcom/google/android/libraries/places/internal/zzej;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;

    .line 21
    .line 22
    return-object p1
.end method
