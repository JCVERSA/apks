.class final Lcom/google/android/gms/internal/ads/zzfjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/z5;JLcom/google/android/gms/ads/internal/client/zzdx;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzc:Lcom/google/android/gms/internal/ads/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzc:Lcom/google/android/gms/internal/ads/z5;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z5;->m(Lcom/google/android/gms/internal/ads/z5;)Lbuh;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/z5;->m(Lcom/google/android/gms/internal/ads/z5;)Lbuh;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/z5;->e:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v2}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zza:J

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/z5;->r(Lcom/google/android/gms/internal/ads/z5;Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, v3, v4, p0}, Lbuh;->c(Lcom/google/android/gms/ads/AdFormat;JLjava/lang/String;)V

    :cond_0
    return-void
.end method
