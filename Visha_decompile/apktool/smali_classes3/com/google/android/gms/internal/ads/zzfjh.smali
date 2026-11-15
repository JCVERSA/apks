.class final Lcom/google/android/gms/internal/ads/zzfjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/z5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjh;->zza:Lcom/google/android/gms/internal/ads/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Liuh;

    check-cast p2, Liuh;

    invoke-virtual {p2}, Liuh;->c()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjh;->zza:Lcom/google/android/gms/internal/ads/z5;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/z5;->i(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/z5;->k(Lcom/google/android/gms/internal/ads/z5;Lcom/google/android/gms/ads/internal/client/zzdx;)D

    move-result-wide v0

    invoke-virtual {p1}, Liuh;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/z5;->i(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/z5;->k(Lcom/google/android/gms/internal/ads/z5;Lcom/google/android/gms/ads/internal/client/zzdx;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Liuh;->b()J

    move-result-wide p0

    invoke-virtual {p2}, Liuh;->b()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :cond_0
    return p0
.end method
