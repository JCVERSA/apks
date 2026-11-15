.class public final Lcom/google/android/gms/internal/ads/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbku;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s3;Lcom/google/android/gms/internal/ads/zzbku;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r3;->a:Lcom/google/android/gms/internal/ads/zzbku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Lim5;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbla;

    new-instance v0, Leff;

    invoke-direct {v0}, Leff;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzblb;-><init>(Lcom/google/android/gms/internal/ads/r3;Leff;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/r3;->a:Lcom/google/android/gms/internal/ads/zzbku;

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzbla;->zze(Lcom/google/android/gms/internal/ads/zzbku;Lcom/google/android/gms/internal/ads/zzbkz;)V

    return-object v0
.end method
