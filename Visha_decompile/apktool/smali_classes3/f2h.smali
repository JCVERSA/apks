.class public final Lf2h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkxg;


# instance fields
.field public final a:Lmxg;

.field public final b:Lpxg;

.field public final c:Llrh;

.field public final d:Lg8i;


# direct methods
.method public constructor <init>(Llrh;Lg8i;Lmxg;Lpxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2h;->c:Llrh;

    iput-object p2, p0, Lf2h;->d:Lg8i;

    iput-object p4, p0, Lf2h;->b:Lpxg;

    iput-object p3, p0, Lf2h;->a:Lmxg;

    return-void
.end method

.method public static synthetic c(Lf2h;Lvmh;Lhmh;Lnxg;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf2h;->b:Lpxg;

    invoke-interface {p0, p1, p2, p3}, Lpxg;->b(Lvmh;Lhmh;Lnxg;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lf2h;Lvmh;Lhmh;Lnxg;)V
    .locals 0

    iget-object p0, p0, Lf2h;->b:Lpxg;

    invoke-interface {p0, p1, p2, p3}, Lpxg;->a(Lvmh;Lhmh;Lnxg;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lvmh;Lhmh;)Lim5;
    .locals 6

    iget-object v0, p2, Lhmh;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lf2h;->a:Lmxg;

    iget-object v3, p2, Lhmh;->v:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lmxg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lnxg;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzefc;

    const-string p1, "Unable to instantiate mediation adapter class."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzefc;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Leff;

    invoke-direct {v1}, Leff;-><init>()V

    new-instance v2, Le2h;

    invoke-direct {v2, p0, v0, v1}, Le2h;-><init>(Lf2h;Lnxg;Leff;)V

    iget-object v3, v0, Lnxg;->c:Lx0g;

    invoke-interface {v3, v2}, Lx0g;->zza(Lw0g;)V

    iget-boolean v2, p2, Lhmh;->M:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lvmh;->a:Lsmh;

    iget-object v2, v2, Lsmh;->a:Lenh;

    iget-object v2, v2, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v2, "render_test_ad_label"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v2, p0, Lf2h;->c:Llrh;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzffn;->zzq:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v4, Lc2h;

    invoke-direct {v4, p0, p1, p2, v0}, Lc2h;-><init>(Lf2h;Lvmh;Lhmh;Lnxg;)V

    iget-object v5, p0, Lf2h;->d:Lg8i;

    invoke-static {v4, v5, v3, v2}, Lxqh;->d(Lqqh;Lg8i;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzffn;->zzr:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v2, v3}, Lcrh;->b(Ljava/lang/Object;)Lcrh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcrh;->d(Lim5;)Lcrh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzffn;->zzs:Lcom/google/android/gms/internal/ads/zzffn;

    invoke-virtual {v1, v2}, Lcrh;->b(Ljava/lang/Object;)Lcrh;

    move-result-object v1

    new-instance v2, Ld2h;

    invoke-direct {v2, p0, p1, p2, v0}, Ld2h;-><init>(Lf2h;Lvmh;Lhmh;Lnxg;)V

    invoke-virtual {v1, v2}, Lcrh;->e(Lpqh;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lvmh;Lhmh;)Z
    .locals 0

    iget-object p0, p2, Lhmh;->t:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
