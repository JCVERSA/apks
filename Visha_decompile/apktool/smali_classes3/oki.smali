.class public abstract Loki;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leii;

.field public static final b:Ljji;

.field public static final c:Ljji;

.field public static final d:Lc9i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Llki;

    invoke-direct {v0}, Llki;-><init>()V

    sput-object v0, Loki;->a:Leii;

    new-instance v0, Lmki;

    invoke-direct {v0}, Lmki;-><init>()V

    const-class v1, Ltki;

    const-class v2, Lkki;

    invoke-static {v0, v2, v1}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Loki;->b:Ljji;

    new-instance v0, Lnki;

    invoke-direct {v0}, Lnki;-><init>()V

    const-class v1, Lo9i;

    invoke-static {v0, v2, v1}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Loki;->c:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/p8;->h0()Lvti;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    invoke-static {v3, v1, v0, v2}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Loki;->d:Lc9i;

    return-void
.end method

.method public static synthetic a(Lkki;)Lo9i;
    .locals 1

    invoke-virtual {p0}, Lkki;->d()Lski;

    move-result-object v0

    invoke-static {v0}, Loki;->e(Lski;)V

    invoke-static {p0}, Lbri;->a(Lkki;)Lo9i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lski;Ljava/lang/Integer;)Lkki;
    .locals 2

    invoke-static {p0}, Loki;->e(Lski;)V

    new-instance v0, Lgki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgki;-><init>(Lhki;)V

    invoke-virtual {v0, p0}, Lgki;->c(Lski;)Lgki;

    invoke-virtual {p0}, Lski;->c()I

    move-result p0

    invoke-static {p0}, Lfri;->c(I)Lfri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgki;->a(Lfri;)Lgki;

    invoke-virtual {v0, p1}, Lgki;->b(Ljava/lang/Integer;)Lgki;

    invoke-virtual {v0}, Lgki;->d()Lkki;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkki;)Ltki;
    .locals 1

    invoke-virtual {p0}, Lkki;->d()Lski;

    move-result-object v0

    invoke-static {v0}, Loki;->e(Lski;)V

    new-instance v0, Lgmi;

    invoke-direct {v0, p0}, Lgmi;-><init>(Lkki;)V

    return-object v0
.end method

.method public static d(Z)V
    .locals 4

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lemi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lemi;->e(Lqii;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Loki;->a:Leii;

    const-class v2, Lski;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Loki;->b:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Loki;->c:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lzli;->c:Lski;

    const-string v3, "AES_CMAC"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AES256_CMAC"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lpki;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lpki;-><init>(Lrki;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lpki;->a(I)Lpki;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lpki;->b(I)Lpki;

    sget-object v3, Lqki;->e:Lqki;

    invoke-virtual {v2, v3}, Lpki;->c(Lqki;)Lpki;

    invoke-virtual {v2}, Lpki;->d()Lski;

    move-result-object v2

    const-string v3, "AES256_CMAC_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Loki;->d:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES CMAC is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lski;)V
    .locals 1

    invoke-virtual {p0}, Lski;->c()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
