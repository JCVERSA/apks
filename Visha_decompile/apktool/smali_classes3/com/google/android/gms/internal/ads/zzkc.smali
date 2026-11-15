.class public final synthetic Lcom/google/android/gms/internal/ads/zzkc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/vb;

.field public final synthetic zzb:I

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vb;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/vb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzc:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/vb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzb:I

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzkc;->zzc:Z

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/vb;->l0(Lcom/google/android/gms/internal/ads/vb;IZ)V

    return-void
.end method
