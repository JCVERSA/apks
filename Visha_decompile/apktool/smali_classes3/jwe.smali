.class public final Ljwe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/internal/client/zzbx;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/ads/internal/client/zzeh;

.field public final e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field public final f:Lcom/google/android/gms/internal/ads/zzbou;

.field public final g:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzeh;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbou;-><init>()V

    iput-object v0, p0, Ljwe;->f:Lcom/google/android/gms/internal/ads/zzbou;

    iput-object p1, p0, Ljwe;->b:Landroid/content/Context;

    iput-object p2, p0, Ljwe;->c:Ljava/lang/String;

    iput-object p3, p0, Ljwe;->d:Lcom/google/android/gms/ads/internal/client/zzeh;

    iput-object p4, p0, Ljwe;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/ads/internal/client/zzq;->zza:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object p1, p0, Ljwe;->g:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/client/zzaz;

    move-result-object v3

    iget-object v4, p0, Ljwe;->b:Landroid/content/Context;

    iget-object v5, p0, Ljwe;->c:Ljava/lang/String;

    iget-object v6, p0, Ljwe;->f:Lcom/google/android/gms/internal/ads/zzbou;

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/google/android/gms/ads/internal/client/zzaz;->zze(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object v2

    iput-object v2, p0, Ljwe;->a:Lcom/google/android/gms/ads/internal/client/zzbx;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljwe;->d:Lcom/google/android/gms/ads/internal/client/zzeh;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/ads/internal/client/zzeh;->zzo(J)V

    iget-object v0, p0, Ljwe;->a:Lcom/google/android/gms/ads/internal/client/zzbx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzazv;

    iget-object v3, p0, Ljwe;->e:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-direct {v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzazv;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzH(Lcom/google/android/gms/internal/ads/zzbad;)V

    iget-object v0, p0, Ljwe;->a:Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object p0, p0, Ljwe;->g:Lcom/google/android/gms/ads/internal/client/zzq;

    invoke-virtual {p0, v4, v2}, Lcom/google/android/gms/ads/internal/client/zzq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzeh;)Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzbx;->zzab(Lcom/google/android/gms/ads/internal/client/zzm;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
