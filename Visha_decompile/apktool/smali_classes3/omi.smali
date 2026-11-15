.class public abstract Lomi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leri;

.field public static final b:Lygi;

.field public static final c:Lygi;

.field public static final d:Lzii;

.field public static final e:Lvii;

.field public static final f:Lmhi;

.field public static final g:Lihi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v0}, Lfki;->b(Ljava/lang/String;)Leri;

    move-result-object v0

    sput-object v0, Lomi;->a:Leri;

    invoke-static {}, Lygi;->a()Lwgi;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgtt;->zzd:Lcom/google/android/gms/internal/ads/zzgtt;

    sget-object v3, Lhli;->e:Lhli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgtt;->zzb:Lcom/google/android/gms/internal/ads/zzgtt;

    sget-object v3, Lhli;->b:Lhli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgtt;->zzc:Lcom/google/android/gms/internal/ads/zzgtt;

    sget-object v3, Lhli;->d:Lhli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgtt;->zze:Lcom/google/android/gms/internal/ads/zzgtt;

    sget-object v3, Lhli;->c:Lhli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    invoke-virtual {v1}, Lwgi;->b()Lygi;

    move-result-object v1

    sput-object v1, Lomi;->b:Lygi;

    invoke-static {}, Lygi;->a()Lwgi;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsc;->zzb:Lcom/google/android/gms/internal/ads/zzgsc;

    sget-object v3, Lgli;->b:Lgli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsc;->zzf:Lcom/google/android/gms/internal/ads/zzgsc;

    sget-object v3, Lgli;->c:Lgli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsc;->zzd:Lcom/google/android/gms/internal/ads/zzgsc;

    sget-object v3, Lgli;->d:Lgli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsc;->zzc:Lcom/google/android/gms/internal/ads/zzgsc;

    sget-object v3, Lgli;->e:Lgli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgsc;->zze:Lcom/google/android/gms/internal/ads/zzgsc;

    sget-object v3, Lgli;->f:Lgli;

    invoke-virtual {v1, v2, v3}, Lwgi;->a(Ljava/lang/Enum;Ljava/lang/Object;)Lwgi;

    invoke-virtual {v1}, Lwgi;->b()Lygi;

    move-result-object v1

    sput-object v1, Lomi;->c:Lygi;

    new-instance v1, Limi;

    invoke-direct {v1}, Limi;-><init>()V

    const-class v2, Ljli;

    const-class v3, Lvji;

    invoke-static {v1, v2, v3}, Lzii;->b(Lxii;Ljava/lang/Class;Ljava/lang/Class;)Lzii;

    move-result-object v1

    sput-object v1, Lomi;->d:Lzii;

    new-instance v1, Ljmi;

    invoke-direct {v1}, Ljmi;-><init>()V

    invoke-static {v1, v0, v3}, Lvii;->b(Ltii;Leri;Ljava/lang/Class;)Lvii;

    move-result-object v1

    sput-object v1, Lomi;->e:Lvii;

    new-instance v1, Lkmi;

    invoke-direct {v1}, Lkmi;-><init>()V

    const-class v2, Lzki;

    const-class v3, Luji;

    invoke-static {v1, v2, v3}, Lmhi;->b(Lkhi;Ljava/lang/Class;Ljava/lang/Class;)Lmhi;

    move-result-object v1

    sput-object v1, Lomi;->f:Lmhi;

    new-instance v1, Llmi;

    invoke-direct {v1}, Llmi;-><init>()V

    invoke-static {v1, v0, v3}, Lihi;->b(Lehi;Leri;Ljava/lang/Class;)Lihi;

    move-result-object v0

    sput-object v0, Lomi;->g:Lihi;

    return-void
.end method

