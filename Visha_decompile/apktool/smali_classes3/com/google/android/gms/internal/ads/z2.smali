.class public final Lcom/google/android/gms/internal/ads/z2;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field private static final zzf:Lcom/google/android/gms/internal/ads/z2;

.field private static volatile zzg:Lvti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvti;"
        }
    .end annotation
.end field


# instance fields
.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private zzj:Lysi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lysi;"
        }
    .end annotation
.end field

.field private zzk:I

.field private zzl:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/z2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/z2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    const-class v1, Lcom/google/android/gms/internal/ads/z2;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzj:Lysi;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzl:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzm:I

    return-void
.end method

.method public static bridge synthetic b0(Lcom/google/android/gms/internal/ads/z2;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/z2;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic d0()Lcom/google/android/gms/internal/ads/z2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    return-object v0
.end method

.method public static e0()Lcom/google/android/gms/internal/ads/z2;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    return-object v0
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

    sget-object p0, Lcom/google/android/gms/internal/ads/z2;->zzg:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/z2;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/z2;->zzg:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/z2;->zzg:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/y2;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/y2;-><init>(Lfxe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/z2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/z2;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzh"

    const-string v1, "zzi"

    const-string v2, "zzj"

    const-class v3, Lcom/google/android/gms/internal/ads/v2;

    const-string v4, "zzk"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lusi;

    move-result-object v5

    const-string v6, "zzl"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lusi;

    move-result-object v7

    const-string v8, "zzm"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lusi;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/z2;->zzf:Lcom/google/android/gms/internal/ads/z2;

    const-string p2, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u180c\u0001\u0004\u180c\u0002\u0005\u180c\u0003"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzh:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/z2;->zzh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z2;->zzi:Ljava/lang/String;

    return-void
.end method
