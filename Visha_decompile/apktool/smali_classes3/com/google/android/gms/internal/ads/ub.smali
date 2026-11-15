.class public final Lcom/google/android/gms/internal/ads/ub;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/ub;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lysi;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D

.field private zzl:Lysi;

.field private zzm:I

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ub;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ub;->zza:Lcom/google/android/gms/internal/ads/ub;

    const-class v1, Lcom/google/android/gms/internal/ads/ub;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->zze:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/ub;->zzf:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ub;->zzg:Lysi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ub;->zzl:Lysi;

    return-void
.end method

.method public static bridge synthetic b0()Lcom/google/android/gms/internal/ads/ub;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ub;->zza:Lcom/google/android/gms/internal/ads/ub;

    return-object v0
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/ub;->zzb:Lvti;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/ub;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ub;->zzb:Lvti;

    if-nez v0, :cond_0

    new-instance v0, Lmsi;

    sget-object v2, Lcom/google/android/gms/internal/ads/ub;->zza:Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {v0, v2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ub;->zzb:Lvti;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    throw v2

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/ub;->zza:Lcom/google/android/gms/internal/ads/ub;

    return-object v0

    :cond_4
    new-instance v0, Ldxi;

    invoke-direct {v0, v2}, Ldxi;-><init>(Llxi;)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/ub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ub;-><init>()V

    return-object v0

    :cond_6
    const-string v1, "zzc"

    const-string v2, "zzd"

    const-string v3, "zzf"

    sget-object v4, Lkxi;->a:Lusi;

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    const-string v10, "zzl"

    const-class v11, Lcom/google/android/gms/internal/ads/tb;

    const-string v12, "zze"

    const-string v13, "zzm"

    sget-object v14, Lexi;->a:Lusi;

    const-string v15, "zzn"

    const-string v16, "zzo"

    const-string v17, "zzp"

    const-string v18, "zzu"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/ub;->zza:Lcom/google/android/gms/internal/ads/ub;

    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0002\u0003\u001a\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1007\u0005\u0007\u1000\u0006\u0008\u001b\t\u1008\u0001\n\u180c\u0007\u000b\u1007\u0008\u000c\u1007\t\r\u1007\n\u000e\u1007\u000b"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
