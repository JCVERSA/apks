.class public final Lcom/google/android/gms/internal/ads/j6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lx1i;

.field public static final d:Landroid/content/Intent;


# instance fields
.field public final a:Lw1i;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1i;

    const-string v1, "OverlayDisplayService"

    invoke-direct {v0, v1}, Lx1i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.lmd.BIND_OVERLAY_DISPLAY_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/j6;->d:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lz1i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw1i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    sget-object v5, Lcom/google/android/gms/internal/ads/j6;->d:Landroid/content/Intent;

    new-instance v6, Li1i;

    invoke-direct {v6}, Li1i;-><init>()V

    const-string v4, "OverlayDisplayService"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lw1i;-><init>(Landroid/content/Context;Lx1i;Ljava/lang/String;Landroid/content/Intent;Li1i;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/j6;Lr1i;ILp1i;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw1i;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerPackage"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayMode"

    invoke-virtual {v2, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lr1i;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lx0i;

    invoke-direct {v3, v2}, Lx0i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lr1i;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lc1i;

    invoke-direct {v1, v2}, Lc1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfse;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzfse;-><init>(Lcom/google/android/gms/internal/ads/j6;Lp1i;)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzg(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object p3, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "switchDisplayMode overlay display to %d from: %s"

    invoke-virtual {p3, p1, p2, p0}, Lx1i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/j6;Lt0i;Lp1i;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw1i;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "callerPackage"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lt0i;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ld1i;

    invoke-direct {v3, v2}, Ld1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lt0i;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Le1i;

    invoke-direct {v1, v2}, Le1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfse;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfse;-><init>(Lcom/google/android/gms/internal/ads/j6;Lp1i;)V

    invoke-interface {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zze(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "dismiss overlay display from: %s"

    invoke-virtual {p2, p1, v0, p0}, Lx1i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static synthetic c(Lcom/google/android/gms/internal/ads/j6;Lm1i;Lp1i;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw1i;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfqw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "callerPackage"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "windowToken"

    invoke-virtual {p1}, Lm1i;->f()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lm1i;->g()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lk1i;

    invoke-direct {v5, v3}, Lk1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string v4, "layoutGravity"

    invoke-virtual {p1}, Lm1i;->c()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "layoutVerticalMargin"

    invoke-virtual {p1}, Lm1i;->a()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v4, "displayMode"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "triggerMode"

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "windowWidthPx"

    invoke-virtual {p1}, Lm1i;->e()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Ly0i;

    invoke-direct {v4, v3}, Ly0i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v4, Lz0i;

    invoke-direct {v4, v3}, Lz0i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lm1i;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v4, La1i;

    invoke-direct {v4, v3}, La1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance p1, Lb1i;

    invoke-direct {p1, v3}, Lb1i;-><init>(Landroid/os/Bundle;)V

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/j6;->i(Ljava/lang/String;Ljava/util/function/Consumer;)V

    const-string p1, "stableSessionToken"

    const/4 v1, 0x1

    invoke-virtual {v3, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfse;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfse;-><init>(Lcom/google/android/gms/internal/ads/j6;Lp1i;)V

    invoke-interface {v0, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfqw;->zzf(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfqy;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object p2, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j6;->b:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "show overlay display from: %s"

    invoke-virtual {p2, p1, v0, p0}, Lx1i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static synthetic h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j6;->k(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j6;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static j(Lp1i;Ljava/lang/String;Ljava/util/List;)Z
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lj1i;

    invoke-direct {v0}, Lj1i;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v1}, Lx1i;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Lo1i;->c()Ln1i;

    move-result-object p1

    const/16 p2, 0x1fe0

    invoke-virtual {p1, p2}, Ln1i;->b(I)Ln1i;

    invoke-virtual {p1}, Ln1i;->c()Lo1i;

    move-result-object p1

    invoke-interface {p0, p1}, Lp1i;->a(Lo1i;)V

    return v0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lj3i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unbind LMD display overlay service"

    invoke-virtual {v0, v2, v1}, Lx1i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lw1i;->n()V

    return-void
.end method

.method public final e(Lt0i;Lp1i;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    const-string p1, "Play Store not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error: %s"

    invoke-virtual {p0, p2, p1}, Lx1i;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lt0i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lt0i;->a()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayDismissRequest: missing appId and sessionToken."

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/j6;->j(Lp1i;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfrv;-><init>(Lcom/google/android/gms/internal/ads/j6;Lt0i;Lp1i;)V

    invoke-virtual {v0, v1}, Lw1i;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Lm1i;Lp1i;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    const-string p1, "Play Store not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error: %s"

    invoke-virtual {p0, p2, p1}, Lx1i;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lm1i;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken."

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/j6;->j(Lp1i;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsa;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsa;-><init>(Lcom/google/android/gms/internal/ads/j6;Lm1i;Lp1i;)V

    invoke-virtual {v0, v1}, Lw1i;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lr1i;Lp1i;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j6;->a:Lw1i;

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/j6;->c:Lx1i;

    const-string p1, "Play Store not found."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error: %s"

    invoke-virtual {p0, p2, p1}, Lx1i;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lr1i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lr1i;->a()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Failed to apply OverlayDisplayUpdateRequest: missing appId and sessionToken."

    invoke-static {p2, v2, v1}, Lcom/google/android/gms/internal/ads/j6;->j(Lp1i;Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrx;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzfrx;-><init>(Lcom/google/android/gms/internal/ads/j6;Lr1i;ILp1i;)V

    invoke-virtual {v0, v1}, Lw1i;->m(Ljava/lang/Runnable;)V

    return-void
.end method
