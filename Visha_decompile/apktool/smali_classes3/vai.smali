.class public abstract Lvai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Lc9i;

.field public static final c:Lgii;

.field public static final d:Leii;

.field public static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lsai;

    invoke-direct {v0}, Lsai;-><init>()V

    const-class v1, Lrai;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lvai;->a:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/s8;->h0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lvai;->b:Lc9i;

    new-instance v0, Ltai;

    invoke-direct {v0}, Ltai;-><init>()V

    sput-object v0, Lvai;->c:Lgii;

    new-instance v0, Luai;

    invoke-direct {v0}, Luai;-><init>()V

    sput-object v0, Lvai;->d:Leii;

    const/4 v0, 0x2

    sput v0, Lvai;->e:I

    return-void
.end method

.method public static a(Z)V
    .locals 9

    sget p0, Lvai;->e:I

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ltei;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Ltei;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lvai;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_CTR_HMAC_SHA256"

    sget-object v3, Lbei;->e:Lbbi;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lxai;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lxai;-><init>(Labi;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lxai;->a(I)Lxai;

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lxai;->c(I)Lxai;

    invoke-virtual {v2, v4}, Lxai;->e(I)Lxai;

    invoke-virtual {v2, v4}, Lxai;->d(I)Lxai;

    sget-object v6, Lyai;->d:Lyai;

    invoke-virtual {v2, v6}, Lxai;->b(Lyai;)Lxai;

    sget-object v7, Lzai;->d:Lzai;

    invoke-virtual {v2, v7}, Lxai;->f(Lzai;)Lxai;

    invoke-virtual {v2}, Lxai;->g()Lbbi;

    move-result-object v2

    const-string v8, "AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_CTR_HMAC_SHA256"

    sget-object v8, Lbei;->f:Lbbi;

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lxai;

    invoke-direct {v2, v3}, Lxai;-><init>(Labi;)V

    invoke-virtual {v2, v5}, Lxai;->a(I)Lxai;

    invoke-virtual {v2, v5}, Lxai;->c(I)Lxai;

    invoke-virtual {v2, v5}, Lxai;->e(I)Lxai;

    invoke-virtual {v2, v4}, Lxai;->d(I)Lxai;

    invoke-virtual {v2, v6}, Lxai;->b(Lyai;)Lxai;

    invoke-virtual {v2, v7}, Lxai;->f(Lzai;)Lxai;

    invoke-virtual {v2}, Lxai;->g()Lbbi;

    move-result-object v2

    const-string v3, "AES256_CTR_HMAC_SHA256_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Liii;->a()Liii;

    move-result-object v0

    sget-object v1, Lvai;->c:Lgii;

    const-class v2, Lbbi;

    invoke-virtual {v0, v1, v2}, Liii;->b(Lgii;Ljava/lang/Class;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lvai;->d:Leii;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lvai;->b:Lc9i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lchi;->f(Lc9i;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
