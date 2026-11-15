.class final Lcom/google/android/gms/internal/ads/zzazc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/view/View;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazg;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazc;->zza:Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazc;->zzb:Lcom/google/android/gms/internal/ads/zzazg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazc;->zzb:Lcom/google/android/gms/internal/ads/zzazg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazc;->zza:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzazg;->zzb(Landroid/view/View;)V

    return-void
.end method
