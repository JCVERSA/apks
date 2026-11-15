.class public final synthetic Lcom/google/android/gms/internal/ads/zzabo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:Lerj;

.field public final synthetic zzc:Lg1j;


# direct methods
.method public synthetic constructor <init>(Lk7e;Lerj;Lg1j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabo;->zza:Lk7e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzb:Lerj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzc:Lg1j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabo;->zza:Lk7e;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzb:Lerj;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabo;->zzc:Lg1j;

    invoke-static {v0, v1, p0}, Lk7e;->g(Lk7e;Lerj;Lg1j;)V

    return-void
.end method
