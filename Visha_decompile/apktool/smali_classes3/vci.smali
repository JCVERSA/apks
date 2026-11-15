.class public abstract Lvci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc9i;

.field public static final b:Leii;

.field public static final c:Ljji;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zzb:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/s9;->g0()Lvti;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    const-class v3, Lq8i;

    invoke-static {v2, v3, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lvci;->a:Lc9i;

    new-instance v0, Ltci;

    invoke-direct {v0}, Ltci;-><init>()V

    sput-object v0, Lvci;->b:Leii;

    new-instance v0, Luci;

    invoke-direct {v0}, Luci;-><init>()V

    const-class v1, Lgdi;

    invoke-static {v0, v1, v3}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lvci;->c:Ljji;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lqdi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lqdi;->e(Lqii;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lvci;->b:Leii;

    const-class v2, Lldi;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lvci;->c:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lvci;->a:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering KMS Envelope AEAD is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
