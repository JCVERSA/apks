.class public final Lcom/google/android/gms/internal/ads/n9;
.super Lcom/google/android/gms/internal/ads/ia;
.source "SourceFile"

# interfaces
.implements Lsti;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/n9;

.field private static volatile zzb:Lvti;


# instance fields
.field private zzc:I

.field private zzd:Lysi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/n9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/n9;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    const-class v1, Lcom/google/android/gms/internal/ads/n9;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ia;->F(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/ia;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ia;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/ia;->u()Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    return-void
.end method

.method public static d0()Lroi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ia;->p()Llsi;

    move-result-object v0

    check-cast v0, Lroi;

    return-object v0
.end method

.method public static bridge synthetic f0()Lcom/google/android/gms/internal/ads/n9;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    return-object v0
.end method

.method public static g0(Ljava/io/InputStream;Lesi;)Lcom/google/android/gms/internal/ads/n9;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/ia;->O(Lcom/google/android/gms/internal/ads/ia;Ljava/io/InputStream;Lesi;)Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/n9;

    return-object p0
.end method

.method public static synthetic i0(Lcom/google/android/gms/internal/ads/n9;Lcom/google/android/gms/internal/ads/m9;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    invoke-interface {v0}, Lysi;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ia;->v(Lysi;)Lysi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic j0(Lcom/google/android/gms/internal/ads/n9;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/n9;->zzc:I

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

    sget-object p0, Lcom/google/android/gms/internal/ads/n9;->zzb:Lvti;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/ads/n9;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/ads/n9;->zzb:Lvti;

    if-nez p0, :cond_0

    new-instance p0, Lmsi;

    sget-object p2, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    invoke-direct {p0, p2}, Lmsi;-><init>(Lcom/google/android/gms/internal/ads/ia;)V

    sput-object p0, Lcom/google/android/gms/internal/ads/n9;->zzb:Lvti;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    return-object p0

    :cond_4
    new-instance p0, Lroi;

    invoke-direct {p0, p2}, Lroi;-><init>(Lwoi;)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/n9;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/n9;-><init>()V

    return-object p0

    :cond_6
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/ads/m9;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/n9;->zza:Lcom/google/android/gms/internal/ads/n9;

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b"

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

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final c0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/n9;->zzc:I

    return p0
.end method

.method public final e0(I)Lcom/google/android/gms/internal/ads/m9;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/m9;

    return-object p0
.end method

.method public final h0()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n9;->zzd:Lysi;

    return-object p0
.end method
