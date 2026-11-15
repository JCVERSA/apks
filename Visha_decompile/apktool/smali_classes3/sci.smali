.class public abstract Lsci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljji;

.field public static final b:Lc9i;

.field public static final c:Leii;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lqci;

    invoke-direct {v0}, Lqci;-><init>()V

    const-class v1, Lwci;

    const-class v2, Lq8i;

    invoke-static {v0, v1, v2}, Ljji;->b(Lgji;Ljava/lang/Class;Ljava/lang/Class;)Ljji;

    move-result-object v0

    sput-object v0, Lsci;->a:Ljji;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgsn;->zze:Lcom/google/android/gms/internal/ads/zzgsn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/q9;->g0()Lvti;

    move-result-object v1

    const-string v3, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-static {v3, v2, v0, v1}, Lphi;->c(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgsn;Lvti;)Lc9i;

    move-result-object v0

    sput-object v0, Lsci;->b:Lc9i;

    new-instance v0, Lrci;

    invoke-direct {v0}, Lrci;-><init>()V

    sput-object v0, Lsci;->c:Leii;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    const/4 p0, 0x1

    invoke-static {p0}, Ltgi;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfdi;->a:Leri;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {v0}, Lfdi;->e(Lqii;)V

    invoke-static {}, Lnii;->a()Lnii;

    move-result-object v0

    sget-object v1, Lsci;->a:Ljji;

    invoke-virtual {v0, v1}, Lnii;->c(Ljji;)V

    invoke-static {}, Lfii;->b()Lfii;

    move-result-object v0

    sget-object v1, Lsci;->c:Leii;

    const-class v2, Ladi;

    invoke-virtual {v0, v1, v2}, Lfii;->c(Leii;Ljava/lang/Class;)V

    invoke-static {}, Lchi;->c()Lchi;

    move-result-object v0

    sget-object v1, Lsci;->b:Lc9i;

    invoke-virtual {v0, v1, p0}, Lchi;->d(Lc9i;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering KMS AEAD is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