.method public static synthetic a(Lzki;Lt9i;)Luji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/g9;->c0()Leoi;

    move-result-object v0

    invoke-virtual {p0}, Lzki;->d()Ljli;

    move-result-object v1

    invoke-static {v1}, Lomi;->f(Ljli;)Lcom/google/android/gms/internal/ads/i9;

    move-result-object v1

    invoke-virtual {v0, v1}, Leoi;->w(Lcom/google/android/gms/internal/ads/i9;)Leoi;

    invoke-virtual {p0}, Lzki;->e()Lfri;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfri;->d(Lt9i;)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    invoke-virtual {v0, p1}, Leoi;->v(Lcom/google/android/gms/internal/ads/zzgwn;)Leoi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/g9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    sget-object v1, Lomi;->b:Lygi;

    invoke-virtual {p0}, Lzki;->d()Ljli;

    move-result-object v2

    invoke-virtual {v2}, Ljli;->g()Lhli;

    move-result-object v2

    invoke-virtual {v1, v2}, Lygi;->b(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {p0}, Lzki;->f()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v2, p1, v0, v1, p0}, Luji;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgsn;Lcom/google/android/gms/internal/ads/zzgtt;Ljava/lang/Integer;)Luji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljli;)Lvji;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/k9;->b0()Lnoi;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v0, v1}, Lnoi;->w(Ljava/lang/String;)Lnoi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/h9;->d0()Lgoi;

    move-result-object v1

    invoke-static {p0}, Lomi;->f(Ljli;)Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgoi;->w(Lcom/google/android/gms/internal/ads/i9;)Lgoi;

    invoke-virtual {p0}, Ljli;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lgoi;->v(I)Lgoi;

    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/h9;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aa;->g()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnoi;->x(Lcom/google/android/gms/internal/ads/zzgwn;)Lnoi;

    sget-object v1, Lomi;->b:Lygi;

    invoke-virtual {p0}, Ljli;->g()Lhli;

    move-result-object p0

    invoke-virtual {v1, p0}, Lygi;->b(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgtt;

    invoke-virtual {v0, p0}, Lnoi;->v(Lcom/google/android/gms/internal/ads/zzgtt;)Lnoi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/k9;

    invoke-static {p0}, Lvji;->b(Lcom/google/android/gms/internal/ads/k9;)Lvji;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Luji;Lt9i;)Lzki;
    .locals 4

    invoke-virtual {p0}, Luji;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Luji;->d()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/g9;->f0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/g9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->b0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljli;->e()Lfli;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->h0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwn;->zzd()I

    move-result v2

    invoke-virtual {v1, v2}, Lfli;->b(I)Lfli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->g0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lfli;->c(I)Lfli;

    sget-object v2, Lomi;->c:Lygi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->g0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/i9;->c0()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lygi;->c(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgli;

    invoke-virtual {v1, v2}, Lfli;->a(Lgli;)Lfli;

    sget-object v2, Lomi;->b:Lygi;

    invoke-virtual {p0}, Luji;->c()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lygi;->c(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhli;

    invoke-virtual {v1, v2}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v1}, Lfli;->e()Ljli;

    move-result-object v1

    invoke-static {}, Lzki;->c()Lxki;

    move-result-object v2

    invoke-virtual {v2, v1}, Lxki;->c(Ljli;)Lxki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/g9;->h0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v0

    invoke-static {v0, p1}, Lfri;->b([BLt9i;)Lfri;

    move-result-object p1

    invoke-virtual {v2, p1}, Lxki;->b(Lfri;)Lxki;

    invoke-virtual {p0}, Luji;->e()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, p0}, Lxki;->a(Ljava/lang/Integer;)Lxki;

    invoke-virtual {v2}, Lxki;->d()Lzki;

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

    const-string p1, "Parsing HmacKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to HmacProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lvji;)Ljli;
    .locals 3

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/k9;->h0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

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

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/h9;->g0(Lcom/google/android/gms/internal/ads/zzgwn;Lesi;)Lcom/google/android/gms/internal/ads/h9;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->c0()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljli;->e()Lfli;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lfli;->b(I)Lfli;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->h0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/i9;->b0()I

    move-result v2

    invoke-virtual {v1, v2}, Lfli;->c(I)Lfli;

    sget-object v2, Lomi;->c:Lygi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->h0()Lcom/google/android/gms/internal/ads/i9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i9;->c0()Lcom/google/android/gms/internal/ads/zzgsc;

    move-result-object v0

    invoke-virtual {v2, v0}, Lygi;->c(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgli;

    invoke-virtual {v1, v0}, Lfli;->a(Lgli;)Lfli;

    sget-object v0, Lomi;->b:Lygi;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/k9;->f0()Lcom/google/android/gms/internal/ads/zzgtt;

    move-result-object p0

    invoke-virtual {v0, p0}, Lygi;->c(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhli;

    invoke-virtual {v1, p0}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v1}, Lfli;->e()Ljli;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/h9;->c0()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing HmacParameters failed: unknown Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing HmacParameters failed: "

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

    const-string v1, "Wrong type URL in call to HmacProtoSerialization.parseParameters: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Lqii;)V
    .locals 1

    sget-object v0, Lomi;->d:Lzii;

    invoke-virtual {p0, v0}, Lqii;->i(Lzii;)V

    sget-object v0, Lomi;->e:Lvii;

    invoke-virtual {p0, v0}, Lqii;->h(Lvii;)V

    sget-object v0, Lomi;->f:Lmhi;

    invoke-virtual {p0, v0}, Lqii;->g(Lmhi;)V

    sget-object v0, Lomi;->g:Lihi;

    invoke-virtual {p0, v0}, Lqii;->f(Lihi;)V

    return-void
.end method

.method public static f(Ljli;)Lcom/google/android/gms/internal/ads/i9;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/i9;->d0()Lioi;

    move-result-object v0

    invoke-virtual {p0}, Ljli;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lioi;->w(I)Lioi;

    sget-object v1, Lomi;->c:Lygi;

    invoke-virtual {p0}, Ljli;->f()Lgli;

    move-result-object p0

    invoke-virtual {v1, p0}, Lygi;->b(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgsc;

    invoke-virtual {v0, p0}, Lioi;->v(Lcom/google/android/gms/internal/ads/zzgsc;)Lioi;

    invoke-virtual {v0}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/i9;

    return-object p0
.end method
