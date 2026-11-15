.class public final Lcom/google/android/gms/internal/play_billing/zzhi;
.super Ljava/util/AbstractList;
.source "source.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/play_billing/zzfk;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzfk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/play_billing/zzhi;)Lcom/google/android/gms/internal/play_billing/zzfk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfj;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzg(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhh;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzhh;-><init>(Lcom/google/android/gms/internal/play_billing/zzhi;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzhg;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzhg;-><init>(Lcom/google/android/gms/internal/play_billing/zzhi;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzfk;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final zzf(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzfk;->zzf(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhi;->zza:Lcom/google/android/gms/internal/play_billing/zzfk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzfk;->zzh()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
