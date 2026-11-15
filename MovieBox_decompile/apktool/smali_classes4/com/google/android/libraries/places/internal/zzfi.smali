.class public abstract Lcom/google/android/libraries/places/internal/zzfi;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzjt;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzjt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final zza()Lcom/google/android/gms/tasks/CancellationToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzjt;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected final zzb()Lcom/google/android/libraries/places/internal/zzjt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfi;->zza:Lcom/google/android/libraries/places/internal/zzjt;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract zzc()Ljava/lang/String;
.end method

.method protected abstract zzd()Ljava/util/Map;
.end method
