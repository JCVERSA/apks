.class public final synthetic Lcom/google/android/gms/internal/ads/zzfrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/j6;

.field public final synthetic zzb:Lr1i;

.field public final synthetic zzc:I

.field public final synthetic zzd:Lp1i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/j6;Lr1i;ILp1i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zza:Lcom/google/android/gms/internal/ads/j6;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzb:Lr1i;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzd:Lp1i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zza:Lcom/google/android/gms/internal/ads/j6;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzb:Lr1i;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzc:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfrx;->zzd:Lp1i;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/j6;->a(Lcom/google/android/gms/internal/ads/j6;Lr1i;ILp1i;)V

    return-void
.end method
