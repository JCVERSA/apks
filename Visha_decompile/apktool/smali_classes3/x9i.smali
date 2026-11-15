.class public abstract Lx9i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Lp9i;
    .locals 2

    :try_start_0
    invoke-static {}, Lesi;->a()Lesi;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/k9;->e0([BLesi;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v0

    invoke-static {p0}, Lvji;->a(Lcom/google/android/gms/internal/ads/k9;)Lvji;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqii;->k(Lyji;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Luhi;

    invoke-direct {v0, p0}, Luhi;-><init>(Lvji;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lqii;->b(Lyji;)Lp9i;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failed to parse proto"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lp9i;)[B
    .locals 2

    const-class v0, Lvji;

    invoke-static {}, Lqii;->c()Lqii;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqii;->e(Lp9i;Ljava/lang/Class;)Lyji;

    move-result-object p0

    check-cast p0, Lvji;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    return-object p0
.end method
