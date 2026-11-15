.class public abstract Lemi;
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

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v0}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v0

    sput-object v0, Lemi;->a:Leri;

    new-instance v1, Lami;

    invoke-direct {v1}, Lami;-><init>()V

    const-class v2, Lski;

    const-class v3, Lvji;

    invoke-static {v1, v2, v3}, Lzii;->b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;

    move-result-object v1

    sput-object v1, Lemi;->b:Lzii;

    new-instance v1, Lbmi;

    invoke-direct {v1}, Lbmi;-><init>()V

    invoke-static {v1, v0, v3}, Lvii;->b(Ltii;Leri;Ljava/lang/Class;)Lvii;

    move-result-object v1

    sput-object v1, Lemi;->c:Lvii;

    new-instance v1, Lcmi;

    invoke-direct {v1}, Lcmi;-><init>()V

    const-class v2, Lkki;

    const-class v3, Luji;

    invoke-static {v1, v2, v3}, Lmhi;->b(Lkhi;Ljava/lang/Class;Ljava/lang/Class;)Lmhi;

    move-result-object v1

    sput-object v1, Lemi;->d:Lmhi;

    new-instance v1, Ldmi;

    invoke-direct {v1}, Ldmi;-><init>()V

    invoke-static {v1, v0, v3}, Lihi;->b(Lehi;Leri;Ljava/lang/Class;)Lihi;

    move-result-object v0

    sput-object v0, Lemi;->e:Lihi;

    return-void
.end method

.method public static synthetic a(Lkki;Lt9i;)Luji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/p8;->c0()Lrmi;

    move-result-object v0

    invoke-virtual {p0}, Lkki;->d()Lski;

    move-result-object v1

    invoke-static {v1}, Lemi;->g(Lski;)Lcom/google/android/gms/internal/ads/r8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrmi;->w(Lcom/google/android/gms/internal/ads/r8;)Lrmi;

    invoke-virtual {p0}, Lkki;->e()Lfri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfri;->d(Lt9i;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrmi;->v(Lcom/google/android/gms/internal/ads/zzgwn;)Lrmi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/p8;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lkki;->d()Lski;

    move-result-object v1

    invoke-virtual {v1}, Lski;->f()Lqki;

    move-result-object v1

    invoke-static {v1}, Lemi;->h(Lqki;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lkki;->f()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v2, p1, v0, v1, p0}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lski;)Lvji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/q8;->c0()Ltmi;

    move-result-object v1

    invoke-static {p0}, Lemi;->g(Lski;)Lcom/google/android/gms/internal/ads/r8;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltmi;->w(Lcom/google/android/gms/internal/ads/r8;)Ltmi;

    invoke-virtual {p0}, Lski;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ltmi;->v(I)Ltmi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/q8;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    invoke-virtual {p0}, Lski;->f()Lqki;

    move-result-object p0

    invoke-static {p0}, Lemi;->h(Lqki;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnoi;->v(Lcom/google/android/gms/internal/ads/zzgtt;)Lnoi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/k9;

    invoke-static {p0}, Lvji;->b(Lcom/google/android/gms/internal/ads/k9;)Lvji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Luji;Lt9i;)Lkki;
    .locals 3

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/p8;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/p8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p8;->b0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lski;->e()Lpki;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p8;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lpki;->a(I)Lpki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p8;->f0()Lcom/google/android/gms/internal/ads/r8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/r8;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lpki;->b(I)Lpki;

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v2

    invoke-static {v2}, Lemi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Lqki;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpki;->c(Lqki;)Lpki;

    invoke-virtual {v1}, Lpki;->d()Lski;

    move-result-object v1

    invoke-static {}, Lkki;->c()Lgki;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgki;->c(Lski;)Lgki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p8;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    invoke-static {v0, p1}, Lfri;->b([BLt9i;)Lfri;

    move-result-object p1

    invoke-virtual {v2, p1}, Lgki;->a(Lfri;)Lgki;

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgki;->b(Ljava/lang/Integer;)Lgki;

    invoke-virtual {v2}, Lgki;->d()Lkki;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCmacKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCmacProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lvji;)Lski;
    .locals 3

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/q8;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/q8;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lski;->e()Lpki;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q8;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lpki;->a(I)Lpki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/q8;->f0()Lcom/google/android/gms/internal/ads/r8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/r8;->b0()I

    move-result v0

    invoke-virtual {v1, v0}, Lpki;->b(I)Lpki;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Lemi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Lqki;

    move-result-object p0

    invoke-virtual {v1, p0}, Lpki;->c(Lqki;)Lpki;

    invoke-virtual {v1}, Lpki;->d()Lski;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCmacParameters failed: "

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

    const-string v1, "Wrong type URL in call to AesCmacProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Lqii;)V
    .locals 1

    sget-object v0, Lemi;->b:Lzii;

    invoke-virtual {p0, v0}, Lqii;->i(Lzii;)V

    sget-object v0, Lemi;->c:Lvii;

    invoke-virtual {p0, v0}, Lqii;->h(Lvii;)V

    sget-object v0, Lemi;->d:Lmhi;

    invoke-virtual {p0, v0}, Lqii;->g(Lmhi;)V

    sget-object v0, Lemi;->e:Lihi;

    invoke-virtual {p0, v0}, Lqii;->f(Lihi;)V

    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzgtt;)Lqki;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p0, Lqki;->c:Lqki;

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
    sget-object p0, Lqki;->e:Lqki;

    return-object p0

    :cond_2
    sget-object p0, Lqki;->d:Lqki;

    return-object p0

    :cond_3
    sget-object p0, Lqki;->b:Lqki;

    return-object p0
.end method

.method public static g(Lski;)Lcom/google/android/gms/internal/ads/r8;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/r8;->c0()Lvmi;

    move-result-object v0

    invoke-virtual {p0}, Lski;->b()I

    move-result p0

    invoke-virtual {v0, p0}, Lvmi;->v(I)Lvmi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/r8;

    return-object p0
.end method

.method public static h(Lqki;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2

    sget-object v0, Lqki;->b:Lqki;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lqki;->c:Lqki;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    sget-object v0, Lqki;->e:Lqki;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_2
    sget-object v0, Lqki;->d:Lqki;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
