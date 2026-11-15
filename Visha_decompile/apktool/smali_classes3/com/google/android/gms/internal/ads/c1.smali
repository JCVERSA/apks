.class public final Lcom/google/android/gms/internal/ads/c1;
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

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field private static final zzi:Lcom/google/android/gms/internal/ads/c1;

.field private static volatile zzj:Lvti;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvti;"
        }
    .end annotation
.end field


# instance fields
.field private zzk:I

.field private zzl:Lysi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lysi;"
        }
    .end annotation
.end field

.field private zzm:I

.field private zzn:I

.field private zzo:J

.field private zzp:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:J

.field private zzw:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/c1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

    const-class v1, Lcom/google/android/gms/internal/ads/c1;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzl:Lysi;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzu:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic b0(Lcom/google/android/gms/internal/ads/c1;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->n0(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic c0(Lcom/google/android/gms/internal/ads/c1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic h0(Lcom/google/android/gms/internal/ads/c1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->q0(I)V

    return-void
.end method

.method public static bridge synthetic i0(Lcom/google/android/gms/internal/ads/c1;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic j0(Lcom/google/android/gms/internal/ads/c1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->d0(I)V

    return-void
.end method

.method public static bridge synthetic k0(Lcom/google/android/gms/internal/ads/c1;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/c1;->e0(J)V

    return-void
.end method

.method public static bridge synthetic l0(Lcom/google/android/gms/internal/ads/c1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/c1;->f0(I)V

    return-void
.end method

.method public static bridge synthetic m0(Lcom/google/android/gms/internal/ads/c1;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/c1;->g0(J)V

    return-void
.end method

.method public static s0()Lcom/google/android/gms/internal/ads/a1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/a1;

    return-object v0
.end method

.method public static bridge synthetic t0()Lcom/google/android/gms/internal/ads/c1;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

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

    sget-object p0, Lcom/google/android/gms/internal/ads/c1;->zzj:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/c1;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/c1;->zzj:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/c1;->zzj:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

    return-object p0

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/a1;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/a1;-><init>(Lfxe;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/c1;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/c1;-><init>()V

    return-object p0

    :cond_6
    const-string v0, "zzk"

    const-string v1, "zzl"

    const-class v2, Lcom/google/android/gms/internal/ads/y0;

    const-string v3, "zzm"

    const-string v4, "zzn"

    const-string v5, "zzo"

    const-string v6, "zzp"

    const-string v7, "zzu"

    const-string v8, "zzv"

    const-string v9, "zzw"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/c1;->zzi:Lcom/google/android/gms/internal/ads/c1;

    const-string p2, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/ia;->z(Lrti;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final d0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzm:I

    return-void
.end method

.method public final e0(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzv:J

    return-void
.end method

.method public final f0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzn:I

    return-void
.end method

.method public final g0(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzo:J

    return-void
.end method

.method public final n0(Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c1;->o0()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/c1;->zzl:Lysi;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/aa;->i(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzl:Lysi;

    invoke-interface {v0}, Lysi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ia;->v(Lysi;)Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzl:Lysi;

    :cond_0
    return-void
.end method

.method public final p0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzp:Ljava/lang/String;

    return-void
.end method

.method public final q0(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzw:I

    return-void
.end method

.method public final r0(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/c1;->zzk:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c1;->zzu:Ljava/lang/String;

    return-void
.end method
