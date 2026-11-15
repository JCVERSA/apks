.class public abstract Leli;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Ljji;

.field public static final c:Lc9i;

.field public static final d:Lgii;

.field public static final e:Leii;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lali;

    invoke-direct {v0}, Lali;-><init>()V

    const-class v1, Ltki;

    const-class v2, Lzki;

    invoke-static {v0, v2, v1}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Leli;->a:Ljji;

    new-instance v0, Lbli;

    invoke-direct {v0}, Lbli;-><init>()V

    const-class v1, Lo9i;

    invoke-static {v0, v2, v1}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Leli;->b:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g9;->i0()Lvti;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-static {v3, v1, v0, v2}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Leli;->c:Lc9i;

    new-instance v0, Lcli;

    invoke-direct {v0}, Lcli;-><init>()V

    sput-object v0, Leli;->d:Lgii;

    new-instance v0, Ldli;

    invoke-direct {v0}, Ldli;-><init>()V

    sput-object v0, Leli;->e:Leii;

    const/4 v0, 0x2

    sput v0, Leli;->f:I

    return-void
.end method

.method public static a(Z)V
    .locals 11

    sget p0, Leli;->f:I

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lomi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lomi;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Leli;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Leli;->b:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "HMAC_SHA256_128BITTAG"

    sget-object v3, Lzli;->a:Ljli;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lfli;->b(I)Lfli;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lfli;->c(I)Lfli;

    sget-object v6, Lhli;->e:Lhli;

    invoke-virtual {v2, v6}, Lfli;->d(Lhli;)Lfli;

    sget-object v7, Lgli;->d:Lgli;

    invoke-virtual {v2, v7}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v8, "HMAC_SHA256_128BITTAG_RAW"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v4}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v4}, Lfli;->c(I)Lfli;

    sget-object v8, Lhli;->b:Lhli;

    invoke-virtual {v2, v8}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v7}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v9, "HMAC_SHA256_256BITTAG"

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v4}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v4}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v6}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v7}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v7, "HMAC_SHA256_256BITTAG_RAW"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    const/16 v7, 0x40

    invoke-virtual {v2, v7}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v5}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v8}, Lfli;->d(Lhli;)Lfli;

    sget-object v9, Lgli;->f:Lgli;

    invoke-virtual {v2, v9}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v10, "HMAC_SHA512_128BITTAG"

    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v7}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v5}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v6}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v9}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v5, "HMAC_SHA512_128BITTAG_RAW"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v7}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v4}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v8}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v9}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v5, "HMAC_SHA512_256BITTAG"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v7}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v4}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v6}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v9}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v4, "HMAC_SHA512_256BITTAG_RAW"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HMAC_SHA512_512BITTAG"

    sget-object v4, Lzli;->b:Ljli;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lfli;

    invoke-direct {v2, v3}, Lfli;-><init>(Lili;)V

    invoke-virtual {v2, v7}, Lfli;->b(I)Lfli;

    invoke-virtual {v2, v7}, Lfli;->c(I)Lfli;

    invoke-virtual {v2, v6}, Lfli;->d(Lhli;)Lfli;

    invoke-virtual {v2, v9}, Lfli;->a(Lgli;)Lfli;

    invoke-virtual {v2}, Lfli;->e()Ljli;

    move-result-object v2

    const-string v3, "HMAC_SHA512_512BITTAG_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Leli;->e:Leii;

    const-class v2, Ljli;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Liii;->a()Liii;

    move-result-object v0

    sget-object v1, Leli;->d:Lgii;

    invoke-virtual {v0, v1, v2}, Liii;->b(Lgii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Leli;->c:Lc9i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lchi;->f(Lc9i;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
