.class public abstract Lsbi;
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

    new-instance v0, Lpbi;

    invoke-direct {v0}, Lpbi;-><init>()V

    const-class v1, Lobi;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lsbi;->a:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/a9;->g0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lsbi;->b:Lc9i;

    new-instance v0, Lqbi;

    invoke-direct {v0}, Lqbi;-><init>()V

    sput-object v0, Lsbi;->c:Lgii;

    new-instance v0, Lrbi;

    invoke-direct {v0}, Lrbi;-><init>()V

    sput-object v0, Lsbi;->d:Leii;

    const/4 v0, 0x2

    sput v0, Lsbi;->e:I

    return-void
.end method

.method public static a(Z)V
    .locals 8

    sget p0, Lsbi;->e:I

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lhfi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lhfi;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lsbi;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lmii;->b()Lmii;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "AES128_GCM"

    sget-object v3, Lbei;->a:Lwbi;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ltbi;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ltbi;-><init>(Lvbi;)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ltbi;->a(I)Ltbi;

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Ltbi;->b(I)Ltbi;

    invoke-virtual {v2, v5}, Ltbi;->c(I)Ltbi;

    sget-object v6, Lubi;->d:Lubi;

    invoke-virtual {v2, v6}, Ltbi;->d(Lubi;)Ltbi;

    invoke-virtual {v2}, Ltbi;->e()Lwbi;

    move-result-object v2

    const-string v7, "AES128_GCM_RAW"

    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AES256_GCM"

    sget-object v7, Lbei;->b:Lwbi;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ltbi;

    invoke-direct {v2, v3}, Ltbi;-><init>(Lvbi;)V

    invoke-virtual {v2, v4}, Ltbi;->a(I)Ltbi;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ltbi;->b(I)Ltbi;

    invoke-virtual {v2, v5}, Ltbi;->c(I)Ltbi;

    invoke-virtual {v2, v6}, Ltbi;->d(Lubi;)Ltbi;

    invoke-virtual {v2}, Ltbi;->e()Lwbi;

    move-result-object v2

    const-string v3, "AES256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmii;->d(Ljava/util/Map;)V

    invoke-static {}, Liii;->a()Liii;

    move-result-object v0

    sget-object v1, Lsbi;->c:Lgii;

    const-class v2, Lwbi;

    invoke-virtual {v0, v1, v2}, Liii;->b(Lgii;Ljava/lang/Class;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lsbi;->d:Leii;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lsbi;->b:Lc9i;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lchi;->f(Lc9i;IZ)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
