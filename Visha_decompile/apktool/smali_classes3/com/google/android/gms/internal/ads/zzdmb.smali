.class public final Lcom/google/android/gms/internal/ads/zzdmb;
.super Lcom/google/android/gms/internal/ads/zzbgm;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lddg;

.field private zzc:Lceg;

.field private zzd:Lzcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lddg;Lceg;Lzcg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzc:Lceg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdmb;)Lzcg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    return-object p0
.end method


# virtual methods
.method public final zze()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->W()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzbfq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    invoke-virtual {p0}, Lzcg;->P()Lbdg;

    move-result-object p0

    invoke-virtual {p0}, Lbdg;->a()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "InternalNativeCustomTemplateAdShim.getMediaContent"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbft;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->U()Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbft;

    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zza:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->V()Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final zzk()Ljava/util/List;
    .locals 6

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->U()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {p0}, Lddg;->V()Landroidx/collection/SimpleArrayMap;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v0, v3}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    const-string v0, "InternalNativeCustomTemplateAdShim.getAvailableAssetNames"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final zzl()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbuf;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzc:Lceg;

    return-void
.end method

.method public final zzm()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {v0}, Lddg;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "Illegal argument specified for omid partner name."

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "Not starting OMID session. OM partner name has not been configured."

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzcg;->S(Ljava/lang/String;Z)Lfxg;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :goto_0
    const-string v0, "InternalNativeCustomTemplateAdShim.initializeDisplayOpenMeasurement"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lzcg;->n(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzcg;->r()V

    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {v0}, Lddg;->h0()Lfxg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lzcg;->s(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzq()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzd:Lzcg;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lzcg;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->e0()Lejf;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lddg;->f0()Lejf;

    move-result-object p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzc:Lceg;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lceg;->f(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p1}, Lddg;->d0()Lejf;

    move-result-object p1

    new-instance v0, Lqhg;

    const-string v1, "_videoMediaView"

    invoke-direct {v0, p0, v1}, Lqhg;-><init>(Lcom/google/android/gms/internal/ads/zzdmb;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lejf;->zzar(Lz0f;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzs(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzc:Lceg;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lceg;->g(Landroid/view/ViewGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p1}, Lddg;->f0()Lejf;

    move-result-object p1

    new-instance v0, Lqhg;

    const-string v1, "_videoMediaView"

    invoke-direct {v0, p0, v1}, Lqhg;-><init>(Lcom/google/android/gms/internal/ads/zzdmb;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lejf;->zzar(Lz0f;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzt()Z
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdmb;->zzb:Lddg;

    invoke-virtual {p0}, Lddg;->h0()Lfxg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lzwg;

    move-result-object v1

    invoke-virtual {v0}, Lfxg;->a()Lpuh;

    move-result-object v0

    invoke-interface {v1, v0}, Lzwg;->h(Lpuh;)V

    invoke-virtual {p0}, Lddg;->e0()Lejf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lddg;->e0()Lejf;

    move-result-object p0

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v1, "onSdkLoaded"

    invoke-interface {p0, v1, v0}, Lp5f;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Trying to start OMID session before creation."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
