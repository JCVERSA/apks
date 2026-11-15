.class final Lcom/google/android/gms/internal/ads/zzfkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/webkit/WebView;

.field final synthetic zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/d6;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zza:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zza:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzb:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/d6;->k(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void
.end method
