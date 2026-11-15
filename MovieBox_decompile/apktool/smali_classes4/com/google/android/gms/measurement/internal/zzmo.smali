.class final Lcom/google/android/gms/measurement/internal/zzmo;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzo;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzdo;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzls;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;Lcom/google/android/gms/internal/measurement/zzdo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzo;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zza(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzgb;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Failed to get conditional properties; not connected to service"

    .line 25
    .line 26
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzo;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzc:Lcom/google/android/gms/measurement/internal/zzo;

    .line 59
    .line 60
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzgb;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzo;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzos;->zzb(Ljava/util/List;)Ljava/util/ArrayList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzls;->zze(Lcom/google/android/gms/measurement/internal/zzls;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 80
    .line 81
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    const-string v3, "Failed to get conditional properties; remote exception"

    .line 96
    .line 97
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zza:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzb:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 111
    .line 112
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/util/ArrayList;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzja;->zzq()Lcom/google/android/gms/measurement/internal/zzos;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzmo;->zzd:Lcom/google/android/gms/internal/measurement/zzdo;

    .line 123
    .line 124
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzos;->zza(Lcom/google/android/gms/internal/measurement/zzdo;Ljava/util/ArrayList;)V

    .line 125
    .line 126
    .line 127
    throw v1
.end method
