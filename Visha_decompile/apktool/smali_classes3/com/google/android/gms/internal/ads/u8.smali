.class public final Lcom/google/android/gms/internal/ads/u8;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/u8;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/w8;

.field private zzf:Lcom/google/android/gms/internal/ads/zzgwn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/u8;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/u8;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    const-class v1, Lcom/google/android/gms/internal/ads/u8;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/u8;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static c0()Lbni;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lbni;

    return-object v0
.end method

.method public static bridge synthetic d0()Lcom/google/android/gms/internal/ads/u8;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    return-object v0
.end method

.method public static e0()Lcom/google/android/gms/internal/ads/u8;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    return-object v0
.end method

.method public static synthetic h0(Lcom/google/android/gms/internal/ads/u8;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u8;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic i0(Lcom/google/android/gms/internal/ads/u8;Lcom/google/android/gms/internal/ads/w8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u8;->zze:Lcom/google/android/gms/internal/ads/w8;

    iget p1, p0, Lcom/google/android/gms/internal/ads/u8;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/u8;->zzc:I

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

    sget-object p0, Lcom/google/android/gms/internal/ads/u8;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/u8;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/u8;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/u8;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    return-object p0

    :cond_4
    new-instance p0, Lbni;

    invoke-direct {p0, p2}, Lbni;-><init>(Lcni;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/u8;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/u8;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string p2, "zze"

    const-string p3, "zzf"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/u8;->zza:Lcom/google/android/gms/internal/ads/u8;

    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\n"

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

    iget p0, p0, Lcom/google/android/gms/internal/ads/u8;->zzd:I

    return p0
.end method

.method public final f0()Lcom/google/android/gms/internal/ads/w8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/u8;->zze:Lcom/google/android/gms/internal/ads/w8;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/w8;->e0()Lcom/google/android/gms/internal/ads/w8;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final g0()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/u8;->zzf:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method
