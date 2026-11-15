.class public final Lrij;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzu;Lcom/google/android/gms/ads/internal/zzt;)V
    .locals 0

    iput-object p1, p0, Lrij;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lrij;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzu;->zzu(Lcom/google/android/gms/ads/internal/zzu;)Ljava/util/concurrent/Future;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfre;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzu;->zzv(Lcom/google/android/gms/ads/internal/zzu;Lfre;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p0, p0, Lrij;->a:Lcom/google/android/gms/ads/internal/zzu;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lrij;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lrij;->a:Lcom/google/android/gms/ads/internal/zzu;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zze(Lcom/google/android/gms/ads/internal/zzu;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zze(Lcom/google/android/gms/ads/internal/zzu;)Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
