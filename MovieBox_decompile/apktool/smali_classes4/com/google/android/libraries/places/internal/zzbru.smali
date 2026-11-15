.class final Lcom/google/android/libraries/places/internal/zzbru;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbfw;


# instance fields
.field final zza:Ljava/util/concurrent/Executor;

.field final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field final zzc:Lcom/google/android/libraries/places/internal/zzbqw;

.field final zzd:Ljavax/net/ssl/SSLSocketFactory;

.field final zze:Lcom/google/android/libraries/places/internal/zzbsz;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzbeo;

.field private zzg:Z

.field private final zzh:Lcom/google/android/libraries/places/internal/zzbqn;

.field private final zzi:Lcom/google/android/libraries/places/internal/zzbqn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbqn;Lcom/google/android/libraries/places/internal/zzbqn;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/google/android/libraries/places/internal/zzbsz;IZJJIZILcom/google/android/libraries/places/internal/zzbqw;ZLcom/google/android/libraries/places/internal/zzbrt;)V
    .locals 5

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzh:Lcom/google/android/libraries/places/internal/zzbqn;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbqn;->zzb()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzi:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbqn;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzd:Ljavax/net/ssl/SSLSocketFactory;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zze:Lcom/google/android/libraries/places/internal/zzbsz;

    .line 3
    new-instance v1, Lcom/google/android/libraries/places/internal/zzbeo;

    const-string v2, "keepalive time nanos"

    const-wide v3, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzbeo;-><init>(Ljava/lang/String;J)V

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzf:Lcom/google/android/libraries/places/internal/zzbeo;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzbru;->zzc:Lcom/google/android/libraries/places/internal/zzbqw;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzg:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzh:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbru;->zza:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzi:Lcom/google/android/libraries/places/internal/zzbqn;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbqn;->zzc(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final zza(Ljava/net/SocketAddress;Lcom/google/android/libraries/places/internal/zzbfv;Lcom/google/android/libraries/places/internal/zzaym;)Lcom/google/android/libraries/places/internal/zzbgf;
    .locals 8

    .line 1
    iget-boolean p3, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzg:Z

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzf:Lcom/google/android/libraries/places/internal/zzbeo;

    .line 6
    .line 7
    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzbeo;->zza()Lcom/google/android/libraries/places/internal/zzben;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    new-instance v7, Lcom/google/android/libraries/places/internal/zzbrs;

    .line 12
    .line 13
    invoke-direct {v7, p0, p3}, Lcom/google/android/libraries/places/internal/zzbrs;-><init>(Lcom/google/android/libraries/places/internal/zzbru;Lcom/google/android/libraries/places/internal/zzben;)V

    .line 14
    .line 15
    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 18
    .line 19
    new-instance p1, Lcom/google/android/libraries/places/internal/zzbsf;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfv;->zzg()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfv;->zza()Lcom/google/android/libraries/places/internal/zzaye;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzbfv;->zzb()Lcom/google/android/libraries/places/internal/zzbaa;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const/4 v4, 0x0

    .line 34
    move-object v0, p1

    .line 35
    move-object v1, p0

    .line 36
    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzbsf;-><init>(Lcom/google/android/libraries/places/internal/zzbru;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzaye;Lcom/google/android/libraries/places/internal/zzbaa;Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string p2, "The transport factory is closed."

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final zzb()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbru;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object v0
.end method
