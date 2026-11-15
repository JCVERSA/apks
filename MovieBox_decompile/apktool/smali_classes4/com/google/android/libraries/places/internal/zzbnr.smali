.class public final Lcom/google/android/libraries/places/internal/zzbnr;
.super Lcom/google/android/libraries/places/internal/zzbbf;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzayj;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzbcf;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzbcl;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbf;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "method"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 12
    .line 13
    const-string p1, "callOptions"

    .line 14
    .line 15
    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/libraries/places/internal/zzbnr;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbnr;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 30
    .line 31
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 42
    .line 43
    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v3, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "[method="

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " headers="

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " callOptions="

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "]"

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzayj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zza:Lcom/google/android/libraries/places/internal/zzayj;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbcf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzb:Lcom/google/android/libraries/places/internal/zzbcf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnr;->zzc:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 2
    .line 3
    return-object v0
.end method
