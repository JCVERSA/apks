.class public final Lcom/google/android/libraries/places/internal/zzbuj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Lcom/google/android/libraries/places/internal/zzbui;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbtb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbtb;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzbtb;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbtb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbuj;)Lcom/google/android/libraries/places/internal/zzbui;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbuj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zzb:Lcom/google/android/libraries/places/internal/zzbtb;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzbtb;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbtb;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbui;)Lcom/google/android/libraries/places/internal/zzbuj;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze()Lcom/google/android/libraries/places/internal/zzbul;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbuj;->zza:Lcom/google/android/libraries/places/internal/zzbui;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbul;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbul;-><init>(Lcom/google/android/libraries/places/internal/zzbuj;Lcom/google/android/libraries/places/internal/zzbuk;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "url == null"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method
