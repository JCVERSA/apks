.class final Lcom/google/android/libraries/places/api/model/zzad;
.super Lcom/google/android/libraries/places/api/model/Review$Builder;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/Double;

.field private zzg:Lcom/google/android/libraries/places/api/model/AuthorAttribution;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Review$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getOriginalText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOriginalTextLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPublishTime()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRelativePublishTimeDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOriginalText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOriginalTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zze:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPublishTime(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRelativePublishTimeDescription(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setText(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setTextLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method final zzb(Lcom/google/android/libraries/places/api/model/AuthorAttribution;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzg:Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null authorAttribution"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zzc(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Review$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzf:Ljava/lang/Double;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null rating"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zzd()Lcom/google/android/libraries/places/api/model/Review;
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzf:Ljava/lang/Double;

    .line 2
    .line 3
    if-eqz v6, :cond_1

    .line 4
    .line 5
    iget-object v7, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzg:Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    .line 6
    .line 7
    if-eqz v7, :cond_1

    .line 8
    .line 9
    iget-object v8, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzh:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v8, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v10, Lcom/google/android/libraries/places/api/model/zzbs;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zza:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzc:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzd:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lcom/google/android/libraries/places/api/model/zzad;->zze:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v9, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzi:Ljava/lang/String;

    .line 27
    .line 28
    move-object v0, v10

    .line 29
    invoke-direct/range {v0 .. v9}, Lcom/google/android/libraries/places/api/model/zzbs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lcom/google/android/libraries/places/api/model/AuthorAttribution;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v10

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzf:Ljava/lang/Double;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, " rating"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzg:Lcom/google/android/libraries/places/api/model/AuthorAttribution;

    .line 48
    .line 49
    if-nez v1, :cond_3

    .line 50
    .line 51
    const-string v1, " authorAttribution"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzad;->zzh:Ljava/lang/String;

    .line 57
    .line 58
    if-nez v1, :cond_4

    .line 59
    .line 60
    const-string v1, " attribution"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v2, "Missing required properties:"

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1
.end method
