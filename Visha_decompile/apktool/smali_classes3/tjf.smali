.class public final Ltjf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lujf;

.field public final b:Lsjf;


# direct methods
.method public constructor <init>(Lujf;Lsjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltjf;->b:Lsjf;

    iput-object p1, p0, Ltjf;->a:Lujf;

    return-void
.end method

.method public static synthetic a(Ltjf;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Ltjf;->b:Lsjf;

    iget-object p0, p0, Lsjf;->a:Lejf;

    check-cast p0, Lcom/google/android/gms/internal/ads/c4;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/c4;->k()Lijf;

    move-result-object p0

    if-nez p0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Likf;->j(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p0, "Click string is empty, not proceeding."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Ltjf;->a:Lujf;

    move-object v0, p0

    check-cast v0, Lakf;

    invoke-interface {v0}, Lakf;->zzI()Lfre;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Signal utils is empty, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p0, "Signals object is empty, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-interface {p0}, Lujf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "Context is null, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-interface {p0}, Lujf;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lfkf;

    invoke-interface {v2}, Lfkf;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-interface {p0}, Lujf;->zzi()Landroid/app/Activity;

    move-result-object p0

    invoke-interface {v0, v1, p1, v2, p0}, Lare;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Ltjf;->a:Lujf;

    move-object v0, p0

    check-cast v0, Lakf;

    invoke-interface {v0}, Lakf;->zzI()Lfre;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string p0, "Signal utils is empty, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lfre;->c()Lare;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Signals object is empty, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-interface {p0}, Lujf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p0, "Context is null, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-interface {p0}, Lujf;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lfkf;

    invoke-interface {v2}, Lfkf;->zzF()Landroid/view/View;

    move-result-object v2

    invoke-interface {p0}, Lujf;->zzi()Landroid/app/Activity;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lare;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "URL is empty, ignoring message"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Ltjf;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
