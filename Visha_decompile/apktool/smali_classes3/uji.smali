.class public final Luji;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyji;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Leri;

.field public final c:Lcom/google/android/gms/internal/ads/zzgwn;

.field public final d:Lcom/google/android/gms/internal/ads/zzgsn;

.field public final e:Lcom/google/android/gms/internal/ads/zzgtt;

.field public final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Leri;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luji;->a:Ljava/lang/String;

    iput-object p2, p0, Luji;->b:Leri;

    iput-object p3, p0, Luji;->c:Lcom/google/android/gms/internal/ads/zzgwn;

    iput-object p4, p0, Luji;->d:Lcom/google/android/gms/internal/ads/zzgsn;

    iput-object p5, p0, Luji;->e:Lcom/google/android/gms/internal/ads/zzgtt;

    iput-object p6, p0, Luji;->f:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    if-ne p3, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p4, :cond_2

    :goto_0
    invoke-static {p0}, Lfki;->a(Ljava/lang/String;)Leri;

    move-result-object v2

    new-instance v7, Luji;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Luji;-><init>(Ljava/lang/String;Leri;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)V

    return-object v7

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/zzgsn;
    .locals 0

    iget-object p0, p0, Luji;->d:Lcom/google/android/gms/internal/ads/zzgsn;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 0

    iget-object p0, p0, Luji;->e:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 0

    iget-object p0, p0, Luji;->c:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Luji;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Luji;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Leri;
    .locals 0

    iget-object p0, p0, Luji;->b:Leri;

    return-object p0
.end method
