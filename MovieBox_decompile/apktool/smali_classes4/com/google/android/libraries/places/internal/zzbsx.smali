.class public final Lcom/google/android/libraries/places/internal/zzbsx;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final zza:Z

.field private zzb:[Ljava/lang/String;

.field private zzc:[Ljava/lang/String;

.field private zzd:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbsz;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/libraries/places/internal/zzbsz;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsz;->zzc(Lcom/google/android/libraries/places/internal/zzbsz;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbsz;->zzd(Lcom/google/android/libraries/places/internal/zzbsz;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lcom/google/android/libraries/places/internal/zzbsz;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbsx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbsx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbsx;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbsx;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final varargs zza([Lcom/google/android/libraries/places/internal/zzbsw;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbsw;->zzbb:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "no cipher suites for cleartext connections"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final varargs zzb([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzb:[Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "no cipher suites for cleartext connections"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final zzc(Z)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzd:Z

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v0, "no TLS extensions for cleartext connections"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final varargs zzd([Lcom/google/android/libraries/places/internal/zzbtn;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, p1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget-object v2, p1, v1

    .line 13
    .line 14
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbtn;->zzf:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "no TLS versions for cleartext connections"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final varargs zze([Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbsx;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbsx;->zzc:[Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "no TLS versions for cleartext connections"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public final zzf()Lcom/google/android/libraries/places/internal/zzbsz;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbsz;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzbsz;-><init>(Lcom/google/android/libraries/places/internal/zzbsx;Lcom/google/android/libraries/places/internal/zzbsy;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
