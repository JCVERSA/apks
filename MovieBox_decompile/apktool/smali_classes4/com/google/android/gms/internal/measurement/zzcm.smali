.class public abstract Lcom/google/android/gms/internal/measurement/zzcm;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzcm;

.field static final zzb:Lcom/google/android/gms/internal/measurement/zzcm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzco;->zza:Lcom/google/android/gms/internal/measurement/zzco;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzco;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v3, Lcom/google/android/gms/internal/measurement/zzcn;->zza:Lcom/google/android/gms/internal/measurement/zzcn;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzcn;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zza()Lcom/google/android/gms/internal/measurement/zzcm;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcm;->zza:Lcom/google/android/gms/internal/measurement/zzcm;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v4, Lcom/google/android/gms/internal/measurement/zzco;->zzc:Lcom/google/android/gms/internal/measurement/zzco;

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzco;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzcn;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zza()Lcom/google/android/gms/internal/measurement/zzcm;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcm;->zzb:Lcom/google/android/gms/internal/measurement/zzcm;

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcd;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcd;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Z)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzco;->zzb:Lcom/google/android/gms/internal/measurement/zzco;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzco;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzcl;->zza(Lcom/google/android/gms/internal/measurement/zzcn;)Lcom/google/android/gms/internal/measurement/zzcl;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zza()Lcom/google/android/gms/internal/measurement/zzcm;

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/measurement/zzcc;
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/measurement/zzcb;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/measurement/zzco;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/measurement/zzcn;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Z
.end method
