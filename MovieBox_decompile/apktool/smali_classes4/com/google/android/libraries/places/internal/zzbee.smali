.class public abstract Lcom/google/android/libraries/places/internal/zzbee;
.super Lcom/google/android/libraries/places/internal/zzbei;
.source "source.java"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbqo;

.field private zzb:Z

.field private zzc:Lcom/google/android/libraries/places/internal/zzbft;

.field private zzd:Lcom/google/android/libraries/places/internal/zzazq;

.field private zze:Z

.field private zzf:Ljava/lang/Runnable;

.field private volatile zzg:Z

.field private zzh:Z

.field private zzi:Z


# direct methods
.method protected constructor <init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;Lcom/google/android/libraries/places/internal/zzayj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbei;-><init>(ILcom/google/android/libraries/places/internal/zzbqo;Lcom/google/android/libraries/places/internal/zzbqz;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazq;->zzb()Lcom/google/android/libraries/places/internal/zzazq;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 14
    .line 15
    return-void
.end method

.method private final zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzb:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzb:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzm(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzm()Lcom/google/android/libraries/places/internal/zzbqz;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqz;->zze(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbft;->zzd(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzbee;->zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzazq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "Already called start"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "decompressorRegistry"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic zzd(Lcom/google/android/libraries/places/internal/zzbee;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzg:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final synthetic zza()Lcom/google/android/libraries/places/internal/zzbqr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 2
    .line 3
    return-object v0
.end method

.method public zze(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 2
    .line 3
    const-string v1, "status should have been reported on deframer closed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzi:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 18
    .line 19
    const-string v1, "Encountered end-of-stream mid-frame"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbcf;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzbcf;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 31
    .line 32
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method protected final zzf(Lcom/google/android/libraries/places/internal/zzbnv;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbef;->zzf()Ljava/util/logging/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 11
    .line 12
    const-string v3, "io.grpc.internal.AbstractClientStream$TransportState"

    .line 13
    .line 14
    const-string v4, "inboundDataReceived"

    .line 15
    .line 16
    const-string v5, "Received data on closed stream"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbei;->zzq(Lcom/google/android/libraries/places/internal/zzbnv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbnv;->close()V

    .line 36
    .line 37
    .line 38
    :cond_1
    throw v1
.end method

.method protected final zzg(Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "Received headers on closed stream"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbqo;->zzb()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzb(Lcom/google/android/libraries/places/internal/zzbca;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbcf;->zzb(Lcom/google/android/libraries/places/internal/zzbca;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzd:Lcom/google/android/libraries/places/internal/zzazq;

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzazq;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzazo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    sget-object p1, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 42
    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aput-object v0, v1, v2

    .line 47
    .line 48
    const-string v0, "Can\'t find decompressor for %s"

    .line 49
    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v0}, Lcom/google/android/libraries/places/internal/zzbmm;->zzF(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    .line 69
    .line 70
    if-eq v2, v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/google/android/libraries/places/internal/zzbei;->zzw(Lcom/google/android/libraries/places/internal/zzazo;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbft;->zze(Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method protected final zzh(Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbef;->zzf()Ljava/util/logging/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v7, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    aput-object p2, v7, v0

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    aput-object p1, v7, p2

    .line 19
    .line 20
    const-string v5, "inboundTrailersReceived"

    .line 21
    .line 22
    const-string v6, "Received trailers on closed stream:\n {1}\n {2}"

    .line 23
    .line 24
    const-string v4, "io.grpc.internal.AbstractClientStream$TransportState"

    .line 25
    .line 26
    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zza:Lcom/google/android/libraries/places/internal/zzbqo;

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbqo;->zzc(Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 36
    .line 37
    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/google/android/libraries/places/internal/zzbee;->zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/internal/zzbft;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const-string v1, "Already called setListener"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzc:Lcom/google/android/libraries/places/internal/zzbft;

    .line 14
    .line 15
    return-void
.end method

.method public final zzj(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;ZLcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 2

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "trailers"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    move p3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzh:Z

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzl()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzi:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbei;->zzu()V

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zze:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/libraries/places/internal/zzbee;->zzA(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbed;

    .line 44
    .line 45
    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/android/libraries/places/internal/zzbed;-><init>(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzf:Ljava/lang/Runnable;

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Lcom/google/android/libraries/places/internal/zzbei;->zzp(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method protected final zzk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbee;->zzg:Z

    .line 2
    .line 3
    return v0
.end method
