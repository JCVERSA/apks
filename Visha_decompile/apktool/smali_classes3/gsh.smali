.class public abstract Lgsh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lgsh;->g(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Z)V

    return-void
.end method

.method public static b(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lgsh;->g(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Z)V

    return-void
.end method

.method public static c(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V
    .locals 1

    sget-object v0, Lsze;->c:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p0

    new-instance v0, Lfsh;

    invoke-direct {v0, p1, p2}, Lfsh;-><init>(Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static d(Lim5;Lwrh;)V
    .locals 1

    sget-object v0, Lsze;->c:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p0

    new-instance v0, Ldsh;

    invoke-direct {v0, p1}, Ldsh;-><init>(Lwrh;)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcye;->T8:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static f(Lenh;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzg(Lenh;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x17

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0
.end method

.method public static g(Lim5;Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Z)V
    .locals 1

    sget-object v0, Lsze;->c:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lq7i;->zzE(Lim5;)Lq7i;

    move-result-object p0

    new-instance v0, Lesh;

    invoke-direct {v0, p1, p2, p3}, Lesh;-><init>(Lcom/google/android/gms/internal/ads/zzfgn;Lwrh;Z)V

    sget-object p1, Lzef;->g:Lg8i;

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method
