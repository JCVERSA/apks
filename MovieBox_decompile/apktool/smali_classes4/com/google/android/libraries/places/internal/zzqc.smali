.class public final Lcom/google/android/libraries/places/internal/zzqc;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzqg;

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzqf;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/libraries/places/internal/zzqg;

.field private zzf:Lcom/google/android/libraries/places/internal/zzqf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzpz;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzpz;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/libraries/places/internal/zzqc;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqa;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzqa;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/libraries/places/internal/zzqc;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    .line 14
    .line 15
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzqg;Lcom/google/android/libraries/places/internal/zzqb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqc;->zze:Lcom/google/android/libraries/places/internal/zzqg;

    .line 22
    .line 23
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzqc;)Lcom/google/android/libraries/places/internal/zzqg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zze:Lcom/google/android/libraries/places/internal/zzqg;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/libraries/places/internal/zzqc;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzqf;)Lcom/google/android/libraries/places/internal/zzqc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzf:Lcom/google/android/libraries/places/internal/zzqf;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzqh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzqe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzqe;-><init>(Lcom/google/android/libraries/places/internal/zzqc;Lcom/google/android/libraries/places/internal/zzqd;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method final zzg(Lcom/google/android/libraries/places/internal/zzpr;)V
    .locals 2

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzpr;->zzb()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/libraries/places/internal/zzqc;->zzb:Lcom/google/android/libraries/places/internal/zzqf;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzpr;->zzb()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "key must be repeating"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzqc;->zza:Lcom/google/android/libraries/places/internal/zzqg;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzrr;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzd:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzqc;->zzc:Ljava/util/Map;

    .line 53
    .line 54
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    return-void
.end method
