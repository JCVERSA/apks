.class public abstract Ltei;
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

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v0}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v0

    sput-object v0, Ltei;->a:Leri;

    new-instance v1, Lpei;

    invoke-direct {v1}, Lpei;-><init>()V

    const-class v2, Lbbi;

    const-class v3, Lvji;

    invoke-static {v1, v2, v3}, Lzii;->b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;

    move-result-object v1

    sput-object v1, Ltei;->b:Lzii;

    new-instance v1, Lqei;

    invoke-direct {v1}, Lqei;-><init>()V

    invoke-static {v1, v0, v3}, Lvii;->b(Ltii;Leri;Ljava/lang/Class;)Lvii;

    move-result-object v1

    sput-object v1, Ltei;->c:Lvii;

    new-instance v1, Lrei;

    invoke-direct {v1}, Lrei;-><init>()V

    const-class v2, Lrai;

    const-class v3, Luji;

    invoke-static {v1, v2, v3}, Lmhi;->b(Lkhi;Ljava/lang/Class;Ljava/lang/Class;)Lmhi;

    move-result-object v1

    sput-object v1, Ltei;->d:Lmhi;

    new-instance v1, Lsei;

    invoke-direct {v1}, Lsei;-><init>()V

    invoke-static {v1, v0, v3}, Lihi;->b(Lehi;Leri;Ljava/lang/Class;)Lihi;

    move-result-object v0

    sput-object v0, Ltei;->e:Lihi;

    return-void
.end method

