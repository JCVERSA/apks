.class public final Lthi;
.super Lb9i;
.source "SourceFile"


# instance fields
.field public final a:Luji;

.field public final b:Leri;


# direct methods
.method public constructor <init>(Luji;Lt9i;)V
    .locals 1

    invoke-direct {p0}, Lb9i;-><init>()V

    invoke-static {p1, p2}, Lthi;->e(Luji;Lt9i;)V

    iput-object p1, p0, Lthi;->a:Luji;

    invoke-virtual {p1}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    invoke-static {p1}, Leri;->b([B)Leri;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Luji;->e()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lrii;->b(I)Leri;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unknown output prefix type"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Luji;->e()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lrii;->a(I)Leri;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lthi;->b:Leri;

    return-void
.end method

.method public static e(Luji;Lt9i;)V
    .locals 0

    sget-object p1, Lqhi;->b:[I

    invoke-virtual {p0}, Luji;->b()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    return-void
.end method


# virtual methods
.method public final a()Lp9i;
    .locals 3

    iget-object p0, p0, Lthi;->a:Luji;

    new-instance v0, Lrhi;

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrhi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgtt;Lshi;)V

    return-object v0
.end method

.method public final b(Lt9i;)Luji;
    .locals 0

    iget-object p0, p0, Lthi;->a:Luji;

    invoke-static {p0, p1}, Lthi;->e(Luji;Lt9i;)V

    return-object p0
.end method

.method public final c()Leri;
    .locals 0

    iget-object p0, p0, Lthi;->b:Leri;

    return-object p0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lthi;->a:Luji;

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
