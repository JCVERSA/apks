.class public final Lcom/google/android/gms/internal/ads/ta;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/ta;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ta;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    const-class v1, Lcom/google/android/gms/internal/ads/ta;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    return-void
.end method

.method public static b0()Lgvi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lgvi;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/ta;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/ta;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ta;->zzd:J

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/ta;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ta;->zze:J

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/gms/internal/ads/ta;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/ta;->zzc:I

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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

    sget-object p0, Lcom/google/android/gms/internal/ads/ta;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/ta;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/ta;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/ta;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    return-object p0

    :cond_4
    new-instance p0, Lgvi;

    invoke-direct {p0, p2}, Lgvi;-><init>(Livi;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/ta;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ta;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string p2, "zze"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/ta;->zza:Lcom/google/android/gms/internal/ads/ta;

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