.method public static synthetic a(Luji;Lt9i;)Lrai;
    .locals 3

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/s8;->e0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/s8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->b0()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->f0()Lcom/google/android/gms/internal/ads/u8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u8;->b0()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->g0()Lcom/google/android/gms/internal/ads/g9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/g9;->b0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lbbi;->f()Lxai;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->f0()Lcom/google/android/gms/internal/ads/u8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/u8;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->a(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->g0()Lcom/google/android/gms/internal/ads/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/g9;->h0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->c(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->f0()Lcom/google/android/gms/internal/ads/u8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/u8;->f0()Lcom/google/android/gms/internal/ads/w8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w8;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->d(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->g0()Lcom/google/android/gms/internal/ads/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/g9;->g0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->e(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->g0()Lcom/google/android/gms/internal/ads/g9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/g9;->g0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i9;->c0()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v2

    invoke-static {v2}, Ltei;->f(Lcom/google/android/gms/internal/ads/zzgsc;)Lyai;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxai;->b(Lyai;)Lxai;

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v2

    invoke-static {v2}, Ltei;->g(Lcom/google/android/gms/internal/ads/zzgtt;)Lzai;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxai;->f(Lzai;)Lxai;

    invoke-virtual {v1}, Lxai;->g()Lbbi;

    move-result-object v1

    invoke-static {}, Lrai;->c()Lpai;

    move-result-object v2

    invoke-virtual {v2, v1}, Lpai;->d(Lbbi;)Lpai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->f0()Lcom/google/android/gms/internal/ads/u8;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/u8;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v1

    invoke-static {v1, p1}, Lfri;->b([BLt9i;)Lfri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lpai;->a(Lfri;)Lpai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/s8;->g0()Lcom/google/android/gms/internal/ads/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->h0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    invoke-static {v0, p1}, Lfri;->b([BLt9i;)Lfri;

    move-result-object p1

    invoke-virtual {v2, p1}, Lpai;->b(Lfri;)Lpai;

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lpai;->c(Ljava/lang/Integer;)Lpai;

    invoke-virtual {v2}, Lpai;->e()Lrai;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner HMAC keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys inner AES CTR keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing AesCtrHmacAeadKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lvji;)Lbbi;
    .locals 3

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->g0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/t8;->d0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/t8;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->f0()Lcom/google/android/gms/internal/ads/h9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/h9;->c0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lbbi;->f()Lxai;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->e0()Lcom/google/android/gms/internal/ads/v8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/v8;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->a(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->f0()Lcom/google/android/gms/internal/ads/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/h9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->c(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->e0()Lcom/google/android/gms/internal/ads/v8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/v8;->f0()Lcom/google/android/gms/internal/ads/w8;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/w8;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->d(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->f0()Lcom/google/android/gms/internal/ads/h9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/h9;->h0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lxai;->e(I)Lxai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/t8;->f0()Lcom/google/android/gms/internal/ads/h9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->h0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i9;->c0()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v0

    invoke-static {v0}, Ltei;->f(Lcom/google/android/gms/internal/ads/zzgsc;)Lyai;

    move-result-object v0

    invoke-virtual {v1, v0}, Lxai;->b(Lyai;)Lxai;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-static {p0}, Ltei;->g(Lcom/google/android/gms/internal/ads/zzgtt;)Lzai;

    move-result-object p0

    invoke-virtual {v1, p0}, Lxai;->f(Lzai;)Lxai;

    invoke-virtual {v1}, Lxai;->g()Lbbi;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 keys are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing AesCtrHmacAeadParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Wrong type URL in call to AesCtrHmacAeadProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c(Lrai;Lt9i;)Luji;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/s8;->c0()Lxmi;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/u8;->c0()Lbni;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/w8;->c0()Lfni;

    move-result-object v2

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v3

    invoke-virtual {v3}, Lbbi;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lfni;->v(I)Lfni;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/w8;

    invoke-virtual {v1, v2}, Lbni;->w(Lcom/google/android/gms/internal/ads/w8;)Lbni;

    invoke-virtual {p0}, Lrai;->e()Lfri;

    move-result-object v2

    invoke-virtual {v2, p1}, Lfri;->d(Lt9i;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbni;->v(Lcom/google/android/gms/internal/ads/zzgwn;)Lbni;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/u8;

    invoke-virtual {v0, v1}, Lxmi;->v(Lcom/google/android/gms/internal/ads/u8;)Lxmi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g9;->c0()Leoi;

    move-result-object v1

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v2

    invoke-static {v2}, Ltei;->h(Lbbi;)Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v1, v2}, Leoi;->w(Lcom/google/android/gms/internal/ads/i9;)Leoi;

    invoke-virtual {p0}, Lrai;->f()Lfri;

    move-result-object v2

    invoke-virtual {v2, p1}, Lfri;->d(Lt9i;)[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-virtual {v1, p1}, Leoi;->v(Lcom/google/android/gms/internal/ads/zzgwn;)Leoi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g9;

    invoke-virtual {v0, p1}, Lxmi;->w(Lcom/google/android/gms/internal/ads/g9;)Lxmi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/s8;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-virtual {p0}, Lrai;->d()Lbbi;

    move-result-object v1

    invoke-virtual {v1}, Lbbi;->h()Lzai;

    move-result-object v1

    invoke-static {v1}, Ltei;->i(Lzai;)Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v1

    invoke-virtual {p0}, Lrai;->g()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v2, p1, v0, v1, p0}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lbbi;)Lvji;
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/t8;->b0()Lzmi;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/v8;->c0()Ldni;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/w8;->c0()Lfni;

    move-result-object v3

    invoke-virtual {p0}, Lbbi;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Lfni;->v(I)Lfni;

    invoke-virtual {v3}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/w8;

    invoke-virtual {v2, v3}, Ldni;->w(Lcom/google/android/gms/internal/ads/w8;)Ldni;

    invoke-virtual {p0}, Lbbi;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ldni;->v(I)Ldni;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/v8;

    invoke-virtual {v1, v2}, Lzmi;->v(Lcom/google/android/gms/internal/ads/v8;)Lzmi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/h9;->d0()Lgoi;

    move-result-object v2

    invoke-static {p0}, Ltei;->h(Lbbi;)Lcom/google/android/gms/internal/ads/i9;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgoi;->w(Lcom/google/android/gms/internal/ads/i9;)Lgoi;

    invoke-virtual {p0}, Lbbi;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lgoi;->v(I)Lgoi;

    invoke-virtual {v2}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v1, v2}, Lzmi;->w(Lcom/google/android/gms/internal/ads/h9;)Lzmi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/t8;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    invoke-virtual {p0}, Lbbi;->h()Lzai;

    move-result-object p0

    invoke-static {p0}, Ltei;->i(Lzai;)Lcom/google/android/gms/internal/ads/zzgtt;

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

    sget-object v0, Ltei;->b:Lzii;

    invoke-virtual {p0, v0}, Lqii;->i(Lzii;)V

    sget-object v0, Ltei;->c:Lvii;

    invoke-virtual {p0, v0}, Lqii;->h(Lvii;)V

    sget-object v0, Ltei;->d:Lmhi;

    invoke-virtual {p0, v0}, Lqii;->g(Lmhi;)V

    sget-object v0, Ltei;->e:Lihi;

    invoke-virtual {p0, v0}, Lqii;->f(Lihi;)V

    return-void
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzgsc;)Lyai;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object p0, Lyai;->c:Lyai;

    return-object p0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgsc;->zza()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse HashType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lyai;->f:Lyai;

    return-object p0

    :cond_2
    sget-object p0, Lyai;->d:Lyai;

    return-object p0

    :cond_3
    sget-object p0, Lyai;->e:Lyai;

    return-object p0

    :cond_4
    sget-object p0, Lyai;->b:Lyai;

    return-object p0
.end method

.method public static g(Lcom/google/android/gms/internal/ads/zzgtt;)Lzai;
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
    sget-object p0, Lzai;->d:Lzai;

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lzai;->c:Lzai;

    return-object p0

    :cond_3
    sget-object p0, Lzai;->b:Lzai;

    return-object p0
.end method

.method public static h(Lbbi;)Lcom/google/android/gms/internal/ads/i9;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/i9;->d0()Lioi;

    move-result-object v0

    invoke-virtual {p0}, Lbbi;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lioi;->w(I)Lioi;

    invoke-virtual {p0}, Lbbi;->g()Lyai;

    move-result-object p0

    sget-object v1, Lyai;->b:Lyai;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzb:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_0
    sget-object v1, Lyai;->c:Lyai;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzf:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_1
    sget-object v1, Lyai;->d:Lyai;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzd:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_2
    sget-object v1, Lyai;->e:Lyai;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zzc:Lcom/google/android/gms/internal/ads/zzgsc;

    goto :goto_0

    :cond_3
    sget-object v1, Lyai;->f:Lyai;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgsc;->zze:Lcom/google/android/gms/internal/ads/zzgsc;

    :goto_0
    invoke-virtual {v0, p0}, Lioi;->v(Lcom/google/android/gms/internal/ads/zzgsc;)Lioi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/i9;

    return-object p0

    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize HashType "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lzai;)Lcom/google/android/gms/internal/ads/zzgtt;
    .locals 2

    sget-object v0, Lzai;->b:Lzai;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_0
    sget-object v0, Lzai;->c:Lzai;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_1
    sget-object v0, Lzai;->d:Lzai;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    return-object p0

    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to serialize variant: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
