.class public abstract Ltfi;
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

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-static {v0}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v0

    sput-object v0, Ltfi;->a:Leri;

    new-instance v1, Lpfi;

    invoke-direct {v1}, Lpfi;-><init>()V

    const-class v2, Lpci;

    const-class v3, Lvji;

    invoke-static {v1, v2, v3}, Lzii;->b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;

    move-result-object v1

    sput-object v1, Ltfi;->b:Lzii;

    new-instance v1, Lqfi;

    invoke-direct {v1}, Lqfi;-><init>()V

    invoke-static {v1, v0, v3}, Lvii;->b(Ltii;Leri;Ljava/lang/Class;)Lvii;

    move-result-object v1

    sput-object v1, Ltfi;->c:Lvii;

    new-instance v1, Lrfi;

    invoke-direct {v1}, Lrfi;-><init>()V

    const-class v2, Lkci;

    const-class v3, Luji;

    invoke-static {v1, v2, v3}, Lmhi;->b(Lkhi;Ljava/lang/Class;Ljava/lang/Class;)Lmhi;

    move-result-object v1

    sput-object v1, Ltfi;->d:Lmhi;

    new-instance v1, Lsfi;

    invoke-direct {v1}, Lsfi;-><init>()V

    invoke-static {v1, v0, v3}, Lihi;->b(Lehi;Leri;Ljava/lang/Class;)Lihi;

    move-result-object v0

    sput-object v0, Ltfi;->e:Lihi;

    return-void
.end method

.method public static synthetic a(Luji;Lt9i;)Lkci;
    .locals 2

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/e9;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/e9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e9;->b0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-static {v1}, Ltfi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Loci;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/e9;->f0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    invoke-static {v0, p1}, Lfri;->b([BLt9i;)Lfri;

    move-result-object p1

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lkci;->c(Loci;Lfri;Ljava/lang/Integer;)Lkci;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing ChaCha20Poly1305Key failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lvji;)Lpci;
    .locals 2

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/f9;->d0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/f9;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Ltfi;->f(Lcom/google/android/gms/internal/ads/zzgtt;)Loci;

    move-result-object p0

    invoke-static {p0}, Lpci;->c(Loci;)Lpci;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing ChaCha20Poly1305Parameters failed: "

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

    const-string v1, "Wrong type URL in call to ChaCha20Poly1305ProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c(Lkci;Lt9i;)Luji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/e9;->c0()Lyni;

    move-result-object v0

    invoke-virtual {p0}, Lkci;->e()Lfri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfri;->d(Lt9i;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyni;->v(Lcom/google/android/gms/internal/ads/zzgwn;)Lyni;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/e9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lkci;->d()Lpci;

    move-result-object v1

    invoke-virtual {v1}, Lpci;->b()Loci;

    move-result-object v1

    invoke-static {v1}, Ltfi;->g(Loci;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lkci;->f()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-static {v2, p1, v0, v1, p0}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lpci;)Lvji;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    invoke-virtual {v0, v1}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/f9;->c0()Lcom/google/android/gms/internal/ads/f9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    invoke-virtual {p0}, Lpci;->b()Loci;

    move-result-object p0

    invoke-static {p0}, Ltfi;->g(Loci;)Lcom/google/android/gms/internal/ads/zzgtt;

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

    sget-object v0, Ltfi;->b:Lzii;

    invoke-virtual {p0, v0}, Lqii;->i(Lzii;)V

    sget-object v0, Ltfi;->c:Lvii;

    invoke-virtual {p0, v0}, Lqii;->h(Lvii;)V

    sget-object v0, Ltfi;->d:Lmhi;

    invoke-virtual {p0, v0}, Lqii;->g(Lmhi;)V

    sget-object v0, Ltfi;->e:Lihi;

    invoke-virtual {p0, v0}, Lqii;->f(Lihi;)V

    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzgtt;)Loci;
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

    goto :goto_0

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
    sget-object p0, Loci;->d:Loci;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Loci;->c:Loci;

    return-object p0

    :cond_3
    sget-object p0, Loci;->b:Loci;

    return-object p0
.end method

.method public static g(Loci;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2

    sget-object v0, Loci;->b:Loci;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Loci;->c:Loci;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    sget-object v0, Loci;->d:Loci;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
