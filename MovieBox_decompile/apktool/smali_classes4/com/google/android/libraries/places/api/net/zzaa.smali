.class final Lcom/google/android/libraries/places/api/net/zzaa;
.super Lcom/google/android/libraries/places/api/net/SearchByTextRequest;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/CancellationToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/libraries/places/api/model/LocationBias;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Z

.field private final zzh:Ljava/util/List;

.field private final zzi:Ljava/util/List;

.field private final zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzk:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzl:Z

.field private final zzm:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tasks/CancellationToken;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Ljava/lang/Integer;Ljava/lang/Double;ZLjava/util/List;Ljava/util/List;Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/libraries/places/api/net/zzz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean p12, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    .line 27
    .line 28
    iput-object p13, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_a

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_a

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_a

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_a

    .line 53
    .line 54
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_a

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_a

    .line 74
    .line 75
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_a

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_a

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_a

    .line 116
    .line 117
    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    .line 118
    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_a

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_a

    .line 137
    .line 138
    :goto_5
    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isOpenNow()Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-ne v1, v3, :cond_a

    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPlaceFields()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    .line 159
    .line 160
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPriceLevels()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_a

    .line 169
    .line 170
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 171
    .line 172
    if-nez v1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_a

    .line 190
    .line 191
    :goto_6
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    .line 192
    .line 193
    if-nez v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-nez v1, :cond_a

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRegionCode()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_9

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_9
    :goto_7
    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isStrictTypeFiltering()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-ne v1, v3, :cond_a

    .line 220
    .line 221
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getTextQuery()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_a

    .line 232
    .line 233
    return v0

    .line 234
    :cond_a
    :goto_8
    return v2
.end method

.method public final getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIncludedType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxResultCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMinRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriceLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    :goto_1
    const v3, 0xf4243

    .line 23
    .line 24
    .line 25
    xor-int/2addr v0, v3

    .line 26
    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 27
    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    move v4, v1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    :goto_2
    mul-int/2addr v0, v3

    .line 37
    xor-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v3

    .line 39
    xor-int/2addr v0, v4

    .line 40
    mul-int/2addr v0, v3

    .line 41
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 42
    .line 43
    if-nez v2, :cond_3

    .line 44
    .line 45
    move v2, v1

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    :goto_3
    xor-int/2addr v0, v2

    .line 52
    mul-int/2addr v0, v3

    .line 53
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    xor-int/2addr v0, v2

    .line 64
    mul-int/2addr v0, v3

    .line 65
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    .line 66
    .line 67
    if-nez v2, :cond_5

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :goto_5
    xor-int/2addr v0, v2

    .line 76
    mul-int/2addr v0, v3

    .line 77
    iget-boolean v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    .line 78
    .line 79
    const/16 v4, 0x4cf

    .line 80
    .line 81
    const/16 v5, 0x4d5

    .line 82
    .line 83
    const/4 v6, 0x1

    .line 84
    if-eq v6, v2, :cond_6

    .line 85
    .line 86
    move v2, v5

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move v2, v4

    .line 89
    :goto_6
    xor-int/2addr v0, v2

    .line 90
    mul-int/2addr v0, v3

    .line 91
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    xor-int/2addr v0, v2

    .line 98
    mul-int/2addr v0, v3

    .line 99
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    xor-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v3

    .line 107
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 108
    .line 109
    if-nez v2, :cond_7

    .line 110
    .line 111
    move v2, v1

    .line 112
    goto :goto_7

    .line 113
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    :goto_7
    xor-int/2addr v0, v2

    .line 118
    mul-int/2addr v0, v3

    .line 119
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    .line 120
    .line 121
    if-nez v2, :cond_8

    .line 122
    .line 123
    goto :goto_8

    .line 124
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    :goto_8
    xor-int/2addr v0, v1

    .line 129
    mul-int/2addr v0, v3

    .line 130
    iget-boolean v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    .line 131
    .line 132
    if-eq v6, v1, :cond_9

    .line 133
    .line 134
    move v4, v5

    .line 135
    :cond_9
    xor-int/2addr v0, v4

    .line 136
    mul-int/2addr v0, v3

    .line 137
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    xor-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public final isOpenNow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isStrictTypeFiltering()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzj:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzi:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzh:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzd:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzc:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zza:Lcom/google/android/gms/tasks/CancellationToken;

    .line 12
    .line 13
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v7, "SearchByTextRequest{cancellationToken="

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, ", includedType="

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzb:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, ", locationBias="

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, ", locationRestriction="

    .line 69
    .line 70
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v3, ", maxResultCount="

    .line 77
    .line 78
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zze:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v3, ", minRating="

    .line 87
    .line 88
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzf:Ljava/lang/Double;

    .line 92
    .line 93
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v3, ", openNow="

    .line 97
    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzg:Z

    .line 102
    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, ", placeFields="

    .line 107
    .line 108
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", priceLevels="

    .line 115
    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", rankPreference="

    .line 123
    .line 124
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, ", regionCode="

    .line 131
    .line 132
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzk:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", strictTypeFiltering="

    .line 141
    .line 142
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzl:Z

    .line 146
    .line 147
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, ", textQuery="

    .line 151
    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzaa;->zzm:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, "}"

    .line 161
    .line 162
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    return-object v0
.end method
