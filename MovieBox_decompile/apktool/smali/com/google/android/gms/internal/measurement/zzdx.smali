.class final Lcom/google/android/gms/internal/measurement/zzdx;
.super Lcom/google/android/gms/internal/measurement/zzdy$zza;
.source "source.java"


# instance fields
.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Landroid/content/Context;

.field private final synthetic zzf:Landroid/os/Bundle;

.field private final synthetic zzg:Lcom/google/android/gms/internal/measurement/zzdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzdy;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzd:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzf:Landroid/os/Bundle;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzdy$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzdy;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 15

    .line 1
    const-string v0, "com.google.android.gms.measurement.dynamite"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzd:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzd:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzc:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 22
    .line 23
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzdy;->zzb(Lcom/google/android/gms/internal/measurement/zzdy;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    move-object v12, v3

    .line 28
    move-object v11, v4

    .line 29
    move-object v10, v5

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    move-object v10, v3

    .line 35
    move-object v11, v10

    .line 36
    move-object v12, v11

    .line 37
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;Lcom/google/android/gms/internal/measurement/zzdj;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzdy;->zzb(Lcom/google/android/gms/internal/measurement/zzdy;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v3, "Failed to connect to measurement client."

    .line 68
    .line 69
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ge v0, v3, :cond_2

    .line 90
    .line 91
    move v9, v2

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move v9, v1

    .line 94
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdw;

    .line 95
    .line 96
    int-to-long v7, v4

    .line 97
    iget-object v13, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzf:Landroid/os/Bundle;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzhs;->zza(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    const-wide/32 v5, 0x19e10

    .line 106
    .line 107
    .line 108
    move-object v4, v0

    .line 109
    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/measurement/zzdw;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 113
    .line 114
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;)Lcom/google/android/gms/internal/measurement/zzdj;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Lcom/google/android/gms/internal/measurement/zzdj;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zze:Landroid/content/Context;

    .line 125
    .line 126
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/zzdy$zza;->zza:J

    .line 131
    .line 132
    invoke-interface {v3, v4, v0, v5, v6}, Lcom/google/android/gms/internal/measurement/zzdj;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/measurement/zzdw;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzdx;->zzg:Lcom/google/android/gms/internal/measurement/zzdy;

    .line 137
    .line 138
    invoke-static {v3, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzdy;->zza(Lcom/google/android/gms/internal/measurement/zzdy;Ljava/lang/Exception;ZZ)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
