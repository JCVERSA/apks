.class final Lcom/google/android/libraries/places/internal/zzbkb;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbmk;


# instance fields
.field final zza:Lcom/google/android/libraries/places/internal/zzbgf;

.field zzb:Z

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbkd;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzaye;)Lcom/google/android/libraries/places/internal/zzaye;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzq(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/libraries/places/internal/zzayy;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method

.method public final zzb(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzC(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const-string v2, "READY"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zza(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjy;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbjy;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final zzd(Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 14
    .line 15
    invoke-static {v2, p1}, Lcom/google/android/libraries/places/internal/zzbkd;->zzo(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbdo;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x2

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v1, v4, v5

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    aput-object v2, v4, v1

    .line 27
    .line 28
    const-string v2, "{0} SHUTDOWN with {1}"

    .line 29
    .line 30
    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjz;

    .line 42
    .line 43
    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzbjz;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final zze()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzb:Z

    .line 2
    .line 3
    const-string v1, "transportShutdown() must be called before transportTerminated()."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zza(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzaym;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/zzbau;->zzc()Lcom/google/android/libraries/places/internal/zzbap;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v1, v2, v3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const-string v4, "{0} Terminated"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/places/internal/zzaym;->zzb(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzd(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbah;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbah;->zzf(Lcom/google/android/libraries/places/internal/zzbao;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 46
    .line 47
    invoke-static {v0, v1, v3}, Lcom/google/android/libraries/places/internal/zzbkd;->zzC(Lcom/google/android/libraries/places/internal/zzbkd;Lcom/google/android/libraries/places/internal/zzbgf;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzq(Lcom/google/android/libraries/places/internal/zzbkd;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zzc:Lcom/google/android/libraries/places/internal/zzbkd;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbkd;->zzg(Lcom/google/android/libraries/places/internal/zzbkd;)Lcom/google/android/libraries/places/internal/zzbdw;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbka;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzbka;-><init>(Lcom/google/android/libraries/places/internal/zzbkb;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdw;->zzc(Ljava/lang/Runnable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdw;->zzb()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/google/android/libraries/places/internal/zzayy;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbkb;->zza:Lcom/google/android/libraries/places/internal/zzbgf;

    .line 91
    .line 92
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbgf;->zze()Lcom/google/android/libraries/places/internal/zzaye;

    .line 93
    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    throw v0
.end method
