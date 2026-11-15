.class final Lcom/google/android/libraries/places/api/model/zzd;
.super Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getPhotoUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setPhotoUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUri(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AuthorAttribution$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzd;->zza:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null name"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zzb()Lcom/google/android/libraries/places/api/model/AuthorAttribution;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzd;->zza:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/libraries/places/api/model/zzao;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzb:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzd;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/libraries/places/api/model/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v1, "Missing required properties: name"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
.end method
