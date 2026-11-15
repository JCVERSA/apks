.class public abstract Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
    .locals 10
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->getPlaceFields()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->getPriceLevels()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zznx;->zzj(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zznx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->setPriceLevels(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->getMinRating()Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 35
    .line 36
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v8

    .line 46
    cmpl-double v5, v8, v5

    .line 47
    .line 48
    if-ltz v5, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    cmpg-double v2, v5, v2

    .line 55
    .line 56
    if-gtz v2, :cond_0

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v2, v1

    .line 61
    :goto_0
    const-string v3, "Min rating must not be out of range of %s to %s, but was: %s."

    .line 62
    .line 63
    invoke-static {v2, v3, v7, v4, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzm(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->getPriceLevels()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const/4 v5, 0x4

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v3, v5}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const-string v5, "Price level must not be out of range of %s to %s, but was: %s."

    .line 110
    .line 111
    invoke-static {v3, v5, v7, v4, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzm(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;->zza()Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getIncludedType()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMaxResultCount()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getMinRating()Ljava/lang/Double;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getPlaceFields()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPriceLevels()Ljava/util/List;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation
.end method

.method public abstract getRegionCode()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract getTextQuery()Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract isOpenNow()Z
.end method

.method public abstract isStrictTypeFiltering()Z
.end method

.method public abstract setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setIncludedType(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setLocationBias(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationBias;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setLocationRestriction(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Lcom/google/android/libraries/places/api/model/LocationRestriction;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMaxResultCount(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setMinRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setOpenNow(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setPlaceFields(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setPriceLevels(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract setRankPreference(Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setRegionCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setStrictTypeFiltering(Z)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method public abstract setTextQuery(Ljava/lang/String;)Lcom/google/android/libraries/places/api/net/SearchByTextRequest$Builder;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end method

.method abstract zza()Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
.end method
