.class public final synthetic Lcom/google/android/gms/internal/ads/zzegz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lx1h;

.field public final synthetic zzb:Lvmh;

.field public final synthetic zzc:Lhmh;

.field public final synthetic zzd:Lnxg;


# direct methods
.method public synthetic constructor <init>(Lx1h;Lvmh;Lhmh;Lnxg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:Lx1h;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lvmh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lhmh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Lnxg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zza:Lx1h;

    iget-object v0, v0, Lx1h;->d:Lcom/google/android/gms/internal/ads/h5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzb:Lvmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzc:Lhmh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzegz;->zzd:Lnxg;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/h5;->d(Lcom/google/android/gms/internal/ads/h5;Lvmh;Lhmh;Lnxg;)V

    return-void
.end method
