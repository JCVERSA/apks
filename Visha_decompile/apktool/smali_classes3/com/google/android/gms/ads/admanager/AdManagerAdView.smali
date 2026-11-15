.class public final Lcom/google/android/gms/ads/admanager/AdManagerAdView;
.super Lcom/google/android/gms/ads/BaseAdView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/BaseAdView;-><init>(Landroid/content/Context;I)V

    const-string p0, "Context cannot be null"

    .line 2
    invoke-static {p1, p0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/ads/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    const-string p0, "Context cannot be null"

    .line 4
    invoke-static {p1, p0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    const-string p0, "Context cannot be null"

    .line 6
    invoke-static {p1, p0}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 1
    .param p0    # Lcom/google/android/gms/ads/admanager/AdManagerAdView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzeh;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzm(Lcom/google/android/gms/ads/internal/client/zzeh;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Luaf;->c(Landroid/content/Context;)Lwaf;

    move-result-object p0

    const-string v0, "AdManagerAdView.loadAd"

    invoke-interface {p0, p1, v0}, Lwaf;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzC()[Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    return-object p0
.end method

.method public getAppEventListener()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzh()Lcom/google/android/gms/ads/admanager/AppEventListener;

    move-result-object p0

    return-object p0
.end method

.method public getVideoController()Lcom/google/android/gms/ads/VideoController;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzf()Lcom/google/android/gms/ads/VideoController;

    move-result-object p0

    return-object p0
.end method

.method public getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzg()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object p0

    return-object p0
.end method

.method public loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcye;->a(Landroid/content/Context;)V

    sget-object v0, Lxze;->f:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcye;->nb:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/ads/admanager/zzb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/admanager/zzb;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdView;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzeh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzm(Lcom/google/android/gms/ads/internal/client/zzeh;)V

    return-void
.end method

.method public recordManualImpression()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzek;->zzo()V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1
    .param p1    # [Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzt([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/admanager/AppEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzv(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzw(Z)V

    return-void
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/VideoOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzy(Lcom/google/android/gms/ads/VideoOptions;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzbx;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/BaseAdView;->b:Lcom/google/android/gms/ads/internal/client/zzek;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzek;->zzz(Lcom/google/android/gms/ads/internal/client/zzbx;)Z

    move-result p0

    return p0
.end method
