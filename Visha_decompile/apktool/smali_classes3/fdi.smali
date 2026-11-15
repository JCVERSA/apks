.class public abstract Lfdi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leri;

.field public static final b:Lzii;

.field public static final c:Lvii;

.field public static final d:Lmhi;

.field public static final e:Lihi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-static {v0}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v0

    sput-object v0, Lfdi;->a:Leri;

    new-instance v1, Lbdi;

    invoke-direct {v1}, Lbdi;-><init>()V

    const-class v2, Ladi;

    const-class v3, Lvji;

    invoke-static {v1, v2, v3}, Lzii;->b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;

    move-result-object v1

    sput-object v1, Lfdi;->b:Lzii;

    new-instance v1, Lcdi;

    invoke-direct {v1}, Lcdi;-><init>()V

    invoke-static {v1, v0, v3}, Lvii;->b(Ltii;Leri;Ljava/lang/Class;)Lvii;

    move-result-object v1

    sput-object v1, Lfdi;->c:Lvii;

    new-instance v1, Lddi;

    invoke-direct {v1}, Lddi;-><init>()V

    const-class v2, Lwci;

    const-class v3, Luji;

    invoke-static {v1, v2, v3}, Lmhi;->b(Lkhi;Ljava/lang/Class;Ljava/lang/Class;)Lmhi;

    move-result-object v1

    sput-object v1, Lfdi;->d:Lmhi;

    new-instance v1, Ledi;

    invoke-direct {v1}, Ledi;-><init>()V

    invoke-static {v1, v0, v3}, Lihi;->b(Lehi;Leri;Ljava/lang/Class;)Lihi;

    move-result-object v0

    sput-object v0, Lfdi;->e:Lihi;

    return-void
.end method

.method public static synthetic a(Luji;Lt9i;)Lwci;
    .locals 2

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/q9;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/q9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/q9;->b0()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/q9;->f0()Lcom/google/android/gms/internal/ads/r9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/r9;->f0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v0

    invoke-static {v0}, Lfdi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Lxci;

    move-result-object v0

    invoke-static {p1, v0}, Ladi;->c(Ljava/lang/String;Lxci;)Ladi;

    move-result-object p1

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lwci;->c(Ladi;Ljava/lang/Integer;)Lwci;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KmsAeadKey are only accepted with version 0, got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lvji;)Ladi;
    .locals 2

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/r9;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/r9;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r9;->f0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Lfdi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Lxci;

    move-result-object p0

    invoke-static {v0, p0}, Ladi;->c(Ljava/lang/String;Lxci;)Ladi;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c(Lwci;Lt9i;)Luji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/q9;->c0()Lapi;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/r9;->b0()Lcpi;

    move-result-object v0

    invoke-virtual {p0}, Lwci;->d()Ladi;

    move-result-object v1

    invoke-virtual {v1}, Ladi;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcpi;->v(Ljava/lang/String;)Lcpi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/r9;

    invoke-virtual {p1, v0}, Lapi;->v(Lcom/google/android/gms/internal/ads/r9;)Lapi;

    invoke-virtual {p1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/q9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zze:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lwci;->d()Ladi;

    move-result-object v1

    invoke-virtual {v1}, Ladi;->b()Lxci;

    move-result-object v1

    invoke-static {v1}, Lfdi;->g(Lxci;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lwci;->e()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-static {v2, p1, v0, v1, p0}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ladi;)Lvji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/r9;->b0()Lcpi;

    move-result-object v1

    invoke-virtual {p0}, Ladi;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcpi;->v(Ljava/lang/String;)Lcpi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/r9;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    invoke-virtual {p0}, Ladi;->b()Lxci;

    move-result-object p0

    invoke-static {p0}, Lfdi;->g(Lxci;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnoi;->v(Lcom/google/android/gms/internal/ads/zzgtt;)Lnoi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/k9;

    invoke-static {p0}, Lvji;->b(Lcom/google/android/gms/internal/ads/k9;)Lvji;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lqii;)V
    .locals 1

    sget-object v0, Lfdi;->b:Lzii;

    invoke-virtual {p0, v0}, Lqii;->i(Lzii;)V

    sget-object v0, Lfdi;->c:Lvii;

    invoke-virtual {p0, v0}, Lqii;->h(Lvii;)V

    sget-object v0, Lfdi;->d:Lmhi;

    invoke-virtual {p0, v0}, Lqii;->g(Lmhi;)V

    sget-object v0, Lfdi;->e:Lihi;

    invoke-virtual {p0, v0}, Lqii;->f(Lihi;)V

    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzgtt;)Lxci;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object p0, Lxci;->c:Lxci;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtt;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lxci;->b:Lxci;

    return-object p0
.end method

.method public static g(Lxci;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2

    sget-object v0, Lxci;->b:Lxci;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lxci;->c:Lxci;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
