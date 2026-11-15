.class public final Lcom/google/android/gms/internal/ads/o1;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field private static final zzd:Lcom/google/android/gms/internal/ads/o1;

.field private static volatile zze:Lvti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvti;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/o1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/o1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    const-class v1, Lcom/google/android/gms/internal/ads/o1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    return-void
.end method

.method public static bridge synthetic b0(Lcom/google/android/gms/internal/ads/o1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o1;->e0(I)V

    return-void
.end method

.method public static bridge synthetic c0(Lcom/google/android/gms/internal/ads/o1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o1;->f0(I)V

    return-void
.end method

.method public static bridge synthetic d0(Lcom/google/android/gms/internal/ads/o1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/o1;->g0(I)V

    return-void
.end method

.method public static h0()Lcom/google/android/gms/internal/ads/n1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/n1;

    return-object v0
.end method

.method public static bridge synthetic i0()Lcom/google/android/gms/internal/ads/o1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    return-object v0
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

    sget-object p0, Lcom/google/android/gms/internal/ads/o1;->zze:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/o1;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/o1;->zze:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/o1;->zze:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/n1;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/n1;-><init>(Lfxe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/o1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/o1;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzf"

    const-string p1, "zzg"

    const-string p2, "zzh"

    const-string p3, "zzi"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/o1;->zzd:Lcom/google/android/gms/internal/ads/o1;

    const-string p2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final e0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/o1;->zzg:I

    return-void
.end method

.method public final f0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/o1;->zzi:I

    return-void
.end method

.method public final g0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/o1;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/o1;->zzh:I

    return-void
.end method
