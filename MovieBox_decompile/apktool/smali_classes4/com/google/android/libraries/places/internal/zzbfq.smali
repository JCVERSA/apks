.class final Lcom/google/android/libraries/places/internal/zzbfq;
.super Lcom/google/android/libraries/places/internal/zzayo;
.source "source.java"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:[B

.field private static final zzc:D


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zzbcl;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbvs;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbfg;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzazj;

.field private zzj:Lcom/google/android/libraries/places/internal/zzbfj;

.field private final zzk:Z

.field private zzl:Lcom/google/android/libraries/places/internal/zzayj;

.field private zzm:Lcom/google/android/libraries/places/internal/zzbfr;

.field private zzn:Z

.field private zzo:Z

.field private final zzp:Lcom/google/android/libraries/places/internal/zzbfp;

.field private final zzq:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzr:Lcom/google/android/libraries/places/internal/zzazq;

.field private zzs:Lcom/google/android/libraries/places/internal/zzazd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/zzbfq;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfq;->zza:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "gzip"

    .line 14
    .line 15
    const-string v1, "US-ASCII"

    .line 16
    .line 17
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzb:[B

    .line 26
    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const-wide/16 v1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    long-to-double v0, v0

    .line 36
    sput-wide v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    .line 37
    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbcl;Ljava/util/concurrent/Executor;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbfp;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/places/internal/zzbfg;Lcom/google/android/libraries/places/internal/zzbam;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzayo;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazq;->zzb()Lcom/google/android/libraries/places/internal/zzazq;

    .line 5
    .line 6
    .line 7
    move-result-object p7

    .line 8
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazd;->zza()Lcom/google/android/libraries/places/internal/zzazd;

    .line 11
    .line 12
    .line 13
    move-result-object p7

    .line 14
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzs:Lcom/google/android/libraries/places/internal/zzazd;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzf()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p7

    .line 22
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    invoke-static {p7, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvr;->zzc(Ljava/lang/String;J)Lcom/google/android/libraries/places/internal/zzbvs;

    .line 28
    .line 29
    .line 30
    move-result-object p7

    .line 31
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zze:Lcom/google/android/libraries/places/internal/zzbvs;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzakb;->zza()Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    .line 36
    move-result-object p7

    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v1, 0x1

    .line 39
    if-ne p2, p7, :cond_0

    .line 40
    .line 41
    new-instance p2, Lcom/google/android/libraries/places/internal/zzbpx;

    .line 42
    .line 43
    invoke-direct {p2}, Lcom/google/android/libraries/places/internal/zzbpx;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p7, Lcom/google/android/libraries/places/internal/zzbqe;

    .line 52
    .line 53
    invoke-direct {p7, p2}, Lcom/google/android/libraries/places/internal/zzbqe;-><init>(Ljava/util/concurrent/Executor;)V

    .line 54
    .line 55
    .line 56
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    .line 59
    .line 60
    :goto_0
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzazj;->zzb()Lcom/google/android/libraries/places/internal/zzazj;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzb()Lcom/google/android/libraries/places/internal/zzbcj;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    sget-object p6, Lcom/google/android/libraries/places/internal/zzbcj;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    .line 73
    .line 74
    if-eq p2, p6, :cond_1

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzb()Lcom/google/android/libraries/places/internal/zzbcj;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Lcom/google/android/libraries/places/internal/zzbcj;->zzc:Lcom/google/android/libraries/places/internal/zzbcj;

    .line 81
    .line 82
    if-ne p1, p2, :cond_2

    .line 83
    .line 84
    :cond_1
    move v0, v1

    .line 85
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzk:Z

    .line 86
    .line 87
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 88
    .line 89
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzp:Lcom/google/android/libraries/places/internal/zzbfp;

    .line 90
    .line 91
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzq:Ljava/util/concurrent/ScheduledExecutorService;

    .line 92
    .line 93
    return-void
.end method

.method static bridge synthetic zzf()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic zzg(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzayj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzazn;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzr()Lcom/google/android/libraries/places/internal/zzazn;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbcl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/libraries/places/internal/zzbfq;)Lcom/google/android/libraries/places/internal/zzbfr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzf:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzbfq;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzq:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method private final zzr()Lcom/google/android/libraries/places/internal/zzazn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzi()Lcom/google/android/libraries/places/internal/zzazn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :cond_0
    return-object v0
.end method

.method private final zzs(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    const-string v2, "Not started"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    .line 15
    .line 16
    xor-int/2addr v0, v1

    .line 17
    const-string v2, "call was cancelled"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    .line 23
    .line 24
    xor-int/2addr v0, v1

    .line 25
    const-string v1, "call was half-closed"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 31
    .line 32
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/zzbpo;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    check-cast v0, Lcom/google/android/libraries/places/internal/zzbpo;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbpo;->zzab(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbcl;->zzc(Ljava/lang/Object;)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzw(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzk:Z

    .line 56
    .line 57
    if-nez p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzbqp;->zzr()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 66
    .line 67
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 68
    .line 69
    const-string v2, "Client sendMessage() failed with Error"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :goto_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 80
    .line 81
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v1, "Failed to stream message"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V

    .line 94
    .line 95
    .line 96
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
    const-string v1, "method"

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    new-instance p2, Ljava/util/concurrent/CancellationException;

    .line 8
    .line 9
    const-string v0, "Cancelled without a message or cause"

    .line 10
    .line 11
    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/google/android/libraries/places/internal/zzbfq;->zza:Ljava/util/logging/Logger;

    .line 15
    .line 16
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 17
    .line 18
    const-string v3, "io.grpc.internal.ClientCallImpl"

    .line 19
    .line 20
    const-string v4, "cancelInternal"

    .line 21
    .line 22
    const-string v5, "Cancelling without a message or cause is suboptimal"

    .line 23
    .line 24
    move-object v6, p2

    .line 25
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const-string p1, "Call cancelled without message"

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :cond_3
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 64
    .line 65
    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzbfr;->zzh(Lcom/google/android/libraries/places/internal/zzbdo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_1
    return-void

    .line 76
    :goto_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 77
    .line 78
    if-nez p2, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfj;->zzd()V

    .line 82
    .line 83
    .line 84
    :goto_3
    throw p1
.end method

.method public final zzb()V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v2, "Not started"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    .line 17
    .line 18
    xor-int/2addr v0, v1

    .line 19
    const-string v2, "call was cancelled"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    .line 25
    .line 26
    xor-int/2addr v0, v1

    .line 27
    const-string v2, "call already half-closed"

    .line 28
    .line 29
    invoke-static {v0, v2}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzo:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzj()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final zzc(I)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    const-string v0, "Not started"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-interface {p1, v0}, Lcom/google/android/libraries/places/internal/zzbqp;->zzu(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbfq;->zzs(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzayn;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Lcom/google/android/libraries/places/internal/zzbvr;->zza:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    const-string v3, "Already started"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzn:Z

    .line 18
    .line 19
    xor-int/2addr v2, v1

    .line 20
    const-string v3, "call was cancelled"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzmt;->zzp(ZLjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 26
    .line 27
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbmg;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/libraries/places/internal/zzbmg;

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzb:Ljava/lang/Long;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    .line 49
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/zzazn;->zzd(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/libraries/places/internal/zzazn;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzayj;->zzi()Lcom/google/android/libraries/places/internal/zzazn;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzazn;->zza(Lcom/google/android/libraries/places/internal/zzazn;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-gez v4, :cond_3

    .line 66
    .line 67
    :cond_2
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 68
    .line 69
    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zza(Lcom/google/android/libraries/places/internal/zzazn;)Lcom/google/android/libraries/places/internal/zzayj;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 74
    .line 75
    :cond_3
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzc:Ljava/lang/Boolean;

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzg()Lcom/google/android/libraries/places/internal/zzayj;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 93
    .line 94
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzh()Lcom/google/android/libraries/places/internal/zzayj;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    :goto_1
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 99
    .line 100
    :cond_5
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 101
    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 105
    .line 106
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    if-eqz v3, :cond_6

    .line 111
    .line 112
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget-object v5, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzc(I)Lcom/google/android/libraries/places/internal/zzayj;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 136
    .line 137
    iget-object v4, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zzd:Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzayj;->zzc(I)Lcom/google/android/libraries/places/internal/zzayj;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iput-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 148
    .line 149
    :cond_7
    :goto_2
    iget-object v3, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 150
    .line 151
    if-eqz v3, :cond_9

    .line 152
    .line 153
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v4, v2}, Lcom/google/android/libraries/places/internal/zzayj;->zzd(I)Lcom/google/android/libraries/places/internal/zzayj;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_8
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 185
    .line 186
    iget-object v2, v2, Lcom/google/android/libraries/places/internal/zzbmg;->zze:Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzayj;->zzd(I)Lcom/google/android/libraries/places/internal/zzayj;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    iput-object v2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 197
    .line 198
    :cond_9
    :goto_3
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaza;->zza:Lcom/google/android/libraries/places/internal/zzazb;

    .line 199
    .line 200
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    .line 201
    .line 202
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzg:Lcom/google/android/libraries/places/internal/zzbca;

    .line 203
    .line 204
    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 205
    .line 206
    .line 207
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzc:Lcom/google/android/libraries/places/internal/zzbca;

    .line 208
    .line 209
    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 210
    .line 211
    .line 212
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbjd;->zzd:Lcom/google/android/libraries/places/internal/zzbca;

    .line 213
    .line 214
    invoke-virtual {p2, v4}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzban;->zza(Lcom/google/android/libraries/places/internal/zzazq;)[B

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    array-length v5, v3

    .line 222
    if-eqz v5, :cond_a

    .line 223
    .line 224
    invoke-virtual {p2, v4, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzf(Lcom/google/android/libraries/places/internal/zzbca;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    :cond_a
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zze:Lcom/google/android/libraries/places/internal/zzbca;

    .line 228
    .line 229
    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 230
    .line 231
    .line 232
    sget-object v3, Lcom/google/android/libraries/places/internal/zzbjd;->zzf:Lcom/google/android/libraries/places/internal/zzbca;

    .line 233
    .line 234
    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzbcf;->zzd(Lcom/google/android/libraries/places/internal/zzbca;)V

    .line 235
    .line 236
    .line 237
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbfq;->zzr()Lcom/google/android/libraries/places/internal/zzazn;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-eqz v3, :cond_b

    .line 242
    .line 243
    const/4 v4, 0x0

    .line 244
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzazn;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_b

    .line 249
    .line 250
    move v4, v1

    .line 251
    goto :goto_4

    .line 252
    :cond_b
    move v4, v0

    .line 253
    :goto_4
    new-instance v5, Lcom/google/android/libraries/places/internal/zzbfj;

    .line 254
    .line 255
    invoke-direct {v5, p0, v3, v4}, Lcom/google/android/libraries/places/internal/zzbfj;-><init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzazn;Z)V

    .line 256
    .line 257
    .line 258
    iput-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 259
    .line 260
    if-eqz v3, :cond_e

    .line 261
    .line 262
    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzbfj;->zza(Lcom/google/android/libraries/places/internal/zzbfj;)J

    .line 263
    .line 264
    .line 265
    move-result-wide v5

    .line 266
    const-wide/16 v7, 0x0

    .line 267
    .line 268
    cmp-long v5, v5, v7

    .line 269
    .line 270
    if-gtz v5, :cond_e

    .line 271
    .line 272
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 273
    .line 274
    invoke-static {v5, p2, v0, v0}, Lcom/google/android/libraries/places/internal/zzbjd;->zzk(Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;IZ)[Lcom/google/android/libraries/places/internal/zzayx;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    const-string v5, "Context"

    .line 279
    .line 280
    const-string v6, "CallOptions"

    .line 281
    .line 282
    if-eq v1, v4, :cond_c

    .line 283
    .line 284
    move-object v5, v6

    .line 285
    :cond_c
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 286
    .line 287
    sget-object v6, Lcom/google/android/libraries/places/internal/zzayx;->zza:Lcom/google/android/libraries/places/internal/zzayh;

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Lcom/google/android/libraries/places/internal/zzayj;->zzl(Lcom/google/android/libraries/places/internal/zzayh;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    check-cast v4, Ljava/lang/Long;

    .line 294
    .line 295
    const-string v6, "ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds."

    .line 296
    .line 297
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 298
    .line 299
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzbfj;->zza(Lcom/google/android/libraries/places/internal/zzbfj;)J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    long-to-double v7, v7

    .line 304
    sget-wide v9, Lcom/google/android/libraries/places/internal/zzbfq;->zzc:D

    .line 305
    .line 306
    div-double/2addr v7, v9

    .line 307
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    if-nez v4, :cond_d

    .line 312
    .line 313
    const-wide/16 v8, 0x0

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 317
    .line 318
    .line 319
    move-result-wide v11

    .line 320
    long-to-double v11, v11

    .line 321
    div-double v8, v11, v9

    .line 322
    .line 323
    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    const/4 v8, 0x3

    .line 328
    new-array v8, v8, [Ljava/lang/Object;

    .line 329
    .line 330
    aput-object v5, v8, v0

    .line 331
    .line 332
    aput-object v7, v8, v1

    .line 333
    .line 334
    const/4 v0, 0x2

    .line 335
    aput-object v4, v8, v0

    .line 336
    .line 337
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbil;

    .line 342
    .line 343
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zze:Lcom/google/android/libraries/places/internal/zzbdo;

    .line 344
    .line 345
    invoke-virtual {v4, v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    sget-object v4, Lcom/google/android/libraries/places/internal/zzbfs;->zza:Lcom/google/android/libraries/places/internal/zzbfs;

    .line 350
    .line 351
    invoke-direct {v1, v0, v4, p2}, Lcom/google/android/libraries/places/internal/zzbil;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;[Lcom/google/android/libraries/places/internal/zzayx;)V

    .line 352
    .line 353
    .line 354
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_e
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzp:Lcom/google/android/libraries/places/internal/zzbfp;

    .line 358
    .line 359
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzd:Lcom/google/android/libraries/places/internal/zzbcl;

    .line 360
    .line 361
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 362
    .line 363
    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzi:Lcom/google/android/libraries/places/internal/zzazj;

    .line 364
    .line 365
    invoke-interface {v0, v1, v4, p2, v5}, Lcom/google/android/libraries/places/internal/zzbfp;->zza(Lcom/google/android/libraries/places/internal/zzbcl;Lcom/google/android/libraries/places/internal/zzayj;Lcom/google/android/libraries/places/internal/zzbcf;Lcom/google/android/libraries/places/internal/zzazj;)Lcom/google/android/libraries/places/internal/zzbfr;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 370
    .line 371
    :goto_6
    iget-boolean p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzg:Z

    .line 372
    .line 373
    if-eqz p2, :cond_f

    .line 374
    .line 375
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 376
    .line 377
    invoke-interface {p2}, Lcom/google/android/libraries/places/internal/zzbqp;->zzt()V

    .line 378
    .line 379
    .line 380
    :cond_f
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 381
    .line 382
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    if-eqz p2, :cond_10

    .line 387
    .line 388
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 389
    .line 390
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzj()Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzm(I)V

    .line 401
    .line 402
    .line 403
    :cond_10
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 404
    .line 405
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    if-eqz p2, :cond_11

    .line 410
    .line 411
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 412
    .line 413
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzl:Lcom/google/android/libraries/places/internal/zzayj;

    .line 414
    .line 415
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzayj;->zzk()Ljava/lang/Integer;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzn(I)V

    .line 424
    .line 425
    .line 426
    :cond_11
    if-eqz v3, :cond_12

    .line 427
    .line 428
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 429
    .line 430
    invoke-interface {p2, v3}, Lcom/google/android/libraries/places/internal/zzbfr;->zzk(Lcom/google/android/libraries/places/internal/zzazn;)V

    .line 431
    .line 432
    .line 433
    :cond_12
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 434
    .line 435
    invoke-interface {p2, v2}, Lcom/google/android/libraries/places/internal/zzbqp;->zzv(Lcom/google/android/libraries/places/internal/zzazc;)V

    .line 436
    .line 437
    .line 438
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 439
    .line 440
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    .line 441
    .line 442
    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzl(Lcom/google/android/libraries/places/internal/zzazq;)V

    .line 443
    .line 444
    .line 445
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzh:Lcom/google/android/libraries/places/internal/zzbfg;

    .line 446
    .line 447
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfg;->zzb()V

    .line 448
    .line 449
    .line 450
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzm:Lcom/google/android/libraries/places/internal/zzbfr;

    .line 451
    .line 452
    new-instance v0, Lcom/google/android/libraries/places/internal/zzbfo;

    .line 453
    .line 454
    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzbfo;-><init>(Lcom/google/android/libraries/places/internal/zzbfq;Lcom/google/android/libraries/places/internal/zzayn;)V

    .line 455
    .line 456
    .line 457
    invoke-interface {p2, v0}, Lcom/google/android/libraries/places/internal/zzbfr;->zzo(Lcom/google/android/libraries/places/internal/zzbft;)V

    .line 458
    .line 459
    .line 460
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzj:Lcom/google/android/libraries/places/internal/zzbfj;

    .line 461
    .line 462
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbfj;->zzc()V

    .line 463
    .line 464
    .line 465
    return-void
.end method

.method final zzm(Lcom/google/android/libraries/places/internal/zzazd;)Lcom/google/android/libraries/places/internal/zzbfq;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzs:Lcom/google/android/libraries/places/internal/zzazd;

    .line 2
    .line 3
    return-object p0
.end method

.method final zzn(Lcom/google/android/libraries/places/internal/zzazq;)Lcom/google/android/libraries/places/internal/zzbfq;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbfq;->zzr:Lcom/google/android/libraries/places/internal/zzazq;

    .line 2
    .line 3
    return-object p0
.end method
