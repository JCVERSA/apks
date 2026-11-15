.class final Lcom/google/android/libraries/places/api/model/zzw;
.super Lcom/google/android/libraries/places/api/model/Place$Builder;
.source "source.java"


# instance fields
.field private zzA:Ljava/util/List;

.field private zzB:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzC:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzD:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzF:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzG:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzH:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzI:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzJ:Ljava/util/List;

.field private zzK:Ljava/lang/Integer;

.field private zzL:Ljava/lang/Integer;

.field private zzM:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzN:Landroid/net/Uri;

.field private zzO:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

.field private zzc:Ljava/util/List;

.field private zzd:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

.field private zze:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzf:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private zzg:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzh:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/Integer;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Lcom/google/android/gms/maps/model/LatLng;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/util/List;

.field private zzt:Ljava/util/List;

.field private zzu:Ljava/util/List;

.field private zzv:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private zzw:Ljava/lang/Integer;

.field private zzx:Ljava/lang/String;

.field private zzy:Ljava/lang/Double;

.field private zzz:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAttributions()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzd:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurbsidePickup()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zze:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"curbsidePickup\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzf:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDelivery()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzg:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"delivery\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getDineIn()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzh:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"dineIn\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getEditorialSummary()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEditorialSummaryLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconBackgroundColor()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzk:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzn:Lcom/google/android/gms/maps/model/LatLng;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNameLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzq:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPhotoMetadatas()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlaceTypes()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzu:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzv:Lcom/google/android/libraries/places/api/model/PlusCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriceLevel()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzw:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrimaryType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzx:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzy:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReservable()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzz:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"reservable\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getReviews()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Review;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzt:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSecondaryOpeningHours()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/OpeningHours;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzA:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServesBeer()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzB:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesBeer\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesBreakfast()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzC:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesBreakfast\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesBrunch()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzD:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesBrunch\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesDinner()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesDinner\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesLunch()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzF:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesLunch\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesVegetarianFood()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzG:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesVegetarianFood\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getServesWine()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzH:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"servesWine\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getTakeout()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzI:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"takeout\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final getTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzJ:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUserRatingsTotal()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzK:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUtcOffsetMinutes()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzL:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzM:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWebsiteUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzN:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWheelchairAccessibleEntrance()Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzO:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

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
    const-string v1, "Property \"wheelchairAccessibleEntrance\" has not been set"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/AddressComponents;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
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
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzc:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setBusinessStatus(Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzd:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setCurbsidePickup(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zze:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null curbsidePickup"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setCurrentOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/OpeningHours;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzf:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDelivery(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzg:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null delivery"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setDineIn(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzh:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null dineIn"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setEditorialSummary(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setEditorialSummaryLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIconBackgroundColor(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzk:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIconUrl(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzm:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzn:Lcom/google/android/gms/maps/model/LatLng;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setNameLanguageCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/OpeningHours;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzq:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzs:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlaceTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
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
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzu:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/libraries/places/api/model/PlusCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzv:Lcom/google/android/libraries/places/api/model/PlusCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzw:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setPrimaryType(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzx:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzy:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setReservable(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzz:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null reservable"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setReviews(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Review;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzt:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setSecondaryOpeningHours(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/OpeningHours;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzA:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setServesBeer(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzB:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesBeer"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesBreakfast(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzC:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesBreakfast"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesBrunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzD:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesBrunch"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesDinner(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesDinner"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesLunch(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzF:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesLunch"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesVegetarianFood(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzG:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesVegetarianFood"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setServesWine(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzH:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null servesWine"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setTakeout(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzI:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null takeout"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzJ:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzK:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setUtcOffsetMinutes(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzL:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/maps/model/LatLngBounds;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzM:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzN:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWheelchairAccessibleEntrance(Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzw;->zzO:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null wheelchairAccessibleEntrance"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method final zza()Lcom/google/android/libraries/places/api/model/Place;
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/google/android/libraries/places/api/model/zzw;->zze:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 4
    .line 5
    if-eqz v6, :cond_1

    .line 6
    .line 7
    iget-object v8, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzg:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 8
    .line 9
    if-eqz v8, :cond_1

    .line 10
    .line 11
    iget-object v9, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzh:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 12
    .line 13
    if-eqz v9, :cond_1

    .line 14
    .line 15
    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzz:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 16
    .line 17
    if-eqz v15, :cond_1

    .line 18
    .line 19
    iget-object v14, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzB:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 20
    .line 21
    if-eqz v14, :cond_1

    .line 22
    .line 23
    iget-object v13, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzC:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 24
    .line 25
    if-eqz v13, :cond_1

    .line 26
    .line 27
    iget-object v12, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzD:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 28
    .line 29
    if-eqz v12, :cond_1

    .line 30
    .line 31
    iget-object v11, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 32
    .line 33
    if-eqz v11, :cond_1

    .line 34
    .line 35
    iget-object v10, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzF:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 36
    .line 37
    if-eqz v10, :cond_1

    .line 38
    .line 39
    iget-object v7, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzG:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 40
    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    iget-object v5, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzH:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 44
    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    iget-object v4, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzI:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v3, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzO:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance v43, Lcom/google/android/libraries/places/api/model/zzbk;

    .line 58
    .line 59
    move-object/from16 v1, v43

    .line 60
    .line 61
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zza:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v16, v3

    .line 64
    .line 65
    iget-object v3, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    .line 66
    .line 67
    move-object/from16 v42, v16

    .line 68
    .line 69
    move-object/from16 v16, v4

    .line 70
    .line 71
    iget-object v4, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzc:Ljava/util/List;

    .line 72
    .line 73
    move-object/from16 v36, v16

    .line 74
    .line 75
    move-object/from16 v16, v5

    .line 76
    .line 77
    iget-object v5, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzd:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 78
    .line 79
    move-object/from16 v35, v16

    .line 80
    .line 81
    move-object/from16 v16, v7

    .line 82
    .line 83
    iget-object v7, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzf:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 84
    .line 85
    move-object/from16 v34, v16

    .line 86
    .line 87
    move-object/from16 v16, v10

    .line 88
    .line 89
    iget-object v10, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzi:Ljava/lang/String;

    .line 90
    .line 91
    move-object/from16 v33, v16

    .line 92
    .line 93
    move-object/from16 v16, v11

    .line 94
    .line 95
    iget-object v11, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzj:Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v32, v16

    .line 98
    .line 99
    move-object/from16 v16, v12

    .line 100
    .line 101
    iget-object v12, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzk:Ljava/lang/Integer;

    .line 102
    .line 103
    move-object/from16 v31, v16

    .line 104
    .line 105
    move-object/from16 v16, v13

    .line 106
    .line 107
    iget-object v13, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzl:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v30, v16

    .line 110
    .line 111
    move-object/from16 v16, v14

    .line 112
    .line 113
    iget-object v14, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzm:Ljava/lang/String;

    .line 114
    .line 115
    move-object/from16 v29, v16

    .line 116
    .line 117
    move-object/from16 v16, v15

    .line 118
    .line 119
    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzn:Lcom/google/android/gms/maps/model/LatLng;

    .line 120
    .line 121
    move-object/from16 v27, v16

    .line 122
    .line 123
    move-object/from16 v44, v1

    .line 124
    .line 125
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzo:Ljava/lang/String;

    .line 126
    .line 127
    move-object/from16 v16, v1

    .line 128
    .line 129
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzp:Ljava/lang/String;

    .line 130
    .line 131
    move-object/from16 v17, v1

    .line 132
    .line 133
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzq:Lcom/google/android/libraries/places/api/model/OpeningHours;

    .line 134
    .line 135
    move-object/from16 v18, v1

    .line 136
    .line 137
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzr:Ljava/lang/String;

    .line 138
    .line 139
    move-object/from16 v19, v1

    .line 140
    .line 141
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzs:Ljava/util/List;

    .line 142
    .line 143
    move-object/from16 v20, v1

    .line 144
    .line 145
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzt:Ljava/util/List;

    .line 146
    .line 147
    move-object/from16 v21, v1

    .line 148
    .line 149
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzu:Ljava/util/List;

    .line 150
    .line 151
    move-object/from16 v22, v1

    .line 152
    .line 153
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzv:Lcom/google/android/libraries/places/api/model/PlusCode;

    .line 154
    .line 155
    move-object/from16 v23, v1

    .line 156
    .line 157
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzw:Ljava/lang/Integer;

    .line 158
    .line 159
    move-object/from16 v24, v1

    .line 160
    .line 161
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzx:Ljava/lang/String;

    .line 162
    .line 163
    move-object/from16 v25, v1

    .line 164
    .line 165
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzy:Ljava/lang/Double;

    .line 166
    .line 167
    move-object/from16 v26, v1

    .line 168
    .line 169
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzA:Ljava/util/List;

    .line 170
    .line 171
    move-object/from16 v28, v1

    .line 172
    .line 173
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzJ:Ljava/util/List;

    .line 174
    .line 175
    move-object/from16 v37, v1

    .line 176
    .line 177
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzK:Ljava/lang/Integer;

    .line 178
    .line 179
    move-object/from16 v38, v1

    .line 180
    .line 181
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzL:Ljava/lang/Integer;

    .line 182
    .line 183
    move-object/from16 v39, v1

    .line 184
    .line 185
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzM:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 186
    .line 187
    move-object/from16 v40, v1

    .line 188
    .line 189
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzN:Landroid/net/Uri;

    .line 190
    .line 191
    move-object/from16 v41, v1

    .line 192
    .line 193
    move-object/from16 v1, v44

    .line 194
    .line 195
    invoke-direct/range {v1 .. v42}, Lcom/google/android/libraries/places/api/model/zzbk;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AddressComponents;Ljava/util/List;Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/OpeningHours;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Double;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/util/List;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;)V

    .line 196
    .line 197
    .line 198
    return-object v43

    .line 199
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zze:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 205
    .line 206
    if-nez v2, :cond_2

    .line 207
    .line 208
    const-string v2, " curbsidePickup"

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    :cond_2
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzg:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 214
    .line 215
    if-nez v2, :cond_3

    .line 216
    .line 217
    const-string v2, " delivery"

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    :cond_3
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzh:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 223
    .line 224
    if-nez v2, :cond_4

    .line 225
    .line 226
    const-string v2, " dineIn"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :cond_4
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzz:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 232
    .line 233
    if-nez v2, :cond_5

    .line 234
    .line 235
    const-string v2, " reservable"

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    :cond_5
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzB:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 241
    .line 242
    if-nez v2, :cond_6

    .line 243
    .line 244
    const-string v2, " servesBeer"

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    :cond_6
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzC:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 250
    .line 251
    if-nez v2, :cond_7

    .line 252
    .line 253
    const-string v2, " servesBreakfast"

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :cond_7
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzD:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 259
    .line 260
    if-nez v2, :cond_8

    .line 261
    .line 262
    const-string v2, " servesBrunch"

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    :cond_8
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzE:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 268
    .line 269
    if-nez v2, :cond_9

    .line 270
    .line 271
    const-string v2, " servesDinner"

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    :cond_9
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzF:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 277
    .line 278
    if-nez v2, :cond_a

    .line 279
    .line 280
    const-string v2, " servesLunch"

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_a
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzG:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 286
    .line 287
    if-nez v2, :cond_b

    .line 288
    .line 289
    const-string v2, " servesVegetarianFood"

    .line 290
    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    :cond_b
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzH:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 295
    .line 296
    if-nez v2, :cond_c

    .line 297
    .line 298
    const-string v2, " servesWine"

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    :cond_c
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzI:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 304
    .line 305
    if-nez v2, :cond_d

    .line 306
    .line 307
    const-string v2, " takeout"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    :cond_d
    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzw;->zzO:Lcom/google/android/libraries/places/api/model/Place$BooleanPlaceAttributeValue;

    .line 313
    .line 314
    if-nez v2, :cond_e

    .line 315
    .line 316
    const-string v2, " wheelchairAccessibleEntrance"

    .line 317
    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    const-string v3, "Missing required properties:"

    .line 328
    .line 329
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v2
.end method
