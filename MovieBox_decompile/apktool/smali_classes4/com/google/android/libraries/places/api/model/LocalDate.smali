.class public abstract Lcom/google/android/libraries/places/api/model/LocalDate;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/libraries/places/api/model/LocalDate;",
        ">;"
    }
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

.method public static newInstance(III)Lcom/google/android/libraries/places/api/model/LocalDate;
    .locals 10
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzm;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/api/model/zzm;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/zzm;->zzc(I)Lcom/google/android/libraries/places/api/model/zzca;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/api/model/zzca;->zzb(I)Lcom/google/android/libraries/places/api/model/zzca;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/api/model/zzca;->zza(I)Lcom/google/android/libraries/places/api/model/zzca;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/zzca;->zzd()Lcom/google/android/libraries/places/api/model/LocalDate;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v1, 0xc

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-string v3, "Month must not be out of range of 1 to 12, but was: %s."

    .line 47
    .line 48
    invoke-static {v1, v3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v3, 0x1f

    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    const-string v5, "Day must not be out of range of 1 to 31, but was: %s."

    .line 74
    .line 75
    invoke-static {v3, v5, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzh(ZLjava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const/4 v5, 0x6

    .line 84
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/16 v6, 0x9

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/16 v7, 0xb

    .line 95
    .line 96
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    new-array v8, v1, [Ljava/lang/Integer;

    .line 101
    .line 102
    const/4 v9, 0x0

    .line 103
    aput-object v3, v8, v9

    .line 104
    .line 105
    aput-object v5, v8, p2

    .line 106
    .line 107
    const/4 v3, 0x2

    .line 108
    aput-object v6, v8, v3

    .line 109
    .line 110
    const/4 v5, 0x3

    .line 111
    aput-object v7, v8, v5

    .line 112
    .line 113
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_1

    .line 122
    .line 123
    const/16 v5, 0x1e

    .line 124
    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-static {v0, v5}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v5, v4}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_0

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    new-array p1, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v4, p1, v9

    .line 145
    .line 146
    aput-object v2, p1, p2

    .line 147
    .line 148
    const-string p2, "%s is not a valid day for month %s."

    .line 149
    .line 150
    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zznb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_1
    :goto_0
    if-ne p1, v3, :cond_3

    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    rem-int/lit8 p2, p1, 0x4

    .line 165
    .line 166
    if-nez p2, :cond_2

    .line 167
    .line 168
    const/16 p2, 0x1d

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    const/16 p2, 0x1c

    .line 172
    .line 173
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzok;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzok;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzok;->zzd(Ljava/lang/Comparable;)Z

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const-string v1, "%s is not a valid day for month %s in year %s."

    .line 194
    .line 195
    invoke-static {p2, v1, v4, v0, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzm(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_3
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/google/android/libraries/places/api/model/LocalDate;)I
    .locals 2
    .param p1    # Lcom/google/android/libraries/places/api/model/LocalDate;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dateToCompare must not be null."

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    move-result p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 7
    check-cast p1, Lcom/google/android/libraries/places/api/model/LocalDate;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/api/model/LocalDate;->compareTo(Lcom/google/android/libraries/places/api/model/LocalDate;)I

    move-result p1

    return p1
.end method

.method public abstract getDay()I
.end method

.method public abstract getMonth()I
.end method

.method public abstract getYear()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getMonth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v1, v3, v4

    .line 18
    .line 19
    const-string v1, "%02d"

    .line 20
    .line 21
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getDay()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    new-array v6, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object v5, v6, v4

    .line 40
    .line 41
    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/LocalDate;->getYear()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x3

    .line 58
    new-array v6, v6, [Ljava/lang/Object;

    .line 59
    .line 60
    aput-object v5, v6, v4

    .line 61
    .line 62
    aput-object v0, v6, v2

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    aput-object v1, v6, v0

    .line 66
    .line 67
    const-string v0, "%s-%s-%s"

    .line 68
    .line 69
    invoke-static {v3, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
