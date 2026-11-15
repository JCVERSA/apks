.class public final Lcom/google/android/gms/internal/ads/e;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/e;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/k;

.field private zzj:Lcom/google/android/gms/internal/ads/l;

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/e;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    const-class v1, Lcom/google/android/gms/internal/ads/e;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/e;->zze:Z

    const-string v1, "unknown_host"

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/e;->zzf:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/e;->zzh:Z

    return-void
.end method

.method public static b0()Lyne;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lyne;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/e;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    return-object v0
.end method

.method public static synthetic g0(Lcom/google/android/gms/internal/ads/e;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/e;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/e;->zzc:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/e;->zzg:Z

    return-void
.end method

.method public static synthetic h0(Lcom/google/android/gms/internal/ads/e;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/e;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/e;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e;->zzf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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

    sget-object p0, Lcom/google/android/gms/internal/ads/e;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/e;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/e;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/e;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    return-object p0

    :cond_4
    new-instance p0, Lyne;

    invoke-direct {p0, p2}, Lyne;-><init>(Lzne;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/e;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    sget-object v2, Laoe;->a:Lusi;

    const-string v3, "zze"

    const-string v4, "zzf"

    const-string v5, "zzg"

    const-string v6, "zzh"

    const-string v7, "zzi"

    const-string v8, "zzj"

    const-string v9, "zzk"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/e;->zza:Lcom/google/android/gms/internal/ads/e;

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1007\u0007"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final d0()Lcom/google/android/gms/internal/ads/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/e;->zzi:Lcom/google/android/gms/internal/ads/k;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/k;->d0()Lcom/google/android/gms/internal/ads/k;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final e0()Lcom/google/android/gms/internal/ads/l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/e;->zzj:Lcom/google/android/gms/internal/ads/l;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/l;->c0()Lcom/google/android/gms/internal/ads/l;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final f0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/e;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final i0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/e;->zzg:Z

    return p0
.end method
