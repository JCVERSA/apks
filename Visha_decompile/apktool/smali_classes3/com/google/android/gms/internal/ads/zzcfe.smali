.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/c4;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/c4;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zza:Lcom/google/android/gms/internal/ads/c4;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzc:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zza:Lcom/google/android/gms/internal/ads/c4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzb:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzc:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/c4;->o(Lcom/google/android/gms/internal/ads/c4;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
