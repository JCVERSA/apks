.class public final Lcom/google/android/gms/internal/ads/x;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/x;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/x;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    const-class v1, Lcom/google/android/gms/internal/ads/x;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x;->zze:Ljava/lang/String;

    const-string v0, "D"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/x;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static b0()Lnpe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lnpe;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/x;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/x;Ljava/lang/String;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    const-string p1, "0.460000000"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/x;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/gms/internal/ads/x;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/gms/internal/ads/x;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x;->zzf:J

    return-void
.end method

.method public static synthetic h0(Lcom/google/android/gms/internal/ads/x;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x;->zzi:J

    return-void
.end method

.method public static synthetic i0(Lcom/google/android/gms/internal/ads/x;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/x;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/x;->zzh:J

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p0, Lcom/google/android/gms/internal/ads/x;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/x;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/x;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/x;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    return-object p0

    :cond_4
    new-instance p0, Lnpe;

    invoke-direct {p0, p2}, Lnpe;-><init>(Lspe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/x;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/x;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    const-string v6, "zzi"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/x;->zza:Lcom/google/android/gms/internal/ads/x;

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1008\u0003\u0005\u1002\u0004\u0006\u1002\u0005"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
