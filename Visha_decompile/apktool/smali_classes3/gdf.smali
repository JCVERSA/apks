.class public final Lgdf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lfy0;Lcom/google/android/gms/ads/internal/util/zzg;Lrdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgdf;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 4

    sget-object v0, Lcye;->H0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lgdf;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzf()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string p0, "Receiving npa decision in the past, ignoring."

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcye;->I0:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, -0x1

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzH(I)V

    invoke-interface {p0, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzI(J)V

    return-void

    :cond_2
    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzH(I)V

    invoke-interface {p0, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzI(J)V

    return-void
.end method
