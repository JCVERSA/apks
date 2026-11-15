.class public abstract Lfci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Leii;

.field public static final c:Lgii;

.field public static final d:Lc9i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcci;

    invoke-direct {v0}, Lcci;-><init>()V

    const-class v1, Lbci;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lfci;->a:Ljji;

    new-instance v0, Ldci;

    invoke-direct {v0}, Ldci;-><init>()V

    sput-object v0, Lfci;->b:Leii;

    new-instance v0, Leci;

    invoke-direct {v0}, Leci;-><init>()V

    sput-object v0, Lfci;->c:Lgii;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c9;->g0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lfci;->d:Lc9i;

    return-void
.end method

.method public static a(Z)V
    .locals 7

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmfi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lmfi;->e(Lqii;)V

    invoke-static {}, Lfci;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lfci;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lgci;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lgci;-><init>(Lici;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lgci;->a(I)Lgci;

    sget-object v5, Lhci;->b:Lhci;

    invoke-virtual {v2, v5}, Lgci;->b(Lhci;)Lgci;

    invoke-virtual {v2}, Lgci;->c()Ljci;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lgci;

    invoke-direct {v2, v3}, Lgci;-><init>(Lici;)V

    invoke-virtual {v2, v4}, Lgci;->a(I)Lgci;

    sget-object v4, Lhci;->d:Lhci;

    invoke-virtual {v2, v4}, Lgci;->b(Lhci;)Lgci;

    invoke-virtual {v2}, Lgci;->c()Ljci;

    move-result-object v2

    const-string v6, "AES128_GCM_SIV_RAW"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lgci;

    invoke-direct {v2, v3}, Lgci;-><init>(Lici;)V

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Lgci;->a(I)Lgci;

    invoke-virtual {v2, v5}, Lgci;->b(Lhci;)Lgci;

    invoke-virtual {v2}, Lgci;->c()Ljci;

    move-result-object v2

    const-string v5, "AES256_GCM_SIV"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lgci;

    invoke-direct {v2, v3}, Lgci;-><init>(Lici;)V

    invoke-virtual {v2, v6}, Lgci;->a(I)Lgci;

    invoke-virtual {v2, v4}, Lgci;->b(Lhci;)Lgci;

    invoke-virtual {v2}, Lgci;->c()Ljci;

    move-result-object v2

    const-string v3, "AES256_GCM_SIV_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Liii;->a()Liii;

    move-result-object v0

    sget-object v1, Lfci;->c:Lgii;

    const-class v2, Ljci;

    invoke-virtual {v0, v1, v2}, Liii;->b(Lgii;Ljava/lang/Class;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lfci;->b:Leii;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lfci;->d:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES GCM SIV is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Z
    .locals 1

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method
