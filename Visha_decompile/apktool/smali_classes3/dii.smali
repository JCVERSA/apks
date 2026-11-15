.class public final synthetic Ldii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leii;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp9i;Ljava/lang/Integer;)Lb9i;
    .locals 2

    check-cast p1, Luhi;

    sget-object p0, Lfii;->b:Leii;

    invoke-virtual {p1}, Luhi;->b()Lvji;

    move-result-object p0

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lchi;->b(Ljava/lang/String;)Lc9i;

    move-result-object p1

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lchi;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-interface {p1, v0}, Lc9i;->b(Lcom/google/android/gms/internal/ads/zzgwn;)Lcom/google/android/gms/internal/ads/j9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j9;->g0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j9;->f0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j9;->c0()Lcom/google/android/gms/internal/ads/zzgsn;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {v0, v1, p1, p0, p2}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    new-instance p1, Lthi;

    invoke-static {}, La9i;->a()Lt9i;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lthi;-><init>(Luji;Lt9i;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Creating new keys is not allowed."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
