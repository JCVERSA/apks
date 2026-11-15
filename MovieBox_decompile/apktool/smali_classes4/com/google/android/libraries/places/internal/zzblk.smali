.class final Lcom/google/android/libraries/places/internal/zzblk;
.super Lcom/google/android/libraries/places/internal/zzayk;
.source "source.java"


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbls;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbls;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayk;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;)Lcom/google/android/libraries/places/internal/zzayo;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/libraries/places/internal/zzbfq;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/zzbma;->zzJ(Lcom/google/android/libraries/places/internal/zzbma;Lcom/google/android/libraries/places/internal/zzayj;)Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzv(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbkt;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzaa(Lcom/google/android/libraries/places/internal/zzbma;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_0
    move-object v5, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzs(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfw;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfw;->zzb()Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbma;->zzq(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzbfg;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const/4 v7, 0x0

    .line 46
    move-object v0, v8

    .line 47
    move-object v1, p1

    .line 48
    move-object v3, p2

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzbfq;-><init>(Lcom/google/android/libraries/places/internal/zzbcl;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbfp;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbam;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzj(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazq;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v8, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzn(Lcom/google/android/libraries/places/internal/zzazq;)Lcom/google/android/libraries/places/internal/zzbfq;

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbls;->zza:Lcom/google/android/libraries/places/internal/zzbma;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbma;->zzi(Lcom/google/android/libraries/places/internal/zzbma;)Lcom/google/android/libraries/places/internal/zzazd;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v8, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzm(Lcom/google/android/libraries/places/internal/zzazd;)Lcom/google/android/libraries/places/internal/zzbfq;

    .line 72
    .line 73
    .line 74
    return-object v8
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzblk;->zza:Lcom/google/android/libraries/places/internal/zzbls;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbls;->zzd(Lcom/google/android/libraries/places/internal/zzbls;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
