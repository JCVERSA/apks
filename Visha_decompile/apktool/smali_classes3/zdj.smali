.class public final Lzdj;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p3, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "gmsg://noAdLoaded"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "#007 Could not call remote method."

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-static {v0, v2, v2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzbk;->zze(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzu;->zzV(I)V

    return v3

    :cond_3
    const-string p1, "gmsg://scriptLoadFailed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-static {v3, v2, v2}, Lgoh;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zze(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object p0, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzu;->zzV(I)V

    return v3

    :cond_6
    const-string p1, "gmsg://adResized"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzi()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    iget-object p0, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/zzu;->zzb(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzu;->zzV(I)V

    return v3

    :cond_8
    const-string p1, "gmsg://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v3

    :cond_9
    iget-object p1, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzc()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzu;->zzh(Lcom/google/android/gms/ads/internal/zzu;)Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbk;->zzh()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    iget-object p0, p0, Lzdj;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p0, p2}, Lcom/google/android/gms/ads/internal/zzu;->zzo(Lcom/google/android/gms/ads/internal/zzu;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzu;->zzw(Lcom/google/android/gms/ads/internal/zzu;Ljava/lang/String;)V

    return v3
.end method
