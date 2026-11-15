.class public abstract Lcom/google/android/gms/internal/play_billing/zzaj;
.super Lcom/google/android/gms/internal/play_billing/zzac;
.source "source.java"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/play_billing/zzaf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzac;-><init>()V

    .line 2
    .line 3
    .line 4
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
    if-ne p1, p0, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, p1, Ljava/util/Set;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    check-cast p1, Ljava/util/Set;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    :catch_0
    :cond_2
    move v0, v2

    .line 32
    nop

    .line 33
    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/zzar;->zza(Ljava/util/Set;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zze()Lcom/google/android/gms/internal/play_billing/zzas;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public zzd()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzaj;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;->zzh()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzaj;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public abstract zze()Lcom/google/android/gms/internal/play_billing/zzas;
.end method

.method zzh()Lcom/google/android/gms/internal/play_billing/zzaf;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzac;->toArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/google/android/gms/internal/play_billing/zzaf;->zzd:I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method
