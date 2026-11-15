.class public final Lcom/google/android/libraries/places/internal/zzbfv;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/internal/zzaye;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/libraries/places/internal/zzbaa;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "unknown-authority"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaye;->zza:Lcom/google/android/libraries/places/internal/zzaye;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbfv;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbfv;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 20
    .line 21
    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzaye;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0, v0}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzmo;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 6
    .line 7
    const/4 v3, 0x4

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
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x2

    .line 18
    aput-object v0, v3, v1

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    aput-object v2, v3, v0

    .line 22
    .line 23
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzaye;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbaa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 1

    .line 1
    const-string v0, "authority"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzb:Lcom/google/android/libraries/places/internal/zzaye;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbaa;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzd:Lcom/google/android/libraries/places/internal/zzbaa;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzf(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbfv;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zzc:Ljava/lang/String;

    .line 3
    .line 4
    return-object p0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfv;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
