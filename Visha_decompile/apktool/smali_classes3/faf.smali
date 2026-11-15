.class public final Lfaf;
.super Lcom/google/android/gms/ads/nativead/NativeAd;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbhn;

.field public final b:Ljava/util/List;

.field public final c:Leaf;

.field public final d:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhn;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfaf;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lfaf;->e:Ljava/util/List;

    iput-object p1, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbfs;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lfaf;->b:Ljava/util/List;

    new-instance v4, Leaf;

    invoke-direct {v4, v2}, Leaf;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    iget-object p1, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzv()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/zzdf;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdg;

    move-result-object v2

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_4
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    iget-object v3, p0, Lfaf;->e:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/ads/internal/client/zzdh;

    invoke-direct {v4, v2}, Lcom/google/android/gms/ads/internal/client/zzdh;-><init>(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_5
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :try_start_2
    iget-object p1, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzk()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v2, Leaf;

    invoke-direct {v2, p1}, Leaf;-><init>(Lcom/google/android/gms/internal/ads/zzbft;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_6
    move-object v2, v1

    goto :goto_8

    :goto_7
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_8
    iput-object v2, p0, Lfaf;->c:Leaf;

    :try_start_3
    iget-object p1, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzi()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lcaf;

    iget-object v2, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbhn;->zzi()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v2

    invoke-direct {p1, v2}, Lcaf;-><init>(Lcom/google/android/gms/internal/ads/zzbfm;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, p1

    goto :goto_9

    :catch_3
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_9
    iput-object v1, p0, Lfaf;->d:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final cancelUnconfirmedClick()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzw()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to cancelUnconfirmedClick"

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzx()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enableCustomClickGesture()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
    .locals 0

    iget-object p0, p0, Lfaf;->d:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-object p0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzn()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzp()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzf()Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzq()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;
    .locals 0

    iget-object p0, p0, Lfaf;->c:Leaf;

    return-object p0
.end method

.method public final getImages()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfaf;->b:Ljava/util/List;

    return-object p0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzj()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzez;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzj()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/client/zzez;-><init>(Lcom/google/android/gms/internal/ads/zzbfq;Lcom/google/android/gms/internal/ads/zzbgn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfaf;->e:Ljava/util/List;

    return-object p0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzs()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzg()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zze()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p0, v1, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, ""

    invoke-static {v1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzt()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzH()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzI()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final muteThisAd(Lcom/google/android/gms/ads/MuteThisAdReason;)V
    .locals 2

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzI()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzy(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/ads/internal/client/zzdh;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdh;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzdh;->zza()Lcom/google/android/gms/ads/internal/client/zzdg;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzy(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    return-void

    :cond_2
    const-string p0, "Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p0

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "Ad is not custom mute enabled"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzz(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzA()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordEvent(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzB(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to record native event"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzJ(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhn;->zzC(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMuteThisAdListener(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzdd;-><init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzE(Lcom/google/android/gms/ads/internal/client/zzdc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/ads/OnPaidEventListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzfo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzfo;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzF(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to setOnPaidEventListener"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lfaf;->a:Lcom/google/android/gms/internal/ads/zzbhn;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbso;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbso;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhn;->zzG(Lcom/google/android/gms/internal/ads/zzbhk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to setUnconfirmedClickListener"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
