.class public final synthetic Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lijf;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lddf;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lijf;Landroid/view/View;Lddf;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lijf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzc:Lddf;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lijf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzc:Lddf;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzd:I

    invoke-static {v0, v1, v2, p0}, Lijf;->F(Lijf;Landroid/view/View;Lddf;I)V

    return-void
.end method
