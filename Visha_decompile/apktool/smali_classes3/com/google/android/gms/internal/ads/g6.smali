.class public final Lcom/google/android/gms/internal/ads/g6;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/g6;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Lvsi;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/g6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/g6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    const-class v1, Lcom/google/android/gms/internal/ads/g6;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->q()Lvsi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g6;->zzd:Lvsi;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g6;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g6;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/g6;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static b0()Llxh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Llxh;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/g6;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/g6;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/g6;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/g6;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g6;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/g6;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/g6;->zzd:Lvsi;

    invoke-interface {p1}, Lysi;->zzc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ia;->r(Lvsi;)Lvsi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g6;->zzd:Lvsi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/g6;->zzd:Lvsi;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lvsi;->zzi(I)V

    return-void
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

    sget-object p0, Lcom/google/android/gms/internal/ads/g6;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/g6;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/g6;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/g6;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    return-object p0

    :cond_4
    new-instance p0, Llxh;

    invoke-direct {p0, p2}, Llxh;-><init>(Lmxh;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/g6;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/g6;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    sget-object v2, Lkxh;->a:Lusi;

    const-string v3, "zze"

    const-string v4, "zzf"

    const-string v5, "zzg"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/g6;->zza:Lcom/google/android/gms/internal/ads/g6;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u081e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
