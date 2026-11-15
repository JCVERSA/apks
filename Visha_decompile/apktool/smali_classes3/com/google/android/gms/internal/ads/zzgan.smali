.class final Lcom/google/android/gms/internal/ads/zzgan;
.super Lcom/google/android/gms/internal/ads/zzgap;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lim5;Lk7i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgap;-><init>(Lim5;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lk7i;

    invoke-interface {p1, p2}, Lk7i;->zza(Ljava/lang/Object;)Lim5;

    move-result-object p0

    const-string p2, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p0, p2, p1}, Lv2i;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final synthetic zzf(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lim5;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzn(Lim5;)Z

    return-void
.end method
