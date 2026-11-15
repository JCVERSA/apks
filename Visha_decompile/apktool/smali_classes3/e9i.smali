.class public abstract Le9i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lp9i;)Lp9i;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Le9i;->b(Lp9i;)Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p0

    invoke-static {p0}, Lx9i;->a([B)Lp9i;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lp9i;)Lcom/google/android/gms/internal/ads/k9;
    .locals 3

    :try_start_0
    invoke-static {}, Lqii;->c()Lqii;

    move-result-object p0

    const-class v0, Lvji;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lqii;->e(Lp9i;Ljava/lang/Class;)Lyji;

    move-result-object p0

    check-cast p0, Lvji;

    invoke-virtual {p0}, Lvji;->c()Lcom/google/android/gms/internal/ads/k9;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnw;

    const-string v1, "Parsing parameters failed in getProto(). You probably want to call some Tink register function for "

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzgnw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
