.class public final Lcom/google/android/gms/internal/ads/v0;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field private static final zzc:Lcom/google/android/gms/internal/ads/v0;

.field private static volatile zzd:Lvti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvti;"
        }
    .end annotation
.end field


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/v0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/v0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    const-class v1, Lcom/google/android/gms/internal/ads/v0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    return-void
.end method

.method public static d0()Lcom/google/android/gms/internal/ads/s0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/s0;

    return-object v0
.end method

.method public static bridge synthetic e0()Lcom/google/android/gms/internal/ads/v0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    return-object v0
.end method

.method public static bridge synthetic f0(Lcom/google/android/gms/internal/ads/v0;Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/v0;->b0(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;)V

    return-void
.end method

.method public static bridge synthetic g0(Lcom/google/android/gms/internal/ads/v0;Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/v0;->c0(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)V

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

    sget-object p0, Lcom/google/android/gms/internal/ads/v0;->zzd:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/v0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/v0;->zzd:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/v0;->zzd:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/s0;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/s0;-><init>(Lfxe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/v0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/v0;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zze"

    const-string p1, "zzf"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zze()Lusi;

    move-result-object p2

    const-string p3, "zzg"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zze()Lusi;

    move-result-object v0

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/v0;->zzc:Lcom/google/android/gms/internal/ads/v0;

    const-string p2, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v0;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/v0;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/v0;->zze:I

    return-void
.end method

.method public final c0(Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzab$zzc;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v0;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/v0;->zze:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/v0;->zze:I

    return-void
.end method
