.class final Lcom/google/android/libraries/places/api/net/zzi;
.super Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/Integer;

.field private zzb:Ljava/lang/Integer;

.field private zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

.field private zzd:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;-><init>()V

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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/tasks/CancellationToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMaxHeight(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setMaxWidth(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method final zza()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

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
    const-string v1, "Property \"photoMetadata\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method final zzb(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null photoMetadata"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zzc()Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzc:Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    .line 2
    .line 3
    if-eqz v3, :cond_0

    .line 4
    .line 5
    new-instance v6, Lcom/google/android/libraries/places/api/net/zzk;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/api/net/zzi;->zza:Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzb:Ljava/lang/Integer;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/libraries/places/api/net/zzi;->zzd:Lcom/google/android/gms/tasks/CancellationToken;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/api/net/zzk;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/libraries/places/api/model/PhotoMetadata;Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/libraries/places/api/net/zzj;)V

    .line 16
    .line 17
    .line 18
    return-object v6

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "Missing required properties: photoMetadata"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0
.end method
