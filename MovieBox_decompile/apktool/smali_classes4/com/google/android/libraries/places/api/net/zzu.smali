.class final Lcom/google/android/libraries/places/api/net/zzu;
.super Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;
.source "source.java"


# instance fields
.field private zza:Lcom/google/android/libraries/places/api/model/Place;

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:Lcom/google/android/gms/tasks/CancellationToken;

.field private zze:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlace()Lcom/google/android/libraries/places/api/model/Place;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zza:Lcom/google/android/libraries/places/api/model/Place;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUtcTimeMillis()J
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zze:B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzc:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "Property \"utcTimeMillis\" has not been set"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlace(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzu;->zza:Lcom/google/android/libraries/places/api/model/Place;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlaceId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUtcTimeMillis(J)Lcom/google/android/libraries/places/api/net/IsOpenRequest$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzc:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-byte p1, p0, Lcom/google/android/libraries/places/api/net/zzu;->zze:B

    .line 5
    .line 6
    return-object p0
.end method

.method final zza()Lcom/google/android/libraries/places/api/net/IsOpenRequest;
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/google/android/libraries/places/api/net/zzu;->zze:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/libraries/places/api/net/zzw;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzu;->zza:Lcom/google/android/libraries/places/api/model/Place;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzb:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzc:J

    .line 13
    .line 14
    iget-object v7, p0, Lcom/google/android/libraries/places/api/net/zzu;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    move-object v2, v0

    .line 18
    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/places/api/net/zzw;-><init>(Lcom/google/android/libraries/places/api/model/Place;Ljava/lang/String;JLcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/libraries/places/api/net/zzv;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Missing required properties: utcTimeMillis"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method
