.class public final Lcom/google/android/gms/internal/ads/o9;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/o9;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/o9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/o9;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    const-class v1, Lcom/google/android/gms/internal/ads/o9;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/o9;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static b0()Lyoi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lyoi;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/o9;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/o9;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/o9;->zze:I

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/o9;Lcom/google/android/gms/internal/ads/zzgtt;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtt;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/o9;->zzf:I

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/gms/internal/ads/o9;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o9;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/gms/internal/ads/o9;I)V
    .locals 0

    invoke-static {p1}, Lmoi;->a(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/o9;->zzd:I

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

    sget-object p0, Lcom/google/android/gms/internal/ads/o9;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/o9;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/o9;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/o9;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    return-object p0

    :cond_4
    new-instance p0, Lyoi;

    invoke-direct {p0, p2}, Lyoi;-><init>(Lzoi;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/o9;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/o9;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string p2, "zze"

    const-string p3, "zzf"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/o9;->zza:Lcom/google/android/gms/internal/ads/o9;

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
