.class public final Ljkg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcoh;

.field public final b:Lgkg;


# direct methods
.method public constructor <init>(Lcoh;Lgkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkg;->a:Lcoh;

    iput-object p2, p0, Ljkg;->b:Lgkg;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzboy;
    .locals 0

    iget-object p0, p0, Ljkg;->a:Lcoh;

    invoke-virtual {p0}, Lcoh;->b()Lcom/google/android/gms/internal/ads/zzboy;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Unexpected call to adapter creator."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;
    .locals 1

    invoke-virtual {p0}, Ljkg;->a()Lcom/google/android/gms/internal/ads/zzboy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzboy;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbqx;

    move-result-object v0

    iget-object p0, p0, Ljkg;->b:Lgkg;

    invoke-virtual {p0, p1, v0}, Lgkg;->d(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqx;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Lorg/json/JSONObject;)Leoh;
    .locals 5

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    :try_start_0
    new-instance v1, Leoh;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbpz;

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbpz;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    const-string v2, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbpz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbrq;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbpz;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljkg;->a()Lcom/google/android/gms/internal/ads/zzboy;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "com.google.ads.mediation.customevent.CustomEventAdapter"

    if-nez v3, :cond_2

    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_5

    :cond_2
    :try_start_2
    const-string v3, "class_name"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzboy;->zze(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzboy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpb;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :cond_3
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzboy;->zzd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzboy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpb;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzboy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpb;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    const-string v0, "Invalid custom event."

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzboy;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbpb;

    move-result-object p2

    :goto_1
    invoke-direct {v1, p2}, Leoh;-><init>(Lcom/google/android/gms/internal/ads/zzbpb;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Ljkg;->b:Lgkg;

    invoke-virtual {p0, p1, v1}, Lgkg;->c(Ljava/lang/String;Leoh;)V

    return-object v1

    :goto_2
    sget-object v0, Lcye;->w9:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Ljkg;->b:Lgkg;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgkg;->c(Ljava/lang/String;Leoh;)V

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Ljkg;->a:Lcoh;

    invoke-virtual {p0}, Lcoh;->b()Lcom/google/android/gms/internal/ads/zzboy;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
