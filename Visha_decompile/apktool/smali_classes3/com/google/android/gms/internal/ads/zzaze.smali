.class final Lcom/google/android/gms/internal/ads/zzaze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Landroid/webkit/ValueCallback;

.field final synthetic zzb:Lwue;

.field final synthetic zzc:Landroid/webkit/WebView;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzazg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazg;Lwue;Landroid/webkit/WebView;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzb:Lwue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzc:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zze:Lcom/google/android/gms/internal/ads/zzazg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/k0;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/k0;-><init>(Lcom/google/android/gms/internal/ads/zzaze;Lwue;Landroid/webkit/WebView;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zzc:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaze;->zza:Landroid/webkit/ValueCallback;

    const-string v0, ""

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
