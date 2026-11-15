.class public final Lcom/google/android/gms/internal/ads/n;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/n;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/n;->zza:Lcom/google/android/gms/internal/ads/n;

    const-class v1, Lcom/google/android/gms/internal/ads/n;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/n;->zzd:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/n;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/n;->zzf:I

    return-void
.end method

.method public static bridge synthetic b0()Lcom/google/android/gms/internal/ads/n;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/n;->zza:Lcom/google/android/gms/internal/ads/n;

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

    sget-object p0, Lcom/google/android/gms/internal/ads/n;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/n;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/n;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/n;->zza:Lcom/google/android/gms/internal/ads/n;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/n;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/n;->zza:Lcom/google/android/gms/internal/ads/n;

    return-object p0

    :cond_4
    new-instance p0, Lxoe;

    invoke-direct {p0, p2}, Lxoe;-><init>(Lspe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/n;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/n;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    sget-object v5, Lmpe;->a:Lusi;

    const-string v4, "zzf"

    move-object v3, v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/n;->zza:Lcom/google/android/gms/internal/ads/n;

    const-string p2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
