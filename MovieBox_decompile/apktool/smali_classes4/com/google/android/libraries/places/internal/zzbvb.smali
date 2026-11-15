.class public abstract Lcom/google/android/libraries/places/internal/zzbvb;
.super Lcom/google/android/libraries/places/internal/zzbbm;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbm;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delegate"

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzb(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbbm;->zzc(Lcom/google/android/libraries/places/internal/zzbbi;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzd()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public zze()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbvb;->zzg()Lcom/google/android/libraries/places/internal/zzbbm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbbm;->zzf()Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method protected abstract zzg()Lcom/google/android/libraries/places/internal/zzbbm;
.end method
