.class final Lcom/google/android/libraries/places/api/net/zzac;
.super Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;

.field private zzc:Ljava/util/List;

.field private zzd:Ljava/util/List;

.field private zze:Ljava/util/List;

.field private zzf:Ljava/lang/Integer;

.field private zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zzh:Ljava/util/List;

.field private zzi:Lcom/google/android/gms/tasks/CancellationToken;

.field private zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;-><init>()V

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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExcludedPrimaryTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExcludedTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludedPrimaryTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludedTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Property \"locationRestriction\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getMaxResultCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Property \"placeFields\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getRankPreference()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExcludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setExcludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIncludedPrimaryTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIncludedTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null locationRestriction"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setMaxResultCount(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null placeFields"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setRankPreference(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method final zza()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;
    .locals 13

    .line 1
    iget-object v7, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 2
    .line 3
    if-eqz v7, :cond_1

    .line 4
    .line 5
    iget-object v8, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    .line 6
    .line 7
    if-nez v8, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v12, Lcom/google/android/libraries/places/api/net/zzae;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zza:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzb:Ljava/util/List;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzc:Ljava/util/List;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzd:Ljava/util/List;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzac;->zze:Ljava/util/List;

    .line 21
    .line 22
    iget-object v6, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzf:Ljava/lang/Integer;

    .line 23
    .line 24
    iget-object v9, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzi:Lcom/google/android/gms/tasks/CancellationToken;

    .line 25
    .line 26
    iget-object v10, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzj:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v0, v12

    .line 30
    invoke-direct/range {v0 .. v11}, Lcom/google/android/libraries/places/api/net/zzae;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/util/List;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;Lcom/google/android/libraries/places/api/net/zzad;)V

    .line 31
    .line 32
    .line 33
    return-object v12

    .line 34
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const-string v1, " locationRestriction"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzac;->zzh:Ljava/util/List;

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    const-string v1, " placeFields"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v2, "Missing required properties:"

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1
.end method
