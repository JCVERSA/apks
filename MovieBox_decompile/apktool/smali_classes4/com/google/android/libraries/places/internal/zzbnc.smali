.class final Lcom/google/android/libraries/places/internal/zzbnc;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbbl;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbnj;

.field private zzb:Lcom/google/android/libraries/places/internal/zzazf;

.field private zzc:Lcom/google/android/libraries/places/internal/zzbni;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbnb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/google/android/libraries/places/internal/zzaze;->zzd:Lcom/google/android/libraries/places/internal/zzaze;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzazf;->zzb(Lcom/google/android/libraries/places/internal/zzaze;)Lcom/google/android/libraries/places/internal/zzazf;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/libraries/places/internal/zzbnc;)Lcom/google/android/libraries/places/internal/zzazf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/libraries/places/internal/zzbnc;Lcom/google/android/libraries/places/internal/zzbni;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzazf;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnj;->zzj()Ljava/util/logging/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzbni;->zzd(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbbj;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x2

    .line 14
    new-array v5, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object p1, v5, v3

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v2, v5, v3

    .line 21
    .line 22
    const-string v3, "onSubchannelState"

    .line 23
    .line 24
    const-string v4, "Received health status {0} for subchannel {1}"

    .line 25
    .line 26
    const-string v2, "io.grpc.internal.PickFirstLeafLoadBalancer$HealthListener"

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzb:Lcom/google/android/libraries/places/internal/zzazf;

    .line 32
    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzi(Lcom/google/android/libraries/places/internal/zzbnj;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbnj;->zzh(Lcom/google/android/libraries/places/internal/zzbnj;)Lcom/google/android/libraries/places/internal/zzbnd;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzbnd;->zzc()Ljava/net/SocketAddress;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/google/android/libraries/places/internal/zzbni;

    .line 52
    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzbni;->zzf(Lcom/google/android/libraries/places/internal/zzbni;)Lcom/google/android/libraries/places/internal/zzbnc;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, p0, :cond_0

    .line 60
    .line 61
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zza:Lcom/google/android/libraries/places/internal/zzbnj;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbnc;->zzc:Lcom/google/android/libraries/places/internal/zzbni;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzbnj;->zzl(Lcom/google/android/libraries/places/internal/zzbnj;Lcom/google/android/libraries/places/internal/zzbni;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void

    .line 69
    :catch_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbnj;->zzj()Ljava/util/logging/Logger;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 74
    .line 75
    const-string v1, "onSubchannelState"

    .line 76
    .line 77
    const-string v2, "Health listener received state change after subchannel was removed"

    .line 78
    .line 79
    const-string v3, "io.grpc.internal.PickFirstLeafLoadBalancer$HealthListener"

    .line 80
    .line 81
    invoke-virtual {p1, v0, v3, v1, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
