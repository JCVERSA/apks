.class public final Lcom/google/android/gms/internal/ads/k;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/k;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Z

.field private zze:I

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/k;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    const-class v1, Lcom/google/android/gms/internal/ads/k;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/google/android/gms/internal/ads/k;->zze:I

    return-void
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/k;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    return-object v0
.end method

.method public static d0()Lcom/google/android/gms/internal/ads/k;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    return-object v0
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    sget-object p0, Lcom/google/android/gms/internal/ads/k;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/k;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/k;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/k;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    return-object p0

    :cond_4
    new-instance p0, Lkoe;

    invoke-direct {p0, p2}, Lkoe;-><init>(Lloe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/k;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/k;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/k;->zza:Lcom/google/android/gms/internal/ads/k;

    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001\u1007\u0000\u0003\u1004\u0001\u0004\u1007\u0002\u0005\u1007\u0003\u0006\u1007\u0004"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final b0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/k;->zze:I

    return p0
.end method

.method public final e0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/k;->zzd:Z

    return p0
.end method

.method public final f0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/k;->zzg:Z

    return p0
.end method

.method public final g0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/k;->zzf:Z

    return p0
.end method

.method public final h0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/k;->zzh:Z

    return p0
.end method
