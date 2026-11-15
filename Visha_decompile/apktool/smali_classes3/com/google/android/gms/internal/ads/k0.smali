.class public final synthetic Lcom/google/android/gms/internal/ads/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzaze;

.field public final synthetic b:Lwue;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaze;Lwue;Landroid/webkit/WebView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k0;->a:Lcom/google/android/gms/internal/ads/zzaze;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/k0;->b:Lwue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/k0;->c:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/k0;->d:Z

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k0;->a:Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaze;->zze:Lcom/google/android/gms/internal/ads/zzazg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/k0;->b:Lwue;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/k0;->c:Landroid/webkit/WebView;

    check-cast p1, Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/k0;->d:Z

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/google/android/gms/internal/ads/zzazg;->zzc(Lwue;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
