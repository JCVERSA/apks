.class public final Lcom/google/android/gms/internal/ads/s;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/s;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    const-class v1, Lcom/google/android/gms/internal/ads/s;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/s;->zzk:J

    return-void
.end method

.method public static b0()Lepe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lepe;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/s;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/s;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->zzi:J

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/s;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->zzf:J

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/gms/internal/ads/s;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->zzd:J

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/gms/internal/ads/s;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->zzg:J

    return-void
.end method

.method public static synthetic h0(Lcom/google/android/gms/internal/ads/s;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/s;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s;->zzh:J

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_7

    const/4 p1, 0x2

    if-eq p0, p1, :cond_6

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    const/4 p1, 0x4

    const/4 p2, 0x0

    if-eq p0, p1, :cond_4

    const/4 p1, 0x5

    if-eq p0, p1, :cond_3

    const/4 p1, 0x6

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/s;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/s;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/s;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/s;->zzb:Lvti;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :cond_2
    throw p2

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    return-object p0

    :cond_4
    new-instance p0, Lepe;

    invoke-direct {p0, p2}, Lepe;-><init>(Lspe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/s;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-string v7, "zzj"

    const-string v8, "zzk"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/s;->zza:Lcom/google/android/gms/internal/ads/s;

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1002\u0007"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
