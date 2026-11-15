.class public final Lcom/google/android/gms/internal/ads/zzdlu;
.super Lcom/google/android/gms/internal/ads/zzblv;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ly0f;


# instance fields
.field private zza:Landroid/view/View;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzea;

.field private zzc:Lzcg;

.field private zzd:Z

.field private zze:Z


# direct methods
.method public constructor <init>(Lzcg;Lddg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzblv;-><init>()V

    invoke-virtual {p2}, Lddg;->S()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    invoke-virtual {p2}, Lddg;->W()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Lzcg;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zze:Z

    invoke-virtual {p2}, Lddg;->f0()Lejf;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lddg;->f0()Lejf;

    move-result-object p1

    invoke-interface {p1, p0}, Lejf;->zzap(Ly0f;)V

    :cond_0
    return-void
.end method

.method private final zzg()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Lzcg;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    invoke-static {p0}, Lzcg;->G(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lzcg;->j(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method private final zzh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final zzi(Lcom/google/android/gms/internal/ads/zzblz;I)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzblz;->zze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzg()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzg()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    if-eqz v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbfq;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Lzcg;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lzcg;->P()Lbdg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzcg;->P()Lbdg;

    move-result-object p0

    invoke-virtual {p0}, Lbdg;->a()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public final zzd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Lzcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzc:Lzcg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdlt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdlt;-><init>(Lcom/google/android/gms/internal/ads/zzdlu;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzblz;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzblz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lwd8;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzd:Z

    if-eqz v0, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Instream ad can not be shown after destroy()."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzi(Lcom/google/android/gms/internal/ads/zzblz;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zze:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Instream ad should not be used again."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzdlu;->zzi(Lcom/google/android/gms/internal/ads/zzblz;I)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zze:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzh()V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzy()Lmff;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    invoke-static {p1, p0}, Lmff;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzy()Lmff;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlu;->zza:Landroid/view/View;

    invoke-static {p1, p0}, Lmff;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzg()V

    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzblz;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-string p0, "can not get video view."

    goto :goto_1

    :cond_4
    const-string p0, "can not get video controller."

    :goto_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Instream internal error: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzdlu;->zzi(Lcom/google/android/gms/internal/ads/zzblz;I)V

    return-void
.end method
