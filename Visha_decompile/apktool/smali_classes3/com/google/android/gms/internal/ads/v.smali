.class public final Lcom/google/android/gms/internal/ads/v;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/v;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zze:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgwn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    const-class v1, Lcom/google/android/gms/internal/ads/v;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v;->zzd:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/v;->zzg:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static b0()Lgpe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lgpe;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/v;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    return-object v0
.end method

.method public static d0([BLesi;)Lcom/google/android/gms/internal/ads/v;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ia;->Q(Lcom/google/android/gms/internal/ads/ia;[BLesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/v;

    return-object p0
.end method

.method public static synthetic i0(Lcom/google/android/gms/internal/ads/v;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->zzd:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic j0(Lcom/google/android/gms/internal/ads/v;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic k0(Lcom/google/android/gms/internal/ads/v;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->zzg:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic l0(Lcom/google/android/gms/internal/ads/v;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/v;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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

    sget-object p0, Lcom/google/android/gms/internal/ads/v;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/v;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/v;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/v;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    return-object p0

    :cond_4
    new-instance p0, Lgpe;

    invoke-direct {p0, p2}, Lgpe;-><init>(Lspe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/v;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/v;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string p2, "zze"

    const-string p3, "zzf"

    const-string v0, "zzg"

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/v;->zza:Lcom/google/android/gms/internal/ads/v;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u100a\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final e0()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v;->zzd:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method

.method public final f0()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method

.method public final g0()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v;->zzg:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method

.method public final h0()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/v;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method
