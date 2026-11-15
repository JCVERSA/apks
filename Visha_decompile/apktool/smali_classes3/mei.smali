.class public abstract Lmei;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Lc9i;

.field public static final c:Lgii;

.field public static final d:Leii;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljei;

    invoke-direct {v0}, Ljei;-><init>()V

    const-class v1, Liei;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lmei;->a:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/y9;->g0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lmei;->b:Lc9i;

    new-instance v0, Lkei;

    invoke-direct {v0}, Lkei;-><init>()V

    sput-object v0, Lmei;->c:Lgii;

    new-instance v0, Llei;

    invoke-direct {v0}, Llei;-><init>()V

    sput-object v0, Lmei;->d:Leii;

    return-void
.end method

.method public static a(Z)V
    .locals 4

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lqgi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lqgi;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lmei;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lnei;->b:Lnei;

    invoke-static {v2}, Loei;->c(Lnei;)Loei;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lnei;->d:Lnei;

    invoke-static {v2}, Loei;->c(Lnei;)Loei;

    move-result-object v2

    const-string v3, "XCHACHA20_POLY1305_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lmei;->d:Leii;

    const-class v2, Loei;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Liii;->a()Liii;

    move-result-object v0

    sget-object v1, Lmei;->c:Lgii;

    invoke-virtual {v0, v1, v2}, Liii;->b(Lgii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lmei;->b:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
