.class final Lcom/google/android/gms/internal/ads/zzgao;
.super Lcom/google/android/gms/internal/ads/zzgap;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lim5;Lm2i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgap;-><init>(Lim5;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lm2i;

    invoke-interface {p1, p2}, Lm2i;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/x7;->zzc(Ljava/lang/Object;)Z

    return-void
.end method
