.class public final synthetic Lcom/google/android/gms/ads/internal/util/zzas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzau;

.field public final synthetic zzb:Lg8i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzas;->zza:Lcom/google/android/gms/ads/internal/util/zzau;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzas;->zzb:Lg8i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzas;->zza:Lcom/google/android/gms/ads/internal/util/zzau;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/util/zzas;->zzb:Lg8i;

    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/zzau;->zzl(Lcom/google/android/gms/ads/internal/util/zzau;Lg8i;)V

    return-void
.end method
