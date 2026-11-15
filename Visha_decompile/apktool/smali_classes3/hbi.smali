.class public abstract Lhbi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Lc9i;

.field public static final c:Leii;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfbi;

    invoke-direct {v0}, Lfbi;-><init>()V

    const-class v1, Lebi;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lhbi;->a:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/x8;->h0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lhbi;->b:Lc9i;

    new-instance v0, Lgbi;

    invoke-direct {v0}, Lgbi;-><init>()V

    sput-object v0, Lhbi;->c:Leii;

    return-void
.end method

.method public static a(Z)V
    .locals 7

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyei;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lyei;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lhbi;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_EAX"

    sget-object v3, Lbei;->c:Llbi;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Libi;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Libi;-><init>(Lkbi;)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Libi;->a(I)Libi;

    invoke-virtual {v2, v4}, Libi;->b(I)Libi;

    invoke-virtual {v2, v4}, Libi;->c(I)Libi;

    sget-object v5, Ljbi;->d:Ljbi;

    invoke-virtual {v2, v5}, Libi;->d(Ljbi;)Libi;

    invoke-virtual {v2}, Libi;->e()Llbi;

    move-result-object v2

    const-string v6, "AES128_EAX_RAW"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_EAX"

    sget-object v6, Lbei;->d:Llbi;

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Libi;

    invoke-direct {v2, v3}, Libi;-><init>(Lkbi;)V

    invoke-virtual {v2, v4}, Libi;->a(I)Libi;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Libi;->b(I)Libi;

    invoke-virtual {v2, v4}, Libi;->c(I)Libi;

    invoke-virtual {v2, v5}, Libi;->d(Ljbi;)Libi;

    invoke-virtual {v2}, Libi;->e()Llbi;

    move-result-object v2

    const-string v3, "AES256_EAX_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lhbi;->c:Leii;

    const-class v2, Llbi;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lhbi;->b:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering AES EAX is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
