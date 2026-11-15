.class public final Lcom/google/android/gms/internal/ads/a0;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/a0;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Lysi;

.field private zze:Lcom/google/android/gms/internal/ads/zzgwn;

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/a0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/a0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    const-class v1, Lcom/google/android/gms/internal/ads/a0;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzd:Lysi;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a0;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzg:I

    return-void
.end method

.method public static b0()Lrpe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lrpe;

    return-object v0
.end method

.method public static bridge synthetic c0()Lcom/google/android/gms/internal/ads/a0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    return-object v0
.end method

.method public static synthetic d0(Lcom/google/android/gms/internal/ads/a0;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzd:Lysi;

    invoke-interface {v0}, Lysi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ia;->v(Lysi;)Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzd:Lysi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/a0;->zzd:Lysi;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic e0(Lcom/google/android/gms/internal/ads/a0;Lcom/google/android/gms/internal/ads/zzgwn;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a0;->zze:Lcom/google/android/gms/internal/ads/zzgwn;

    return-void
.end method

.method public static synthetic f0(Lcom/google/android/gms/internal/ads/a0;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    return-void
.end method

.method public static synthetic g0(Lcom/google/android/gms/internal/ads/a0;I)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/a0;->zzc:I

    return-void
.end method


# virtual methods
.method public final W(Lcom/google/android/gms/internal/ads/zzgxu;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p0, Lcom/google/android/gms/internal/ads/a0;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/a0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/a0;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/a0;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    return-object p0

    :cond_4
    new-instance p0, Lrpe;

    invoke-direct {p0, p2}, Lrpe;-><init>(Lspe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/a0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/a0;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    sget-object v4, Lope;->a:Lusi;

    const-string v5, "zzg"

    sget-object v6, Llpe;->a:Lusi;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/a0;->zza:Lcom/google/android/gms/internal/ads/a0;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
