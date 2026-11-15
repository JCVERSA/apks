.class public final synthetic Lcom/google/android/gms/internal/ads/zzkf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/vb;

.field public final synthetic zzb:Lt9j;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vb;Lt9j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Lcom/google/android/gms/internal/ads/vb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lt9j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zza:Lcom/google/android/gms/internal/ads/vb;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkf;->zzb:Lt9j;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/vb;->k0(Lcom/google/android/gms/internal/ads/vb;Lt9j;)V

    return-void
.end method
